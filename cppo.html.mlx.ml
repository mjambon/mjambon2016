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

# 1 "cppo.html.mlx";;

let () =
  Camlmix.line := 1;
  Camlmix.char := 1;
  Camlmix.source := "cppo.html.mlx"
;;

let () = !Camlmix.printer 
# 1 "cppo.html.mlx";;
 "";;

let () =
  Camlmix.line := 1;
  Camlmix.char := 3;
  Camlmix.source := "cppo.html.mlx"
;;

# 1 "cppo.html.mlx";;
  
#load "utils.cmo";;
#use "topfind";;
#require "caml2html";;
#require "mikmatch_pcre";;
#load "unmix.cmo";;
#load "print_ocaml.cmo";;
#use "cppo-version.ml";;
open Print_ocaml
open Utils
open Camlmix

let () =
  Camlmix.line := 12;
  Camlmix.char := 3;
  Camlmix.source := "cppo.html.mlx"
;;

let () = !Camlmix.printer 
# 12 "cppo.html.mlx";;
   "\n";;

let () =
  Camlmix.line := 13;
  Camlmix.char := 3;
  Camlmix.source := "cppo.html.mlx"
;;

# 13 "cppo.html.mlx";;
   include_file "doctype" 
let () =
  Camlmix.line := 13;
  Camlmix.char := 29;
  Camlmix.source := "cppo.html.mlx"
;;

let () = !Camlmix.printer 
# 13 "cppo.html.mlx";;
                             "\n<html>\n<head>\n";;

let () =
  Camlmix.line := 16;
  Camlmix.char := 3;
  Camlmix.source := "cppo.html.mlx"
;;

# 16 "cppo.html.mlx";;
   title 
"Cppo: the C preprocessor for OCaml"

let () =
  Camlmix.line := 18;
  Camlmix.char := 3;
  Camlmix.source := "cppo.html.mlx"
;;

let () = !Camlmix.printer 
# 18 "cppo.html.mlx";;
   "\n";;

let () =
  Camlmix.line := 19;
  Camlmix.char := 3;
  Camlmix.source := "cppo.html.mlx"
;;

# 19 "cppo.html.mlx";;
   include_file "charset" 
let () =
  Camlmix.line := 19;
  Camlmix.char := 29;
  Camlmix.source := "cppo.html.mlx"
;;

let () = !Camlmix.printer 
# 19 "cppo.html.mlx";;
                             "\n";;

let () =
  Camlmix.line := 20;
  Camlmix.char := 3;
  Camlmix.source := "cppo.html.mlx"
;;

# 20 "cppo.html.mlx";;
   include_file "stylesheet" 
let () =
  Camlmix.line := 20;
  Camlmix.char := 32;
  Camlmix.source := "cppo.html.mlx"
;;

let () = !Camlmix.printer 
# 20 "cppo.html.mlx";;
                                "\n";;

let () =
  Camlmix.line := 21;
  Camlmix.char := 3;
  Camlmix.source := "cppo.html.mlx"
;;

# 21 "cppo.html.mlx";;
   include_file "ocaml-stylesheet" 
let () =
  Camlmix.line := 21;
  Camlmix.char := 38;
  Camlmix.source := "cppo.html.mlx"
;;

let () = !Camlmix.printer 
# 21 "cppo.html.mlx";;
                                      "\n";;

let () =
  Camlmix.line := 22;
  Camlmix.char := 3;
  Camlmix.source := "cppo.html.mlx"
;;

# 22 "cppo.html.mlx";;
   include_file "icon" 
let () =
  Camlmix.line := 22;
  Camlmix.char := 26;
  Camlmix.source := "cppo.html.mlx"
;;

let () = !Camlmix.printer 
# 22 "cppo.html.mlx";;
                          "\n";;

let () =
  Camlmix.line := 23;
  Camlmix.char := 3;
  Camlmix.source := "cppo.html.mlx"
;;

# 23 "cppo.html.mlx";;
   include_file "commonlinks" 
let () =
  Camlmix.line := 23;
  Camlmix.char := 33;
  Camlmix.source := "cppo.html.mlx"
;;

let () = !Camlmix.printer 
# 23 "cppo.html.mlx";;
                                 "\n</head>\n<body>\n";;

let () =
  Camlmix.line := 26;
  Camlmix.char := 3;
  Camlmix.source := "cppo.html.mlx"
;;

# 26 "cppo.html.mlx";;
   include_file "hitcounter" 
let () =
  Camlmix.line := 26;
  Camlmix.char := 32;
  Camlmix.source := "cppo.html.mlx"
;;

