let print s = print_string s; flush stdout
module Camlmix =
struct
  let source = ref ""
  let line = ref 1
  let char = ref 1
  let printer = ref print
  let print_with f =
    let saved_printer = !printer in
    printer := (fun s -> f s; printer := saved_printer)
  let print_if test =
    if not test then print_with ignore
end
;;

# 1 "load.camlmix";;

let () =
  Camlmix.line := 1;
  Camlmix.char := 1;
  Camlmix.source := "load.camlmix"
;;

let () = !Camlmix.printer 
# 1 "load.camlmix";;
 "";;

let () =
  Camlmix.line := 1;
  Camlmix.char := 3;
  Camlmix.source := "load.camlmix"
;;

# 1 "load.camlmix";;
  
#load "unix.cma";;

# 1 "latex.mlx";;

let () =
  Camlmix.line := 1;
  Camlmix.char := 1;
  Camlmix.source := "latex.mlx"
;;

let () = !Camlmix.printer 
# 1 "latex.mlx";;
 "";;

let () =
  Camlmix.line := 1;
  Camlmix.char := 3;
  Camlmix.source := "latex.mlx"
;;

# 1 "latex.mlx";;
  
#load "latex.cmo";;
open Printf

let image_counter = ref 0
let images = ref []

let memo = new Latex.file_memo "latex-memo" (* shared by several documents *)

let new_image () =
  incr image_counter;
  let src = !Camlmix.source in
  let name = sprintf "%s-img%i.png" src !image_counter in
  images := (src, name) :: !images;
  name

let list_images () =
  let tbl = Hashtbl.create 100 in
  List.iter
    (fun (src, name) -> 
       let oc =
	 try Hashtbl.find tbl src
	 with Not_found ->
	   let oc = open_out (src ^ ".images") in
	   Hashtbl.add tbl src oc;
	   oc in
       fprintf oc "%s\n" name)
    !images;
  Hashtbl.iter (fun src oc -> close_out oc) tbl

