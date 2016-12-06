open Printf

(*** Scanning a whole channel ***:
val read_chan : (char -> 'a) -> in_channel -> unit
*)

let read_chan f ic =
  try
    while true do
      f (input_char ic)
    done
  with End_of_file -> ()
;;


(*** Including a file ***:
val include_file : string -> unit
*)

let include_file file =
  let ic = open_in_bin file in
  read_chan print_char ic;
  close_in ic
;;


(*** Verbatim input in a HTML document ***:
val html_verbatim : string -> unit
*)

let html_verbatim file =
  let ic = open_in_bin file in
  print_string "<pre>\n";
  read_chan 
    (function
	 '<' -> print_string "&lt;"
       | '>' -> print_string "&gt;"
       | '&' -> print_string "&amp;"
       | c -> print_char c)
    ic;
  print_string "</pre>";
  close_in ic
;;


(*** Using templates ***:
val use_template : string -> (string * string) list -> unit
*)

let convert_params l =
  let tbl = Hashtbl.create (List.length l) in
  List.iter (fun (ident, s) -> Hashtbl.add tbl ident s) l;
  let find ident =
    try Hashtbl.find tbl ident
    with Not_found -> "$" ^ ident in
  find

let slurp buf subst file =
  let ic = open_in file in
  (try
     while true do
       Buffer.add_substitute buf subst (input_line ic);
       Buffer.add_char buf '\n';
     done;
   with End_of_file -> ());
  close_in ic

let use_template file params =
  let buf = Buffer.create 1000 in
  slurp buf (convert_params params) file;
  Buffer.output_buffer stdout buf
;;


(*** Calling an external program ***:
val command : string -> unit
*)

let command s =
  if Sys.command s = 0 then ()
  else invalid_arg ("command: " ^ s)
;;


(*** Recursive call to Camlmix ***:
val camlmix : string -> unit
*)

let camlmix file = command ("camlmix " ^ file)
;;


(*** Catching the output of a command ***:
val slurp_command : string -> string
*)

let read_command_output f s =
  let ic = Unix.open_process_in s in
  (try
     while true do
       f (input_char ic)
     done
   with End_of_file -> ());
  match Unix.close_process_in ic with
      Unix.WEXITED 0 -> ()
    | _ -> invalid_arg ("read_command_output: " ^ s)

let slurp_command s =
  let buf = Buffer.create 100 in
  read_command_output (Buffer.add_char buf) s;
  Buffer.contents buf
;;


(*** Using an external filter or converter ***:
val kfeed : (char -> 'a) -> string -> string -> unit
val feed : string -> string -> unit
val ffeed : out_channel -> string -> string -> unit
val bfeed : Buffer.t -> string -> string -> unit
val sfeed : string -> string -> string
*)

let kfeed f command data =
  let (ic, oc) as channels = Unix.open_process command in
  output_string oc data;
  close_out oc;
  let exn = ref None in
  (try
     while true do
       f (input_char ic)
     done
   with
       End_of_file -> ()
     | e -> exn := Some e);
  (match Unix.close_process channels with
       Unix.WEXITED 0 -> ()
     | _ -> invalid_arg ("feed_command: " ^ command));
  match !exn with
      Some e -> raise e
    | None -> ()

let feed = kfeed print_char

let ffeed oc command data = kfeed (output_char oc) command data

let bfeed buf command data = kfeed (Buffer.add_char buf) command data

let sfeed command data = 
  let buf = Buffer.create (2 * String.length data) in
  bfeed buf command data;
  Buffer.contents buf
;;


(***** end of generic stuff *****)

exception Jump of int
exception False

let jump s =
  try
    for i = 0 to String.length s - 1 do
      match s.[i] with
	  ' ' -> ()
	| '\n' -> raise (Jump i)
	| _ -> raise False
    done;
    s
  with
      False -> s
    | Jump i -> String.sub s (i + 1) (String.length s - i - 1)

let buffer_add_file buf file =
  let ic = open_in file in
  (try
     while true do
       Buffer.add_char buf (input_char ic);
     done;
   with End_of_file -> ());
  close_in ic

let file_contents file =
  let buf = Buffer.create 2000 in
  buffer_add_file buf file;
  Buffer.contents buf

let html_quote ?(color = false) s =
  let buf = Buffer.create 100 in
  let in_tag = ref false in
  let add_string =
    if color then 
      ((fun start s -> 
	  in_tag := start;
	  if start then
	    bprintf buf "<span class=tag>%s" s
	  else
	    bprintf buf "%s</span>" s))
    else (fun b s -> bprintf buf "%s" s) in

  String.iter
    (function
	 '<' -> add_string true "&lt;"
       | '>' -> add_string false "&gt;"
       | '&' -> bprintf buf "&amp;"
       | c -> Buffer.add_char buf c)
    s;
  if color && !in_tag then
    add_string false "";

  Buffer.contents buf

let html = html_quote ~color: true
let color_html s = print_string (html s)

let html_tag t s = printf "<%s>\n%s\n</%s>" t s t
let htmlcode s = html_tag "code" (html s)
let htmlpre s = printf "\n<pre>%s</pre>\n" (html s)

let verbatim s = printf "\n<pre>%s</pre>\n" (html_quote s)
let verb s = printf "<code>%s</code>" (html_quote s)

let tag = html_tag

let author () = print_string "Martin&nbsp;Jambon"

let email () = print_string "martin@mjambon.com"

let author_email () =
  author ();
  print_string " &lt;<a href=\"mailto:";
  email ();
  print_string "\">";
  email ();
  print_string "</a>&gt;"

let title s = 
  printf "<title>%s</title>" s

let download ?(path = false) file =
  printf "<a href=\"%s\">%s</a>" 
    file (if path then file else Filename.basename file)

let htmled_link file =
  printf "<a href=\"%s.html\">" file
let htmled_file file =
  printf "<a href=\"%s.html\">%s</a>" file file

let date () =
  flush stdout;
  assert (Sys.command "date -I" = 0)

let copyright ?(years = "2007") () =
  printf "&copy;&nbsp;%s&nbsp;" years;
  author_email ()

let camlmix_footer ?years () =
  print_string "
<div id=footer>
";
  copyright ?years ();
  print_string "
</div>
"


let keywords l =
  let s = String.concat ", " l in
  printf "<meta name=\"keywords\" content=\"%s\">" s


let nowhere = -1
let home = 0
let ocaml = 1
let downloads = 2
let other = 3

let prog = ocaml
let publications = other
let cv = other
let camlmix = ocaml
let hashtbl2 = ocaml
let bioinformatics = other

let top_menu ?(here = false) topic =
  let link text url b = 
    if b then
      printf "<a href=\"%s\">%s</a>" url text
    else
      printf "<a>%s</a>" text in
  let link_home = link "Main" "/"
  and link_ocaml = link "Software" "https://github.com/mjambon"
  and link_blog = link "Blog" "http://mjambon.github.io/blog/"
  and link_other = link "Other" "/other.html"in
  let links = [| link_home; link_ocaml; link_blog; link_other |] in
  let active_links = [| true; true; true; true |] in

  let highlight = [| ""; ""; ""; "" |] in
  if topic = -1 then ()
  else (try 
	  highlight.(topic) <- " class=\"current_topic\"";
	  active_links.(topic) <- not here;
	with _ -> invalid_arg "top_menu");
  printf 
"
<div>
<table id=top_menu cellspacing=0>
<tr>";
  for i = 0 to 3 do
    printf "
  <td%s>%t</td>"
    highlight.(i) (fun _ -> links.(i) active_links.(i));
  done;
  printf "
</tr>
</table>
</div>
"

let link_up s =
  try
    let upto =
      match s with
	  "cv" | "publications" -> "/other.html"
	| _ -> raise Exit in

    printf "<link rel=\"up\" href=\"%s\">\n" upto
  with Exit -> ()


let make_toc () =
  let toc = Hashtbl.create 20 in
  let toc_counter0 = ref 0 in
  let toc_counter1 = ref 0 in
  let toc_counter2 = ref 0 in

  let make_num () = (!toc_counter0, !toc_counter1, !toc_counter2) in

  let toc_item0 ?id title =
    let key = match id with None -> title | Some s -> s in
    toc_counter1 := 0;
    toc_counter2 := 0;
    incr toc_counter0; 
    let (n0, _, _) as num = make_num () in
    Hashtbl.add toc key (num, title, 0);
    printf "<a href=\"#%s\" class=toc0>%i. %s</a><br>" 
      key n0 title in

  let toc_item1 ?id title =
    let key = match id with None -> title | Some s -> s in
    incr toc_counter1; 
    toc_counter2 := 0;
    let (n0, n1, _) as num = make_num () in
    Hashtbl.add toc key (num, title, 1);
    printf "<a href=\"#%s\" class=toc1>%i.%i %s</a><br>" 
      key n0 n1 title in
      
  let toc_item2 ?id title =
    let key = match id with None -> title | Some s -> s in
    incr toc_counter2; 
    let (n0, n1, n2) as num = make_num () in
    Hashtbl.add toc key (num, title, 2);
    printf "<a href=\"#%s\" class=toc2>%i.%i.%i %s</a><br>" 
      key n0 n1 n2 title in
      
  let toc_entry key =
    let ((n0, n1, n2), title, level) = 
      try Hashtbl.find toc key
      with Not_found -> failwith ("Invalid TOC key: " ^ key) in
    match level with 
	0 -> printf "<h2 id=%s>%i. %s</h2>" key n0 title
      | 1 ->
	  printf "<h%i id=%s>%i.%i %s</h%i>"
	    (level + 2) key n0 n1 title (level + 2)
      | _ -> 
	  printf "<h%i id=%s>%i.%i.%i %s</h%i>"
	    (level + 2) key n0 n1 n2 title (level + 2)in

  let toc_link key text =
    at_exit (fun () -> 
	       if not (Hashtbl.mem toc key) then
		 failwith ("Invalid TOC key: " ^ key));
    printf "<a href=\"#%s\">%s</a>" key text in

  (toc_item0, toc_item1, toc_item2, toc_entry, toc_link)
