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

# 1 "biniou.html.mlx";;

let () =
  Camlmix.line := 1;
  Camlmix.char := 1;
  Camlmix.source := "biniou.html.mlx"
;;

let () = !Camlmix.printer 
# 1 "biniou.html.mlx";;
 "";;

let () =
  Camlmix.line := 1;
  Camlmix.char := 3;
  Camlmix.source := "biniou.html.mlx"
;;

# 1 "biniou.html.mlx";;
  
#load "utils.cmo";;
#use "topfind";;
#require "caml2html";;
#require "mikmatch_pcre";;
#load "unmix.cmo";;
#load "print_ocaml.cmo";;
#use "biniou-version.ml";;
open Print_ocaml
open Utils
open Camlmix

let () =
  Camlmix.line := 12;
  Camlmix.char := 3;
  Camlmix.source := "biniou.html.mlx"
;;

let () = !Camlmix.printer 
# 12 "biniou.html.mlx";;
   "\n";;

let () =
  Camlmix.line := 13;
  Camlmix.char := 3;
  Camlmix.source := "biniou.html.mlx"
;;

# 13 "biniou.html.mlx";;
   include_file "doctype" 
let () =
  Camlmix.line := 13;
  Camlmix.char := 29;
  Camlmix.source := "biniou.html.mlx"
;;

let () = !Camlmix.printer 
# 13 "biniou.html.mlx";;
                             "\n<html>\n<head>\n";;

let () =
  Camlmix.line := 16;
  Camlmix.char := 3;
  Camlmix.source := "biniou.html.mlx"
;;

# 16 "biniou.html.mlx";;
   title 
"Biniou"

let () =
  Camlmix.line := 18;
  Camlmix.char := 3;
  Camlmix.source := "biniou.html.mlx"
;;

let () = !Camlmix.printer 
# 18 "biniou.html.mlx";;
   "\n";;

let () =
  Camlmix.line := 19;
  Camlmix.char := 3;
  Camlmix.source := "biniou.html.mlx"
;;

# 19 "biniou.html.mlx";;
   include_file "charset" 
let () =
  Camlmix.line := 19;
  Camlmix.char := 29;
  Camlmix.source := "biniou.html.mlx"
;;

let () = !Camlmix.printer 
# 19 "biniou.html.mlx";;
                             "\n";;

let () =
  Camlmix.line := 20;
  Camlmix.char := 3;
  Camlmix.source := "biniou.html.mlx"
;;

# 20 "biniou.html.mlx";;
   include_file "stylesheet" 
let () =
  Camlmix.line := 20;
  Camlmix.char := 32;
  Camlmix.source := "biniou.html.mlx"
;;

let () = !Camlmix.printer 
# 20 "biniou.html.mlx";;
                                "\n";;

let () =
  Camlmix.line := 21;
  Camlmix.char := 3;
  Camlmix.source := "biniou.html.mlx"
;;

# 21 "biniou.html.mlx";;
   include_file "ocaml-stylesheet" 
let () =
  Camlmix.line := 21;
  Camlmix.char := 38;
  Camlmix.source := "biniou.html.mlx"
;;

let () = !Camlmix.printer 
# 21 "biniou.html.mlx";;
                                      "\n";;

let () =
  Camlmix.line := 22;
  Camlmix.char := 3;
  Camlmix.source := "biniou.html.mlx"
;;

# 22 "biniou.html.mlx";;
   include_file "icon" 
let () =
  Camlmix.line := 22;
  Camlmix.char := 26;
  Camlmix.source := "biniou.html.mlx"
;;

let () = !Camlmix.printer 
# 22 "biniou.html.mlx";;
                          "\n";;

let () =
  Camlmix.line := 23;
  Camlmix.char := 3;
  Camlmix.source := "biniou.html.mlx"
;;

# 23 "biniou.html.mlx";;
   include_file "commonlinks" 
let () =
  Camlmix.line := 23;
  Camlmix.char := 33;
  Camlmix.source := "biniou.html.mlx"
;;

let () = !Camlmix.printer 
# 23 "biniou.html.mlx";;
                                 "\n</head>\n<body>\n";;

let () =
  Camlmix.line := 26;
  Camlmix.char := 3;
  Camlmix.source := "biniou.html.mlx"
;;

# 26 "biniou.html.mlx";;
   include_file "hitcounter" 
let () =
  Camlmix.line := 26;
  Camlmix.char := 32;
  Camlmix.source := "biniou.html.mlx"
