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

# 1 "caml2html.html.mlx";;

let () =
  Camlmix.line := 1;
  Camlmix.char := 1;
  Camlmix.source := "caml2html.html.mlx"
;;

let () = !Camlmix.printer 
# 1 "caml2html.html.mlx";;
 "";;

let () =
  Camlmix.line := 1;
  Camlmix.char := 3;
  Camlmix.source := "caml2html.html.mlx"
;;

# 1 "caml2html.html.mlx";;
  
#load "utils.cmo";;
#use "topfind";;
#require "caml2html";;
#require "mikmatch_pcre";;
#load "unmix.cmo";;
#load "print_ocaml.cmo";;
#use "caml2html-version.ml";;
open Print_ocaml
open Utils
open Camlmix

let () =
  Camlmix.line := 12;
  Camlmix.char := 3;
  Camlmix.source := "caml2html.html.mlx"
;;

let () = !Camlmix.printer 
# 12 "caml2html.html.mlx";;
   "\n";;

let () =
  Camlmix.line := 13;
  Camlmix.char := 3;
  Camlmix.source := "caml2html.html.mlx"
;;

# 13 "caml2html.html.mlx";;
   include_file "doctype" 
let () =
  Camlmix.line := 13;
  Camlmix.char := 29;
  Camlmix.source := "caml2html.html.mlx"
;;

let () = !Camlmix.printer 
# 13 "caml2html.html.mlx";;
                             "\n<html>\n<head>\n";;

let () =
  Camlmix.line := 16;
  Camlmix.char := 3;
  Camlmix.source := "caml2html.html.mlx"
;;

# 16 "caml2html.html.mlx";;
   title "Caml2html" 
let () =
  Camlmix.line := 16;
  Camlmix.char := 24;
  Camlmix.source := "caml2html.html.mlx"
;;

let () = !Camlmix.printer 
# 16 "caml2html.html.mlx";;
                        "\n";;

let () =
  Camlmix.line := 17;
  Camlmix.char := 3;
  Camlmix.source := "caml2html.html.mlx"
;;

# 17 "caml2html.html.mlx";;
   include_file "charset" 
let () =
  Camlmix.line := 17;
  Camlmix.char := 29;
  Camlmix.source := "caml2html.html.mlx"
;;

let () = !Camlmix.printer 
# 17 "caml2html.html.mlx";;
                             "\n";;

let () =
  Camlmix.line := 18;
  Camlmix.char := 3;
  Camlmix.source := "caml2html.html.mlx"
;;

# 18 "caml2html.html.mlx";;
   include_file "stylesheet" 
let () =
  Camlmix.line := 18;
  Camlmix.char := 32;
  Camlmix.source := "caml2html.html.mlx"
;;

let () = !Camlmix.printer 
# 18 "caml2html.html.mlx";;
                                "\n";;

let () =
  Camlmix.line := 19;
  Camlmix.char := 3;
  Camlmix.source := "caml2html.html.mlx"
;;

# 19 "caml2html.html.mlx";;
   include_file "ocaml-stylesheet" 
let () =
  Camlmix.line := 19;
  Camlmix.char := 38;
  Camlmix.source := "caml2html.html.mlx"
;;

let () = !Camlmix.printer 
# 19 "caml2html.html.mlx";;
                                      "\n";;

let () =
  Camlmix.line := 20;
  Camlmix.char := 3;
  Camlmix.source := "caml2html.html.mlx"
;;

# 20 "caml2html.html.mlx";;
   include_file "icon" 
let () =
  Camlmix.line := 20;
  Camlmix.char := 26;
  Camlmix.source := "caml2html.html.mlx"
;;

let () = !Camlmix.printer 
# 20 "caml2html.html.mlx";;
                          "\n";;

let () =
  Camlmix.line := 21;
  Camlmix.char := 3;
  Camlmix.source := "caml2html.html.mlx"
;;

# 21 "caml2html.html.mlx";;
   include_file "commonlinks" 
let () =
  Camlmix.line := 21;
  Camlmix.char := 33;
  Camlmix.source := "caml2html.html.mlx"
;;

let () = !Camlmix.printer 
# 21 "caml2html.html.mlx";;
                                 "\n</head>\n<body>\n";;

let () =
  Camlmix.line := 24;
  Camlmix.char := 3;
  Camlmix.source := "caml2html.html.mlx"
;;

# 24 "caml2html.html.mlx";;
   include_file "hitcounter" 
let () =
  Camlmix.line := 24;
  Camlmix.char := 32;
  Camlmix.source := "caml2html.html.mlx"
