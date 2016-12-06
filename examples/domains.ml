#!/usr/bin/env ocamlscript
(*-*- tuareg -*-*)
Ocaml.packs := ["micmatch_pcre"; "cgi"]
--
open Printf
open Micmatch

RE x = [alnum "-_"]

let list tbl = 
  List.sort compare (Hashtbl.fold (fun s _ accu -> s :: accu) tbl [])

let parse s =
  let dom = Hashtbl.create 50 in
  let hosts = Hashtbl.create 50 in
  (SEARCH
     "http" "s"? "://" 
     ([x"."]* Lazy as prefix)
     (x+ "." x+ as domain) <Not [x"."] | eos> -> 
       Hashtbl.replace dom domain ();
       Hashtbl.replace hosts (prefix ^ domain) ())
    s;
  (list dom, list hosts)

let format_text domains hosts = 
  let buf = Buffer.create 500 in
  let print_lines l = List.iter (fun x -> bprintf buf "%s\n" x) l in
  bprintf buf "# Domains:\n";
  print_lines domains;
  bprintf buf "\n# Hosts:\n";
  print_lines hosts;
  bprintf buf "\n# Quoted domains:\n";
  print_lines (List.map Pcre.quote domains);
  bprintf buf "\n# Quoted hosts:\n";
  print_lines (List.map Pcre.quote hosts);
  Buffer.contents buf

let form = "\
<html>
<head>
<title>Host and domain extractor</title>
</head>
<body>
<h1>Host and domain extractor</h1>
<p>
Past spam text into the form below and it will extract regexps that match
the domain names found in URLs.
<p>
<form method=\"post\" action=\"domains\" enctype=\"multipart/form-data\">
<input type=\"submit\" value=\"Submit\" name=\"submit1\"></input>
<input type=\"file\" value=\"Choose file\" name=\"upload\"></input><br>
<textarea name=\"text\" rows=\"25\" cols=\"80\">
</textarea>
</form>
<hr>
<a href=\"http://martin.jambon.free.fr/examples/domains.ml.html\">OCamlscript source code</a>
</body>
</html>
"

let get_text actobj =
  let upload =  
    try (actobj#argument "upload")#value
    with Not_found -> "" in
  if upload = "" then
    try (actobj#argument "text")#value
    with Not_found -> ""
  else upload

let net_print (actobj : Netcgi.std_activation) s =
  let text = get_text actobj in
  if text = "" then
    (actobj#set_header ();
     actobj#output#output_string form;
     actobj#output#commit_work ())
  else
    (actobj#set_header ~content_type:"text/plain" ();
     actobj#output#output_string s;
     actobj#output#commit_work ())

let _ =
  let s, print =
    match Sys.argv with
	[| _; "-" |] -> Text.channel_contents stdin, print_string
      | [| _; s |] -> s, print_string
      | _ -> 
          let actobj = new Netcgi.std_activation () in
          let text = get_text actobj in
	  text, (net_print actobj) in

  let domains, hosts = parse s in
  print (format_text domains hosts)