;;

let () = !Camlmix.printer 
# 26 "biniou.html.mlx";;
                                "\n";;

let () =
  Camlmix.line := 27;
  Camlmix.char := 3;
  Camlmix.source := "biniou.html.mlx"
;;

# 27 "biniou.html.mlx";;
   include_file "start_big_table" 
let () =
  Camlmix.line := 27;
  Camlmix.char := 37;
  Camlmix.source := "biniou.html.mlx"
;;

let () = !Camlmix.printer 
# 27 "biniou.html.mlx";;
                                     "\n";;

let () =
  Camlmix.line := 28;
  Camlmix.char := 3;
  Camlmix.source := "biniou.html.mlx"
;;

# 28 "biniou.html.mlx";;
   top_menu ocaml 
let () =
  Camlmix.line := 28;
  Camlmix.char := 21;
  Camlmix.source := "biniou.html.mlx"
;;

let () = !Camlmix.printer 
# 28 "biniou.html.mlx";;
                     "\n\n";;

let () =
  Camlmix.line := 30;
  Camlmix.char := 3;
  Camlmix.source := "biniou.html.mlx"
;;

# 30 "biniou.html.mlx";;
  
open Printf

let () =
  Camlmix.line := 32;
  Camlmix.char := 3;
  Camlmix.source := "biniou.html.mlx"
;;

let () = !Camlmix.printer 
# 32 "biniou.html.mlx";;
   "\n\n<h1>Biniou\n";;

let () =
  Camlmix.line := 35;
  Camlmix.char := 3;
  Camlmix.source := "biniou.html.mlx"
;;

# 35 "biniou.html.mlx";;
   include_file "1camel" 
let () =
  Camlmix.line := 35;
  Camlmix.char := 28;
  Camlmix.source := "biniou.html.mlx"
;;

let () = !Camlmix.printer 
# 35 "biniou.html.mlx";;
                            "</h1>\n\n<h2>Introduction</h2>\n\n<p>\nBiniou (pronounced \"be new\") \nis a binary data format designed for speed, safety, ease of use and\nbackward compatibility as protocols evolve.\nBiniou is vastly equivalent to\n<a href=\"http://json.org/\">JSON</a>\nin terms of functionality but allows implementations several times faster\n(4 times faster than <a href=\"yojson.html\">yojson</a>), \nwith 25-35% space savings.\n\n<p>\nBiniou data can be decoded into human-readable form without knowledge of type\ndefinitions except for field and variant names which are represented by\n31-bit hashes. A program named <code>bdump</code>\nis provided for routine visualization of biniou data files.\n\n<p>\nThe program <a href=\"/atdgen\"><code>atdgen</code></a>\ncan be used to derive OCaml-Biniou serializers and deserializers\nfrom type definitions.\n\n\n<h2>Biniou format specification</h2>\n\n<p>\nThe <a href=\"biniou-format.txt\">biniou format is specified here</a>.\n\n\n<h2>Library documentation</h2>\n\n<p>\n<a href=\"biniou-doc/index.html\">Documentation of the <code>biniou</code>\nlibrary</a>\n\n\n\n<h2>Download</h2>\n\n<p>\nThis software was written by Martin Jambon. \nIt is distributed under a \n<a href=\"biniou-license.txt\">BSD license</a>.\n<a href=\"/releases/biniou\">Download it here</a>.\n</p>\n\n<p>\nThe <a href=\"https://github.com/mjambon/biniou\">development version\nof Biniou</a> is hosted on GitHub.\n\n\n";;

let () =
  Camlmix.line := 89;
  Camlmix.char := 3;
  Camlmix.source := "biniou.html.mlx"
;;

# 89 "biniou.html.mlx";;
   camlmix_footer ~years:"2010" () 
let () =
  Camlmix.line := 89;
  Camlmix.char := 38;
  Camlmix.source := "biniou.html.mlx"
;;

let () = !Camlmix.printer 
# 89 "biniou.html.mlx";;
                                      "\n";;

let () =
  Camlmix.line := 90;
  Camlmix.char := 3;
  Camlmix.source := "biniou.html.mlx"
;;

# 90 "biniou.html.mlx";;
   include_file "end_big_table" 
let () =
  Camlmix.line := 90;
  Camlmix.char := 35;
  Camlmix.source := "biniou.html.mlx"
;;

let () = !Camlmix.printer 
# 90 "biniou.html.mlx";;
                                   "\n</body>\n</html>\n";;