;;

let () = !Camlmix.printer 
# 24 "caml2html.html.mlx";;
                                "\n";;

let () =
  Camlmix.line := 25;
  Camlmix.char := 3;
  Camlmix.source := "caml2html.html.mlx"
;;

# 25 "caml2html.html.mlx";;
   include_file "start_big_table" 
let () =
  Camlmix.line := 25;
  Camlmix.char := 37;
  Camlmix.source := "caml2html.html.mlx"
;;

let () = !Camlmix.printer 
# 25 "caml2html.html.mlx";;
                                     "\n";;

let () =
  Camlmix.line := 26;
  Camlmix.char := 3;
  Camlmix.source := "caml2html.html.mlx"
;;

# 26 "caml2html.html.mlx";;
   top_menu ocaml 
let () =
  Camlmix.line := 26;
  Camlmix.char := 21;
  Camlmix.source := "caml2html.html.mlx"
;;

let () = !Camlmix.printer 
# 26 "caml2html.html.mlx";;
                     "\n<h1>Caml2html ";;

let () =
  Camlmix.line := 27;
  Camlmix.char := 17;
  Camlmix.source := "caml2html.html.mlx"
;;

# 27 "caml2html.html.mlx";;
                 include_file "1camel" 
let () =
  Camlmix.line := 27;
  Camlmix.char := 42;
  Camlmix.source := "caml2html.html.mlx"
;;

let () = !Camlmix.printer 
# 27 "caml2html.html.mlx";;
                                          "</h1>\n\n";;

let () =
  Camlmix.line := 29;
  Camlmix.char := 3;
  Camlmix.source := "caml2html.html.mlx"
;;

# 29 "caml2html.html.mlx";;
  
open Printf
let link ~url contents = printf "<a href=\"%s\">%s</a>" url contents

let () =
  Camlmix.line := 32;
  Camlmix.char := 3;
  Camlmix.source := "caml2html.html.mlx"
;;

let () = !Camlmix.printer 
# 32 "caml2html.html.mlx";;
   "\n\n\n<h2>Description</h2>\n\n<p>\nThe Caml2html package provides an executable and a library \nthat highlight OCaml code by adding some color.\nWith the caml2html program, you can produce ready-to-go HTML files\nsuch as <a href=\"caml2html_test.html\">this one</a>.\n\n<p>\nYou can also use the library in a program that makes web pages. See that:\n";;

let () =
  Camlmix.line := 45;
  Camlmix.char := 3;
  Camlmix.source := "caml2html.html.mlx"
;;

# 45 "caml2html.html.mlx";;
   print_with ocamlpre 
let () =
  Camlmix.line := 45;
  Camlmix.char := 26;
  Camlmix.source := "caml2html.html.mlx"
;;

let () = !Camlmix.printer 
# 45 "caml2html.html.mlx";;
                          "\n(* This small program is inserted verbatim in the source code of this\n   web page *)\n\nopen Printf\n\nlet rec fac = function \n    0 -> 1 \n  | n -> n * fac (n - 1)\n\nlet () =\n  for i = 0 to 10 do\n    printf \"%i -> %i\\n\" i (fac i)\n  done\n";;

let () =
  Camlmix.line := 59;
  Camlmix.char := 3;
  Camlmix.source := "caml2html.html.mlx"
;;

# 59 "caml2html.html.mlx";;
   () 
let () =
  Camlmix.line := 59;
  Camlmix.char := 9;
  Camlmix.source := "caml2html.html.mlx"
;;

let () = !Camlmix.printer 
# 59 "caml2html.html.mlx";;
         "\n\n<p>\nSee also this \n<a href=\"http://mlpost.lri.fr/examples/boxes.ml.html\">cool example</a>\nby the authors of <a href=\"http://mlpost.lri.fr/\">MLPost</a>.\nIt embeds arbitrary HTML (requires version > 1.3.0) with images\nand javascript.\n\n\n<h2>Quick reference guide</h2>\n\n<p>\nSee the <a href=\"caml2html-help.html\">help file which comes with \nthe distribution</a>.\n\n<h3>More about custom comment handlers</h3>\n\n<p>\nConsider a file <code>example.ml</code> containing the following OCaml code:\n<pre>\n(*include disclaimer.html *)\nlet f x = 2 * x + 1\n</pre>\n\n<p>\nFile <code>disclaimer.html</code> contains this:\n<pre>\nWarning, this is a test!\n</pre>\n\n<p>\nRendered with <code>caml2html</code> without using \nthe <code>-ext</code> option it gives:\n";;

