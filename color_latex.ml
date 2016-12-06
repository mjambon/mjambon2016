open Printf

open Unlatex

let sprint_class c s =
  sprintf "<span class=%s>%s</span>" c s

let bprint_class buf c s =
  bprintf buf "<span class=%s>%s</span>" c s

let color buf = function
    `Comment s -> bprint_class buf "Ccomment" s
  | `Text s -> bprint_class buf "Ctoken" s
  | `Command s -> bprint_class buf "Cconstructor" s
  | `Math s -> bprint_class buf "Cstring" s


let html_input_latex ic =
  let lexbuf = Lexing.from_channel ic in
  let l = Unlatex.get lexbuf in
  print_endline "<pre>";
  let buf = Buffer.create 200 in
  List.iter (color buf) l;
  Buffer.output_buffer stdout buf;
  print_endline "</pre>"

let html_include_latex file =
  let ic = open_in file in
  html_input_latex ic;
  close_in ic

let html_decorate_latex s =
  let lexbuf = Lexing.from_string s in
  let l = Unlatex.get lexbuf in
  let buf = Buffer.create 200 in
  List.iter (color buf) l;
  Buffer.contents buf

let tags ?clas = function
    Some s -> 
      sprintf "<%s%s>" s (match clas with None -> ""
			    | Some c -> sprintf " class=%s" c),
      sprintf "</%s>" s
  | None -> "", ""

let latex ?wrap ?(nature = false) s =
  let (start_tag, end_tag) = 
    if nature then tags ~clas:"nature" wrap
    else tags wrap in
  print_string start_tag;
  print_string (html_decorate_latex s);
  print_string end_tag

let latexcode = latex ~wrap: "code" ~nature: false
let latexpre = latex ~wrap: "pre" ~nature: false
let latexnature = latex ~wrap: "pre" ~nature: true

let delim () = sprint_class "Ccomment" "##"

let html_quote s =
  let buf = Buffer.create 100 in
  String.iter
    (function
	 '<' -> Buffer.add_string buf "&lt;"
       | '>' -> Buffer.add_string buf "&gt;"
       | '&' -> Buffer.add_string buf "&amp;"
       | c -> Buffer.add_char buf c)
    s;
  Buffer.contents buf


let a f = fun (any_channel : out_channel) -> f

let latexdoc ?impl_oc ?intf_oc title description intf impl =
  printf 
"<table class=latexdoc cellspacing=\"0px\">
<tr>
<td>
<div class=descr>
<b>%s</b> %s
%s
</div>
<div class=intf>%a</div>
%a
</td>
</tr>
</table>
"
    title
    (if description <> "" then "-" else "")
    description
    (a latexpre) intf
    (a latexpre) impl;

  let export ?(add1 = ")\n") ?(add2 = "")opt s =
    match opt with
	None -> ()
      | Some oc -> 
	  fprintf oc "\n(*** %s ***%s%s\n%s\n" title add1 s add2 in
  export intf_oc intf;
  export impl_oc ~add1:(sprintf ":\n%s\n*)\n\n" intf) ~add2:";;\n" impl