let () = !Camlmix.printer 
# 26 "cppo.html.mlx";;
                                "\n";;

let () =
  Camlmix.line := 27;
  Camlmix.char := 3;
  Camlmix.source := "cppo.html.mlx"
;;

# 27 "cppo.html.mlx";;
   include_file "start_big_table" 
let () =
  Camlmix.line := 27;
  Camlmix.char := 37;
  Camlmix.source := "cppo.html.mlx"
;;

let () = !Camlmix.printer 
# 27 "cppo.html.mlx";;
                                     "\n";;

let () =
  Camlmix.line := 28;
  Camlmix.char := 3;
  Camlmix.source := "cppo.html.mlx"
;;

# 28 "cppo.html.mlx";;
   top_menu ocaml 
let () =
  Camlmix.line := 28;
  Camlmix.char := 21;
  Camlmix.source := "cppo.html.mlx"
;;

let () = !Camlmix.printer 
# 28 "cppo.html.mlx";;
                     "\n\n";;

let () =
  Camlmix.line := 30;
  Camlmix.char := 3;
  Camlmix.source := "cppo.html.mlx"
;;

# 30 "cppo.html.mlx";;
  
open Printf

let () =
  Camlmix.line := 32;
  Camlmix.char := 3;
  Camlmix.source := "cppo.html.mlx"
;;

let () = !Camlmix.printer 
# 32 "cppo.html.mlx";;
   "\n\n<h1>Cppo: the C preprocessor for OCaml\n";;

let () =
  Camlmix.line := 35;
  Camlmix.char := 3;
  Camlmix.source := "cppo.html.mlx"
;;

# 35 "cppo.html.mlx";;
   include_file "1camel" 
let () =
  Camlmix.line := 35;
  Camlmix.char := 28;
  Camlmix.source := "cppo.html.mlx"
;;

let () = !Camlmix.printer 
# 35 "cppo.html.mlx";;
                            "</h1>\n\n<h2>Introduction</h2>\n\n<p>\nCppo is an equivalent of the C preprocessor \ntargeted at the OCaml language and its variants.\n</p>\n\n<p>\nThe main purpose of cppo is to provide a lightweight tool for\nsimple macro substitution (<code>#define</code>)\nand file inclusion (<code>#include</code>)\nfor the occasional case when this is useful in OCaml.\nProcessing specific sections of files by calling external programs is\nalso possible via <code>#ext</code> directives.\n</p>\n\n<p>\nThe implementation of cppo relies on the standard library of OCaml and \non the standard parsing tools Ocamllex and Ocamlyacc, which contribute\nto the robustness of cppo across OCaml versions.\n</p>\n\n\n<h2>Download</h2>\n\n<p>\nThis software was written by Martin Jambon. \nIt is distributed under a \n<a href=\"cppo-license.txt\">BSD license</a>.\n<a href=\"/releases/cppo\">Download it here</a>.\n</p>\n\n<p>\nThe <a href=\"https://github.com/mjambon/cppo\">development version\nof Cppo</a> is hosted on GitHub.\n\n\n<h2>Documentation</h2>\n\n<a href=\"";;

let () =
  Camlmix.line := 76;
  Camlmix.char := 12;
  Camlmix.source := "cppo.html.mlx"
;;

let () = !Camlmix.printer 
# 76 "cppo.html.mlx";;
          (  sprintf "cppo-manual-%s.txt" cppo_version  : string);;

let () =
  Camlmix.line := 76;
  Camlmix.char := 58;
  Camlmix.source := "cppo.html.mlx"
;;

let () = !Camlmix.printer 
# 76 "cppo.html.mlx";;
                                                          "\">Cppo manual\n(text)</a>.\n\n\n";;

let () =
  Camlmix.line := 80;
  Camlmix.char := 3;
  Camlmix.source := "cppo.html.mlx"
;;

# 80 "cppo.html.mlx";;
   camlmix_footer ~years:"2009-2011" () 
let () =
  Camlmix.line := 80;
  Camlmix.char := 43;
  Camlmix.source := "cppo.html.mlx"
;;

let () = !Camlmix.printer 
# 80 "cppo.html.mlx";;
                                           "\n";;

let () =
  Camlmix.line := 81;
  Camlmix.char := 3;
  Camlmix.source := "cppo.html.mlx"
;;

# 81 "cppo.html.mlx";;
   include_file "end_big_table" 
let () =
  Camlmix.line := 81;
  Camlmix.char := 35;
  Camlmix.source := "cppo.html.mlx"
;;

let () = !Camlmix.printer 
# 81 "cppo.html.mlx";;
                                   "\n</body>\n</html>\n";;