let _ = 
  at_exit list_images;
  at_exit (fun () -> memo#save)

let latex ?preamble ?(valign = "middle") code =
  try
    let file = new_image () in
    let f () = Latex.latex_image ?preamble code file in
    memo#do_it ?preamble ~code ~file f;
    printf "<img src=\"%s\" alt=\"%s\" style=\"vertical-align:%s\">" 
      file code valign
  with exn ->
    let c = !Camlmix.char in
    eprintf "File %S, line %i, characters %i-%i:\n"
    !Camlmix.source !Camlmix.line c (c + String.length code - 1);
    flush stderr;
    raise exn

# 1 "toolbox.html.mlx";;

let () =
  Camlmix.line := 1;
  Camlmix.char := 1;
  Camlmix.source := "toolbox.html.mlx"
;;

let () = !Camlmix.printer 
# 1 "toolbox.html.mlx";;
 "";;

let () =
  Camlmix.line := 1;
  Camlmix.char := 3;
  Camlmix.source := "toolbox.html.mlx"
;;

# 1 "toolbox.html.mlx";;
  
#use "topfind";;
#require "caml2html";;
#require "mikmatch_pcre";;
#load "utils.cmo";;
#load "unmix.cmo";;
#load "print_ocaml.cmo";;
#load "unlatex.cmo";;
#load "color_latex.cmo";;
open Printf
open Utils
open Camlmix

let () =
  Camlmix.line := 13;
  Camlmix.char := 3;
  Camlmix.source := "toolbox.html.mlx"
;;

let () = !Camlmix.printer 
# 13 "toolbox.html.mlx";;
   "\n";;

let () =
  Camlmix.line := 14;
  Camlmix.char := 3;
  Camlmix.source := "toolbox.html.mlx"
;;

# 14 "toolbox.html.mlx";;
   include_file "doctype" 
let () =
  Camlmix.line := 14;
  Camlmix.char := 29;
  Camlmix.source := "toolbox.html.mlx"
;;

let () = !Camlmix.printer 
# 14 "toolbox.html.mlx";;
                             "\n<html>\n<head>\n";;

let () =
  Camlmix.line := 17;
  Camlmix.char := 3;
  Camlmix.source := "toolbox.html.mlx"
;;

# 17 "toolbox.html.mlx";;
   title "Toolbox for Camlmix" 
let () =
  Camlmix.line := 17;
  Camlmix.char := 34;
  Camlmix.source := "toolbox.html.mlx"
;;

let () = !Camlmix.printer 
# 17 "toolbox.html.mlx";;
                                  "\n";;

let () =
  Camlmix.line := 18;
  Camlmix.char := 3;
  Camlmix.source := "toolbox.html.mlx"
;;

# 18 "toolbox.html.mlx";;
   include_file "charset" 
let () =
  Camlmix.line := 18;
  Camlmix.char := 29;
  Camlmix.source := "toolbox.html.mlx"
;;

let () = !Camlmix.printer 
# 18 "toolbox.html.mlx";;
                             "\n";;

let () =
  Camlmix.line := 19;
  Camlmix.char := 3;
  Camlmix.source := "toolbox.html.mlx"
;;

# 19 "toolbox.html.mlx";;
   include_file "stylesheet" 
let () =
  Camlmix.line := 19;
  Camlmix.char := 32;
  Camlmix.source := "toolbox.html.mlx"
;;

let () = !Camlmix.printer 
# 19 "toolbox.html.mlx";;
                                "\n";;

let () =
  Camlmix.line := 20;
  Camlmix.char := 3;
  Camlmix.source := "toolbox.html.mlx"
;;

# 20 "toolbox.html.mlx";;
   include_file "ocaml-stylesheet" 
let () =
  Camlmix.line := 20;
  Camlmix.char := 38;
  Camlmix.source := "toolbox.html.mlx"
;;

let () = !Camlmix.printer 
# 20 "toolbox.html.mlx";;
                                      "\n";;

let () =
  Camlmix.line := 21;
  Camlmix.char := 3;
  Camlmix.source := "toolbox.html.mlx"
;;

# 21 "toolbox.html.mlx";;
   include_file "icon" 
let () =
  Camlmix.line := 21;
  Camlmix.char := 26;
  Camlmix.source := "toolbox.html.mlx"
;;

let () = !Camlmix.printer 
# 21 "toolbox.html.mlx";;
                          "\n";;

let () =
  Camlmix.line := 22;
  Camlmix.char := 3;
  Camlmix.source := "toolbox.html.mlx"
;;

# 22 "toolbox.html.mlx";;
   include_file "commonlinks" 
let () =
  Camlmix.line := 22;
  Camlmix.char := 33;
  Camlmix.source := "toolbox.html.mlx"
;;

let () = !Camlmix.printer 
# 22 "toolbox.html.mlx";;
                                 "\n</head>\n<body>\n";;

let () =
  Camlmix.line := 25;
  Camlmix.char := 3;
  Camlmix.source := "toolbox.html.mlx"
;;

# 25 "toolbox.html.mlx";;
   include_file "hitcounter" 
let () =
  Camlmix.line := 25;
  Camlmix.char := 32;
  Camlmix.source := "toolbox.html.mlx"
;;

let () = !Camlmix.printer 
# 25 "toolbox.html.mlx";;
                                "\n";;

let () =
  Camlmix.line := 26;
  Camlmix.char := 3;
  Camlmix.source := "toolbox.html.mlx"
;;

# 26 "toolbox.html.mlx";;
   include_file "start_big_table" 
let () =
  Camlmix.line := 26;
  Camlmix.char := 37;
  Camlmix.source := "toolbox.html.mlx"
;;

let () = !Camlmix.printer 
# 26 "toolbox.html.mlx";;
                                     "\n";;

let () =
  Camlmix.line := 27;
  Camlmix.char := 3;
  Camlmix.source := "toolbox.html.mlx"
;;

# 27 "toolbox.html.mlx";;
   top_menu ocaml 
let () =
  Camlmix.line := 27;
  Camlmix.char := 21;
  Camlmix.source := "toolbox.html.mlx"
;;

let () = !Camlmix.printer 
# 27 "toolbox.html.mlx";;
                     "\n<h1>Toolbox for Camlmix ";;

let () =
  Camlmix.line := 28;
  Camlmix.char := 27;
  Camlmix.source := "toolbox.html.mlx"
;;

# 28 "toolbox.html.mlx";;
                           include_file "1camel" 
let () =
  Camlmix.line := 28;
  Camlmix.char := 52;
  Camlmix.source := "toolbox.html.mlx"
;;

let () = !Camlmix.printer 
# 28 "toolbox.html.mlx";;
                                                    "</h1>\n\n\n<p>\nThis is a collection of useful tips and code for writing documents using  \n<a href=\"/camlmix\">Camlmix</a> or\nits derivatives such as <a href=\"/camlremix.html\">Camlremix</a>.\nRead the <a href=\"/camlmix\">Camlmix tutorial</a> first.\n\n\n";;

let () =
  Camlmix.line := 38;
  Camlmix.char := 3;
  Camlmix.source := "toolbox.html.mlx"
;;

# 38 "toolbox.html.mlx";;
  
let (toc_item0, toc_item1, toc_item2, toc_entry, toc_link) = make_toc ()

let () =
  Camlmix.line := 40;
  Camlmix.char := 3;
  Camlmix.source := "toolbox.html.mlx"
;;

let () = !Camlmix.printer 
# 40 "toolbox.html.mlx";;
   "\n\n<div class=toc>\n<b>Table of contents</b><br>\n";;

let () =
  Camlmix.line := 44;
  Camlmix.char := 3;
  Camlmix.source := "toolbox.html.mlx"
;;

# 44 "toolbox.html.mlx";;
   toc_item0 ~id:"ocaml" "OCaml code samples" 
let () =
  Camlmix.line := 44;
  Camlmix.char := 49;
  Camlmix.source := "toolbox.html.mlx"
;;

let () = !Camlmix.printer 
# 44 "toolbox.html.mlx";;
                                                 "\n";;

let () =
  Camlmix.line := 45;
  Camlmix.char := 3;
  Camlmix.source := "toolbox.html.mlx"
;;

# 45 "toolbox.html.mlx";;
   toc_item1 ~id:"files" "File input" 
let () =
  Camlmix.line := 45;
  Camlmix.char := 41;
  Camlmix.source := "toolbox.html.mlx"
;;

let () = !Camlmix.printer 
# 45 "toolbox.html.mlx";;
                                         "\n";;

let () =
  Camlmix.line := 46;
  Camlmix.char := 3;
  Camlmix.source := "toolbox.html.mlx"
;;

# 46 "toolbox.html.mlx";;
   toc_item1 ~id:"programs" "Calling external programs" 
let () =
  Camlmix.line := 46;
  Camlmix.char := 59;
  Camlmix.source := "toolbox.html.mlx"
;;

let () = !Camlmix.printer 
# 46 "toolbox.html.mlx";;
                                                           "\n";;

let () =
  Camlmix.line := 47;
  Camlmix.char := 3;
  Camlmix.source := "toolbox.html.mlx"
;;

# 47 "toolbox.html.mlx";;
   toc_item1 ~id:"printer" "Changing the default printer" 
let () =
  Camlmix.line := 47;
  Camlmix.char := 61;
  Camlmix.source := "toolbox.html.mlx"
;;

let () = !Camlmix.printer 
# 47 "toolbox.html.mlx";;
                                                             "\n";;

let () =
  Camlmix.line := 48;
  Camlmix.char := 3;
  Camlmix.source := "toolbox.html.mlx"
;;

# 48 "toolbox.html.mlx";;
   toc_item0 ~id:"web" "Tips and tricks for web documents" 
let () =
  Camlmix.line := 48;
  Camlmix.char := 62;
  Camlmix.source := "toolbox.html.mlx"
;;

let () = !Camlmix.printer 
# 48 "toolbox.html.mlx";;
                                                              "\n";;

let () =
  Camlmix.line := 49;
  Camlmix.char := 3;
  Camlmix.source := "toolbox.html.mlx"
;;

# 49 "toolbox.html.mlx";;
   toc_item1 ~id:"css" "Changing the colors in a stylesheet" 
let () =
  Camlmix.line := 49;
  Camlmix.char := 64;
  Camlmix.source := "toolbox.html.mlx"
;;

let () = !Camlmix.printer 
# 49 "toolbox.html.mlx";;
                                                                "\n";;

let () =
  Camlmix.line := 50;
  Camlmix.char := 3;
  Camlmix.source := "toolbox.html.mlx"
;;

# 50 "toolbox.html.mlx";;
   toc_item1 ~id:"latex" "Inserting LaTeX snippets" 
let () =
  Camlmix.line := 50;
  Camlmix.char := 55;
  Camlmix.source := "toolbox.html.mlx"
;;

let () = !Camlmix.printer 
# 50 "toolbox.html.mlx";;
                                                       "\n";;

let () =
  Camlmix.line := 51;
  Camlmix.char := 3;
  Camlmix.source := "toolbox.html.mlx"
;;

# 51 "toolbox.html.mlx";;
   toc_item0 ~id:"ppocaml" "Preprocessing OCaml files" 
let () =
  Camlmix.line := 51;
  Camlmix.char := 58;
  Camlmix.source := "toolbox.html.mlx"
;;

let () = !Camlmix.printer 
# 51 "toolbox.html.mlx";;
                                                          "\n</div>\n\n<p>\nAnyone is free to use, copy, modify or redistribute any \ninlined example that may be found in the Camlmix Toolbox.\n<p>\nDisclaimer: No guarantee of any kind is given concerning the reliability \nof this document.\n\n\n";;

let () =
  Camlmix.line := 62;
  Camlmix.char := 3;
  Camlmix.source := "toolbox.html.mlx"
;;

# 62 "toolbox.html.mlx";;
   toc_entry "ocaml" 
let () =
  Camlmix.line := 62;
  Camlmix.char := 24;
  Camlmix.source := "toolbox.html.mlx"
;;

let () = !Camlmix.printer 
# 62 "toolbox.html.mlx";;
                        "\n\n";;

let () =
  Camlmix.line := 64;
  Camlmix.char := 3;
  Camlmix.source := "toolbox.html.mlx"
;;

# 64 "toolbox.html.mlx";;
  
open Print_ocaml

let intf_oc = open_out "toolbox.mli"
let impl_oc = open_out "toolbox.ml"
let _ = 
  let public = "(* The contents of this file is in the Public Domain. *)" in
  fprintf impl_oc "%s\n
(*
   This file was automatically generated from a set of examples for Camlmix.
   You can use it directly in a Camlmix file with the #use directive.

   If you want to compile it with ocamlc or ocamlopt, you must
   remove the references to the Camlmix module and remove the #load
   directives.
*)
"
    public;

  fprintf intf_oc "%s\n\n" public

let doc = ocamldoc ~intf_oc ~impl_oc

let () =
  Camlmix.line := 86;
  Camlmix.char := 3;
  Camlmix.source := "toolbox.html.mlx"
;;

let () = !Camlmix.printer 
# 86 "toolbox.html.mlx";;
   "\n\n<p>\nThe different samples are grouped by sections. Copy/paste them where\nyou need them. They are not provided as a single library because they\nare too heterogenous and not complex enough too justify a library.\nHowever, if you are very impatient, you can \ndownload ";;

let () =
  Camlmix.line := 93;
  Camlmix.char := 12;
  Camlmix.source := "toolbox.html.mlx"
;;

# 93 "toolbox.html.mlx";;
            download "toolbox.ml" 
let () =
  Camlmix.line := 93;
  Camlmix.char := 37;
  Camlmix.source := "toolbox.html.mlx"
;;

let () = !Camlmix.printer 
# 93 "toolbox.html.mlx";;
                                     " and use it by editing the sample\n";;

let () =
  Camlmix.line := 94;
  Camlmix.char := 3;
  Camlmix.source := "toolbox.html.mlx"
;;

# 94 "toolbox.html.mlx";;
   download "test.camlmix" 
let () =
  Camlmix.line := 94;
  Camlmix.char := 30;
  Camlmix.source := "toolbox.html.mlx"
;;

let () = !Camlmix.printer 
# 94 "toolbox.html.mlx";;
                              ".\nYou may also download ";;

let () =
  Camlmix.line := 95;
  Camlmix.char := 25;
  Camlmix.source := "toolbox.html.mlx"
;;

# 95 "toolbox.html.mlx";;
                         download "toolbox.mli" 
let () =
  Camlmix.line := 95;
  Camlmix.char := 51;
  Camlmix.source := "toolbox.html.mlx"
;;

let () = !Camlmix.printer 
# 95 "toolbox.html.mlx";;
                                                   " for information.\n\n<p>\nThe code samples are useful when using <a href=\"/camlmix\">Camlmix</a>,\nbut also probably in many other situations where \n<a href=\"http://caml.inria.fr\">OCaml</a> is used as a scripting language.\nThey may also be useful for the OCaml beginner looking for short real-life\nexamples rather than for Fibonacci numbers or the sieve of Eratosthenes.\n<code>;-)</code>\n\n";;

let () =
  Camlmix.line := 105;
  Camlmix.char := 3;
  Camlmix.source := "toolbox.html.mlx"
;;

# 105 "toolbox.html.mlx";;
   toc_entry "files" 
let () =
  Camlmix.line := 105;
  Camlmix.char := 24;
  Camlmix.source := "toolbox.html.mlx"
;;

let () = !Camlmix.printer 
# 105 "toolbox.html.mlx";;
                        "\n\n";;

let () =
  Camlmix.line := 107;
  Camlmix.char := 3;
  Camlmix.source := "toolbox.html.mlx"
;;

# 107 "toolbox.html.mlx";;
   doc "Scanning a whole channel" 
"The function given as argument is 
applied to each character of the channel, until the end is reached."
"val read_chan : (char -> 'a) -> in_channel -> unit"
"let read_chan f ic =
  try
    while true do
      f (input_char ic)
    done
  with End_of_file -> ()"

let () =
  Camlmix.line := 117;
  Camlmix.char := 3;
  Camlmix.source := "toolbox.html.mlx"
;;

let () = !Camlmix.printer 
# 117 "toolbox.html.mlx";;
   "\n\n";;

let () =
  Camlmix.line := 119;
  Camlmix.char := 3;
  Camlmix.source := "toolbox.html.mlx"
;;

# 119 "toolbox.html.mlx";;
   doc "Including a file"
"The given file is inserted without any transformation."
"val include_file : string -> unit"
"let include_file file =
  let ic = open_in_bin file in
  read_chan print_char ic;
  close_in ic"

let () =
  Camlmix.line := 126;
  Camlmix.char := 3;
  Camlmix.source := "toolbox.html.mlx"
;;

let () = !Camlmix.printer 
# 126 "toolbox.html.mlx";;
   "\n\n";;

let () =
  Camlmix.line := 128;
  Camlmix.char := 3;
  Camlmix.source := "toolbox.html.mlx"
;;

# 128 "toolbox.html.mlx";;
   doc "Verbatim input in a HTML document"
"Special characters are escaped so that the whole contents of the file
is displayed."
"val html_verbatim : string -> unit"
"let html_verbatim file =
  let ic = open_in_bin file in
  print_string \"<pre>\\n\";
  read_chan 
    (function
	 '<' -> print_string \"&lt;\"
       | '>' -> print_string \"&gt;\"
       | '&' -> print_string \"&amp;\"
       | c -> print_char c)
    ic;
  print_string \"</pre>\";
  close_in ic"

let () =
  Camlmix.line := 144;
  Camlmix.char := 3;
  Camlmix.source := "toolbox.html.mlx"
;;

let () = !Camlmix.printer 
# 144 "toolbox.html.mlx";;
   "\n\n\n";;

let () =
  Camlmix.line := 147;
  Camlmix.char := 3;
  Camlmix.source := "toolbox.html.mlx"
;;

# 147 "toolbox.html.mlx";;
   toc_entry "programs" 
let () =
  Camlmix.line := 147;
  Camlmix.char := 27;
  Camlmix.source := "toolbox.html.mlx"
;;

let () = !Camlmix.printer 
# 147 "toolbox.html.mlx";;
                           "\n\n";;

let () =
  Camlmix.line := 149;
  Camlmix.char := 3;
  Camlmix.source := "toolbox.html.mlx"
;;

# 149 "toolbox.html.mlx";;
   doc "Calling an external program" 
"For example, on Unix systems <code>command \"date\"</code>
will print the current date."

"val command : string -> unit"

"let command s =
  if Sys.command s = 0 then ()
  else invalid_arg (\"command: \" ^ s)"

let () =
  Camlmix.line := 158;
  Camlmix.char := 3;
  Camlmix.source := "toolbox.html.mlx"
;;

let () = !Camlmix.printer 
# 158 "toolbox.html.mlx";;
   "\n\n";;

let () =
  Camlmix.line := 160;
  Camlmix.char := 3;
  Camlmix.source := "toolbox.html.mlx"
;;

# 160 "toolbox.html.mlx";;
   doc "Recursive call to Camlmix" 
"The insertion of a document that must be preprocessed with Camlmix
without inheriting neither modifying the current environment
is done by starting a new <code>camlmix</code> process.
Most of the time, it is preferable to use the 
<code>include</code> directive instead of this."

"val camlmix : string -> unit"

"let camlmix file = command (\"camlmix \" ^ file)"

let () =
  Camlmix.line := 170;
  Camlmix.char := 3;
  Camlmix.source := "toolbox.html.mlx"
;;

let () = !Camlmix.printer 
# 170 "toolbox.html.mlx";;
   "\n\n";;

let () =
  Camlmix.line := 172;
  Camlmix.char := 3;
  Camlmix.source := "toolbox.html.mlx"
;;

# 172 "toolbox.html.mlx";;
   doc "Catching the output of a command"
"This function converts the output of a system command into an OCaml string.
This is useful in order to avoid to call the command several times or
if some further processing is required.
For instance, <code>slurp_command \"date\"</code> is
the equivalent of the Unix shell command <code>`date`</code>.
Note that this function should work on <b>every
system</b>, including Windows and MacOS."

"val slurp_command : string -> string"

"#load \"unix.cma\"

let read_command_output f s =
  let ic = Unix.open_process_in s in
  (try
     while true do
       f (input_char ic)
     done
   with End_of_file -> ());
  match Unix.close_process_in ic with
      Unix.WEXITED 0 -> ()
    | _ -> invalid_arg (\"read_command_output: \" ^ s)

let slurp_command s =
  let buf = Buffer.create 100 in
  read_command_output (Buffer.add_char buf) s;
  Buffer.contents buf"

let () =
  Camlmix.line := 200;
  Camlmix.char := 3;
  Camlmix.source := "toolbox.html.mlx"
;;

let () = !Camlmix.printer 
# 200 "toolbox.html.mlx";;
   "\n\n";;

let () =
  Camlmix.line := 202;
  Camlmix.char := 3;
  Camlmix.source := "toolbox.html.mlx"
;;

# 202 "toolbox.html.mlx";;
   doc "Using an external filter or converter"
"It is sometimes useful to process some text using a command that
read its input from <code>stdin</code> and writes its output to
<code>stdout</code>. <code>feed command data</code> calls
<code>command</code>, tells it to read <code>data</code> as its
standard input. <code>sfeed</code> is the same as <code>feed</code> except
that the result is put into a string.
<code>ffeed</code> prints the results to the
specified out_channel. <code>bfeed</code> prints the result into the
specified buffer.
<code>kfeed</code> is the general function that
expects a handler function that will treat each character successively
and may raise an exception."

"val kfeed : (char -> 'a) -> string -> string -> unit
val feed : string -> string -> unit
val ffeed : out_channel -> string -> string -> unit
val bfeed : Buffer.t -> string -> string -> unit
val sfeed : string -> string -> string"

"\
(* Warning: the following function crashes in OCaml 3.09.2,
   because of that bug: http://caml.inria.fr/mantis/view.php?id=4062
   (close_out is applied a second time during Unix.close_process) *)
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
     | _ -> invalid_arg (\"feed_command: \" ^ command));
  match !exn with
      Some e -> raise e
    | None -> ()

let feed = kfeed print_char

let ffeed oc command data = kfeed (output_char oc) command data

let bfeed buf command data = kfeed (Buffer.add_char buf) command data

let sfeed command data = 
  let buf = Buffer.create (2 * String.length data) in
  bfeed buf command data;
  Buffer.contents buf"

let () =
  Camlmix.line := 255;
  Camlmix.char := 3;
  Camlmix.source := "toolbox.html.mlx"
;;

let () = !Camlmix.printer 
# 255 "toolbox.html.mlx";;
   "\n\n";;

let () =
  Camlmix.line := 257;
  Camlmix.char := 3;
  Camlmix.source := "toolbox.html.mlx"
;;

# 257 "toolbox.html.mlx";;
   toc_entry "printer" 
let () =
  Camlmix.line := 257;
  Camlmix.char := 26;
  Camlmix.source := "toolbox.html.mlx"
;;

let () = !Camlmix.printer 
# 257 "toolbox.html.mlx";;
                          "\n\n<p>\nNormally Camlmix prints the document blocks without\nmodifications and flushes the standard output. This behavior can\nbe changed by using the <code>Camlmix.printer</code> hook.\nNote that <code>print_with</code> and <code>print_if</code> \nare now predefined in the <code>Camlmix</code> module.\n\n";;

let () =
  Camlmix.line := 266;
  Camlmix.char := 3;
  Camlmix.source := "toolbox.html.mlx"
;;

# 266 "toolbox.html.mlx";;
   doc "Changing the printer only for the next block"
"Here, we
define a function <code>print_with</code> that will change the
behavior of the printer only for the next block. For instance,
<code>print_with ignore</code> will skip the next block."
"val print_with : (string -> unit) -> unit"
"let print_with f =
  let saved_printer = !Camlmix.printer in
  Camlmix.printer := (fun s -> f s; Camlmix.printer := saved_printer)"

let () =
  Camlmix.line := 275;
  Camlmix.char := 3;
  Camlmix.source := "toolbox.html.mlx"
;;

let () = !Camlmix.printer 
# 275 "toolbox.html.mlx";;
   "\n\n";;

let () =
  Camlmix.line := 277;
  Camlmix.char := 3;
  Camlmix.source := "toolbox.html.mlx"
;;

# 277 "toolbox.html.mlx";;
   doc "Conditional output of the next block"
"Most of the time, pure OCaml code is convenient enough to display
text under certain conditions as in 
<code>print_string (if test then \"hello\" else \"goodbye\")</code>.
However, when the text to display is long and contains many double
quotes (<code>\"</code>) or backslashes (<code>\\</code>), 
it becomes difficult to protect each of them by manually adding
backslashes. The following <code>print_if</code> function will
print the next block if its argument is <code>true</code> and ignore
it otherwise."
"val print_if : bool -> unit"
"let print_if test =
  if not test then print_with ignore"

let () =
  Camlmix.line := 290;
  Camlmix.char := 3;
  Camlmix.source := "toolbox.html.mlx"
;;

let () = !Camlmix.printer 
# 290 "toolbox.html.mlx";;
   "\n\n\n\n\n";;

let () =
  Camlmix.line := 295;
  Camlmix.char := 3;
  Camlmix.source := "toolbox.html.mlx"
;;

# 295 "toolbox.html.mlx";;
   toc_entry "web" 
let () =
  Camlmix.line := 295;
  Camlmix.char := 22;
  Camlmix.source := "toolbox.html.mlx"
;;

let () = !Camlmix.printer 
# 295 "toolbox.html.mlx";;
                      "\n\n<p>\nAll the examples that are given in this section require\nthe standard distribution of OCaml and the OCaml functions that are\ndefined in the previous section, and sometimes some external commands or\nutilities that may or may not be available for every OS.\n\n";;

let () =
  Camlmix.line := 303;
  Camlmix.char := 3;
  Camlmix.source := "toolbox.html.mlx"
;;

# 303 "toolbox.html.mlx";;
   toc_entry "css" 
let () =
  Camlmix.line := 303;
  Camlmix.char := 22;
  Camlmix.source := "toolbox.html.mlx"
;;

let () = !Camlmix.printer 
# 303 "toolbox.html.mlx";;
                      "\n\n<p>\nPlace the definitions of the colors in several Camlmix files. Write a\nunique CSS using Camlmix insertions for the colors.\nFor instance, file <code>orange_style.mlx</code> is the following:\n";;

let () =
  Camlmix.line := 309;
  Camlmix.char := 3;
  Camlmix.source := "toolbox.html.mlx"
;;

# 309 "toolbox.html.mlx";;
   print_with camlmixpre 
let () =
  Camlmix.line := 309;
  Camlmix.char := 28;
  Camlmix.source := "toolbox.html.mlx"
;;

let () = !Camlmix.printer 
# 309 "toolbox.html.mlx";;
                            "\n## let main_color = \"orange\" ##\n";;

let () =
  Camlmix.line := 311;
  Camlmix.char := 3;
  Camlmix.source := "toolbox.html.mlx"
;;

# 311 "toolbox.html.mlx";;
   () 
let () =
  Camlmix.line := 311;
  Camlmix.char := 9;
  Camlmix.source := "toolbox.html.mlx"
;;

let () = !Camlmix.printer 
# 311 "toolbox.html.mlx";;
         "\n<p>File <code>blue_style.mlx</code> is the following:\n";;

let () =
  Camlmix.line := 313;
  Camlmix.char := 3;
  Camlmix.source := "toolbox.html.mlx"
;;

# 313 "toolbox.html.mlx";;
   print_with camlmixpre 
let () =
  Camlmix.line := 313;
  Camlmix.char := 28;
  Camlmix.source := "toolbox.html.mlx"
;;

let () = !Camlmix.printer 
# 313 "toolbox.html.mlx";;
                            "\n## let main_color = \"blue\" ##\n";;

let () =
  Camlmix.line := 315;
  Camlmix.char := 3;
  Camlmix.source := "toolbox.html.mlx"
;;

# 315 "toolbox.html.mlx";;
   () 
let () =
  Camlmix.line := 315;
  Camlmix.char := 9;
  Camlmix.source := "toolbox.html.mlx"
;;

let () = !Camlmix.printer 
# 315 "toolbox.html.mlx";;
         "\n<p><code>style.css.mlx</code> looks like this:\n\n";;

let () =
  Camlmix.line := 318;
  Camlmix.char := 3;
  Camlmix.source := "toolbox.html.mlx"
;;

# 318 "toolbox.html.mlx";;
   print_with camlmixpre 
let () =
  Camlmix.line := 318;
  Camlmix.char := 28;
  Camlmix.source := "toolbox.html.mlx"
;;

let () = !Camlmix.printer 
# 318 "toolbox.html.mlx";;
                            "\nbody {\n  color: ## main_color () ##;\n}\n...\ntable {\n  border: solid ## main_color () ## 3px;\n}\n...\n";;

let () =
  Camlmix.line := 327;
  Camlmix.char := 3;
  Camlmix.source := "toolbox.html.mlx"
;;

# 327 "toolbox.html.mlx";;
   () 
let () =
  Camlmix.line := 327;
  Camlmix.char := 9;
  Camlmix.source := "toolbox.html.mlx"
;;

let () = !Camlmix.printer 
# 327 "toolbox.html.mlx";;
         "\n\n<p>And Camlmix will generate 2 stylesheets for the price of one:\n<pre>\ncamlmix -o orange.css orange_style.mlx style.css.mlx\ncamlmix -o blue.css blue_style.mlx style.css.mlx\n</pre>\n\n\n";;

let () =
  Camlmix.line := 336;
  Camlmix.char := 3;
  Camlmix.source := "toolbox.html.mlx"
;;

# 336 "toolbox.html.mlx";;
   toc_entry "latex" 
let () =
  Camlmix.line := 336;
  Camlmix.char := 24;
  Camlmix.source := "toolbox.html.mlx"
;;

let () = !Camlmix.printer 
# 336 "toolbox.html.mlx";;
                        "\n\n<p>\nFor example, the following Camlmix/HTML/LaTeX code:\n";;

let () =
  Camlmix.line := 340;
  Camlmix.char := 3;
  Camlmix.source := "toolbox.html.mlx"
;;

# 340 "toolbox.html.mlx";;
   
print_with 
  (fun s -> camlmixpre ~text: Color_latex.html_decorate_latex (jump s))

let () =
  Camlmix.line := 343;
  Camlmix.char := 3;
  Camlmix.source := "toolbox.html.mlx"
;;

let () = !Camlmix.printer 
# 343 "toolbox.html.mlx";;
   "\n## print_with latex ##\n\\Huge\nThis is a \\LaTeX\\ formula: % and that is a comment\n$$\nx \\rightarrow \\frac{1}{\\sigma\\sqrt{2\\pi}} \\cdot\n              e^{-\\frac{(x-\\mu)^2}{2\\sigma^2}}\n$$\n## () ##\n";;

let () =
  Camlmix.line := 352;
  Camlmix.char := 3;
  Camlmix.source := "toolbox.html.mlx"
;;

# 352 "toolbox.html.mlx";;
   () 
let () =
  Camlmix.line := 352;
  Camlmix.char := 9;
  Camlmix.source := "toolbox.html.mlx"
;;

let () = !Camlmix.printer 
# 352 "toolbox.html.mlx";;
         "\n\n<p>\nwill be inserted into the HTML document just like this:\n";;

let () =
  Camlmix.line := 356;
  Camlmix.char := 3;
  Camlmix.source := "toolbox.html.mlx"
;;

# 356 "toolbox.html.mlx";;
   print_with latex 
let () =
  Camlmix.line := 356;
  Camlmix.char := 23;
  Camlmix.source := "toolbox.html.mlx"
;;

let () = !Camlmix.printer 
# 356 "toolbox.html.mlx";;
                       "\n\\Huge\nThis is a \\LaTeX\\ formula: % and that is a comment\n$$\nx \\rightarrow \\frac{1}{\\sigma\\sqrt{2\\pi}} \\cdot\n              e^{-\\frac{(x-\\mu)^2}{2\\sigma^2}}\n$$\n";;

let () =
  Camlmix.line := 363;
  Camlmix.char := 3;
  Camlmix.source := "toolbox.html.mlx"
;;

# 363 "toolbox.html.mlx";;
   () 
let () =
  Camlmix.line := 363;
  Camlmix.char := 9;
  Camlmix.source := "toolbox.html.mlx"
;;

let () = !Camlmix.printer 
# 363 "toolbox.html.mlx";;
         "\n\n<p>\nFor this, we will define one OCaml function of general purpose that \nconverts a piece of LaTeX into an image, and then some Camlmix-dependent \ncode that makes it convenient to use from a Camlmix/HTML file.\n\n<p>\nThe following function <code>latex_image</code> \ngenerates an image of the given LaTeX code and\nsaves it under the given file name.\nIt requires <code>latex</code>, <code>dvips</code> and \n<code>convert</code> (ImageMagick) in a Unix environment.\nThe format of the image is inferred from its extension.\nThe size of the font can be changed with the usual LaTeX commands such as\n\\large and \\small.\nThe <code>file_memo</code> class is defined in order \nto recompute only the images that need to be recomputed.\nWe put these functions in a file named <code>latex.ml</code>.\n";;

let () =
  Camlmix.line := 382;
  Camlmix.char := 3;
  Camlmix.source := "toolbox.html.mlx"
;;

# 382 "toolbox.html.mlx";;
   ocamlpre (file_contents "latex.ml") 
let () =
  Camlmix.line := 382;
  Camlmix.char := 42;
  Camlmix.source := "toolbox.html.mlx"
;;

let () = !Camlmix.printer 
# 382 "toolbox.html.mlx";;
                                          "\n\n<p>\nFrom a Camlmix/HTML file, we can define a <code>latex</code> function\nthat will automatically choose a name for the file, insert the HTML\ncode that displays the image and finally update a list of the images that\nwere generated so that the right image files \ncan be uploaded to the public website.\nRecompilation of the images occurs only if needed.\nFile <code>latex.mlx</code> can be written as follows:\n";;

let () =
  Camlmix.line := 392;
  Camlmix.char := 3;
  Camlmix.source := "toolbox.html.mlx"
;;

# 392 "toolbox.html.mlx";;
   camlmixpre (file_contents "latex.mlx") 
let () =
  Camlmix.line := 392;
  Camlmix.char := 45;
  Camlmix.source := "toolbox.html.mlx"
;;

let () = !Camlmix.printer 
# 392 "toolbox.html.mlx";;
                                             "\n\n\n";;

let () =
  Camlmix.line := 395;
  Camlmix.char := 3;
  Camlmix.source := "toolbox.html.mlx"
;;

# 395 "toolbox.html.mlx";;
   toc_entry "ppocaml" 
let () =
  Camlmix.line := 395;
  Camlmix.char := 26;
  Camlmix.source := "toolbox.html.mlx"
;;

let () = !Camlmix.printer 
# 395 "toolbox.html.mlx";;
                          "\n\n<p>\nIt is possible to use Camlmix as a preprocessor for OCaml files.\nThis can be useful for merging or including files, or inserting\ncharacters at any point of the file, which is not possible with Camlp4.\nA command for compiling a file has the following form:\n<pre>\n$ ocamlc -c -pp 'camlmix ppocaml.mlx' -impl my_source_file.mlx\n</pre>\n<p>\nor simply\n<pre>\n$ ocamlc -c -pp 'camlmix ppocaml.mlx' my_source_file.ml\n</pre>\n<p>\nwhere ";;

let () =
  Camlmix.line := 411;
  Camlmix.char := 9;
  Camlmix.source := "toolbox.html.mlx"
;;

# 411 "toolbox.html.mlx";;
         download "ppocaml.mlx" 
let () =
  Camlmix.line := 411;
  Camlmix.char := 35;
  Camlmix.source := "toolbox.html.mlx"
;;

let () = !Camlmix.printer 
# 411 "toolbox.html.mlx";;
                                   " is here to generate correct\nerror reports whenever a compilation error occurs:\n";;

let () =
  Camlmix.line := 413;
  Camlmix.char := 3;
  Camlmix.source := "toolbox.html.mlx"
;;

# 413 "toolbox.html.mlx";;
   print_with (bg_ocaml ~file:"ppocaml.mlx") 
let () =
  Camlmix.line := 413;
  Camlmix.char := 48;
  Camlmix.source := "toolbox.html.mlx"
;;

let () = !Camlmix.printer 
# 413 "toolbox.html.mlx";;
                                                "\n##\n(* File ppocaml.mlx: OCaml-style line directives for camlmix-processed files *)\n\nlet _ = \n  let line_directive () =\n    Printf.sprintf \"# %i %S\\n%s\" \n      !Camlmix.line !Camlmix.source (String.make (!Camlmix.char - 1) ' ') in\n\n  let default_printer = !Camlmix.printer in\n\n  let new_printer s =\n    default_printer (line_directive ());\n    default_printer s in\n\n  Camlmix.printer := new_printer\n";;

let () =
  Camlmix.line := 429;
  Camlmix.char := 3;
  Camlmix.source := "toolbox.html.mlx"
;;

# 429 "toolbox.html.mlx";;
   () 
let () =
  Camlmix.line := 429;
  Camlmix.char := 9;
  Camlmix.source := "toolbox.html.mlx"
;;

let () = !Camlmix.printer 
# 429 "toolbox.html.mlx";;
         "\n<p>\nFor instance, <code>my_source_file.mlx</code> could look like this:\n";;

let () =
  Camlmix.line := 432;
  Camlmix.char := 3;
  Camlmix.source := "toolbox.html.mlx"
;;

# 432 "toolbox.html.mlx";;
   print_with ocamlpre 
let () =
  Camlmix.line := 432;
  Camlmix.char := 26;
  Camlmix.source := "toolbox.html.mlx"
;;

let () = !Camlmix.printer 
# 432 "toolbox.html.mlx";;
                          "\n## @include \"some_definitions.mlx\" ##\n\n(* some local OCaml code *)\n...\n\n## @include \"more_definitions.mlx\" ##\n\n(* more local OCaml code *)\n...\n";;

let () =
  Camlmix.line := 442;
  Camlmix.char := 3;
  Camlmix.source := "toolbox.html.mlx"
;;

# 442 "toolbox.html.mlx";;
   () 
let () =
  Camlmix.line := 442;
  Camlmix.char := 9;
  Camlmix.source := "toolbox.html.mlx"
;;

let () = !Camlmix.printer 
# 442 "toolbox.html.mlx";;
         "\n<p>\nAnd the included files themselves can include other files.\n\n";;

let () =
  Camlmix.line := 446;
  Camlmix.char := 3;
  Camlmix.source := "toolbox.html.mlx"
;;

# 446 "toolbox.html.mlx";;
   camlmix_footer ~years:"2004" () 
let () =
  Camlmix.line := 446;
  Camlmix.char := 38;
  Camlmix.source := "toolbox.html.mlx"
;;

let () = !Camlmix.printer 
# 446 "toolbox.html.mlx";;
                                      "\n";;

let () =
  Camlmix.line := 447;
  Camlmix.char := 3;
  Camlmix.source := "toolbox.html.mlx"
;;

# 447 "toolbox.html.mlx";;
   include_file "end_big_table" 
let () =
  Camlmix.line := 447;
  Camlmix.char := 35;
  Camlmix.source := "toolbox.html.mlx"
;;

let () = !Camlmix.printer 
# 447 "toolbox.html.mlx";;
                                   "\n</body>\n</html>\n";;

