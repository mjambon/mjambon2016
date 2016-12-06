open Printf

(* The function that computes the image *)

let latex_image ?(preamble = "") code file =
  let prefix = Filename.chop_extension file in
  let oc = open_out (prefix ^ ".tex") in
  fprintf oc "\
\\batchmode
\\documentclass{article}
%s
\\pagestyle{empty}
\\begin{document}
%s
\\end{document}
"
    preamble code;
  close_out oc;

  if Sys.command 
    (sprintf "latex %s.tex > %s.log 2>&1" prefix prefix) <> 0 then
      invalid_arg "latex_image (latex)";

  if Sys.command 
    (sprintf "dvips -S1 -i -E %s.dvi >> %s.log 2>&1" 
       prefix prefix) <> 0 then
      invalid_arg "latex_image (dvips)";

  Sys.rename (prefix ^ ".001") (prefix ^ ".ps");

  if Sys.command (sprintf "convert %s.ps %s >> %s.log 2>&1"
		    prefix file prefix) <> 0 then
    invalid_arg "latex_image (convert)"



(* An almost reusable MD5-based dependency checker *)

type memo = ((Digest.t option * Digest.t * string), Digest.t) Hashtbl.t

class file_memo memo_file = 
  let memo =
    if Sys.file_exists memo_file then
      let ic = open_in_bin memo_file in
      try
	let memo : memo = Marshal.from_channel ic in
	close_in ic;
	memo
      with exn ->
	close_in ic;
	Sys.remove memo_file;
	raise exn
    else
      Hashtbl.create 100 in
object (self)
  method private update =
    let to_remove = 
      Hashtbl.fold 
	(fun ((_, _, file) as key) _ accu ->
	   if not (Sys.file_exists file) then
	     key :: accu
	   else accu)
	memo
	[] in
    List.iter (Hashtbl.remove memo) to_remove

  method save =
    self#update;
    let oc = open_out_bin memo_file in
    Marshal.to_channel oc memo [];
    close_out oc

  method do_it ?preamble ~code ~file f =
    let opt = match preamble with 
	None -> None
      | Some s -> Some (Digest.string s) in
    let key = (opt, Digest.string code, file) in
    let do_nothing =
      try 
	let digest = Hashtbl.find memo key in
	Sys.file_exists file && digest = Digest.file file      
      with Not_found -> false in
    if do_nothing then ()
    else 
      ((f () : unit);
       if not (Sys.file_exists file) then
	 invalid_arg
	   (sprintf "#do_it: expected file %s was not created" file)
       else
	 Hashtbl.replace memo key (Digest.file file))
end