let () =
  Camlmix.line := 93;
  Camlmix.char := 3;
  Camlmix.source := "caml2html.html.mlx"
;;

# 93 "caml2html.html.mlx";;
   print_with ocamlpre 
let () =
  Camlmix.line := 93;
  Camlmix.char := 26;
  Camlmix.source := "caml2html.html.mlx"
;;

let () = !Camlmix.printer 
# 93 "caml2html.html.mlx";;
                          "\n(*include disclaimer.html *)\nlet f x = 2 * x + 1\n";;

let () =
  Camlmix.line := 96;
  Camlmix.char := 3;
  Camlmix.source := "caml2html.html.mlx"
;;

# 96 "caml2html.html.mlx";;
   () 
let () =
  Camlmix.line := 96;
  Camlmix.char := 9;
  Camlmix.source := "caml2html.html.mlx"
;;

let () = !Camlmix.printer 
# 96 "caml2html.html.mlx";;
         "\n\n<p>\nWe can define a custom comment expander that reads the contents\nof the comment from stdin and outputs some HTML to stdout.\nIn our example we want to insert the contents of a file named\n<code>disclaimer.html</code>. This is done by defining a command\nassociated with \"include\", as follows:\n<pre>\n$ caml2html -ext \"include: xargs cat\" example.ml\n</pre>\n<p>\nThe result is:\n<div>\n<div style=\"margin-left:4em\">\nWarning, this is a test!\n</div>\n";;

let () =
  Camlmix.line := 113;
  Camlmix.char := 3;
  Camlmix.source := "caml2html.html.mlx"
;;

# 113 "caml2html.html.mlx";;
   print_with ocamlpre 
let () =
  Camlmix.line := 113;
  Camlmix.char := 26;
  Camlmix.source := "caml2html.html.mlx"
;;

let () = !Camlmix.printer 
# 113 "caml2html.html.mlx";;
                          "\nlet f x = 2 * x + 1\n";;

let () =
  Camlmix.line := 115;
  Camlmix.char := 3;
  Camlmix.source := "caml2html.html.mlx"
;;

# 115 "caml2html.html.mlx";;
   () 
let () =
  Camlmix.line := 115;
  Camlmix.char := 9;
  Camlmix.source := "caml2html.html.mlx"
;;

let () = !Camlmix.printer 
# 115 "caml2html.html.mlx";;
         "\n</div>\n\n\n<h2>Download</h2>\n\n<p>\nCaml2html was written by S&eacute;bastien Ailleret and is now maintained\nby Martin Jambon (me). It is distributed under a \n<a href=\"http://www.gnu.org/licenses/gpl.txt\">GPL license</a>.\n<a href=\"/releases/caml2html\">Download it here</a>.\n\n<p>\nThe <a href=\"https://github.com/mjambon/caml2html\">development version\nof Caml2html</a> is hosted on GitHub.\n\n\n<h2>LaTeX output</h2>\n\n<p>\nCaml2html provides LaTeX output since version 1.4.0 (<code>-latex</code>)\nand works very similarly to the default HTML mode. It uses LaTeX packages\n<code>alltt</code> and <code>color</code>.\n\n\n<h2>Exporting to other formats</h2>\n\n<p>\nTo PostScript, HTML, RTF or ANSI terminal: \n<a href=\"http://code.google.com/p/ocaml-enscript/\">Ocaml support for Enscript\n(ocaml.st by Janne Hellsten)</a>\n\n<p>\nTo PostScript: <a href=\"http://www.ocaml.info/home/ocaml_sources.html\">Ocaml \nsupport for a2ps (ocaml.ssh by Markus Mottl)</a>\n\n\n";;

let () =
  Camlmix.line := 152;
  Camlmix.char := 3;
  Camlmix.source := "caml2html.html.mlx"
;;

# 152 "caml2html.html.mlx";;
   camlmix_footer () 
let () =
  Camlmix.line := 152;
  Camlmix.char := 24;
  Camlmix.source := "caml2html.html.mlx"
;;

let () = !Camlmix.printer 
# 152 "caml2html.html.mlx";;
                        "\n";;

let () =
  Camlmix.line := 153;
  Camlmix.char := 3;
  Camlmix.source := "caml2html.html.mlx"
;;

# 153 "caml2html.html.mlx";;
   include_file "end_big_table" 
let () =
  Camlmix.line := 153;
  Camlmix.char := 35;
  Camlmix.source := "caml2html.html.mlx"
;;

let () = !Camlmix.printer 
# 153 "caml2html.html.mlx";;
                                   "\n</body>\n</html>\n";;

