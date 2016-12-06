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

# 1 "ocamlscript.html.mlx";;

let () =
  Camlmix.line := 1;
  Camlmix.char := 1;
  Camlmix.source := "ocamlscript.html.mlx"
;;

let () = !Camlmix.printer 
# 1 "ocamlscript.html.mlx";;
 "";;

let () =
  Camlmix.line := 1;
  Camlmix.char := 3;
  Camlmix.source := "ocamlscript.html.mlx"
;;

# 1 "ocamlscript.html.mlx";;
  
#load "utils.cmo";;
#use "topfind";;
#require "caml2html";;
#require "mikmatch_pcre";;
#load "unmix.cmo";;
#load "print_ocaml.cmo";;
#use "ocamlscript-version.ml";;
open Print_ocaml
open Utils
open Camlmix

let () =
  Camlmix.line := 12;
  Camlmix.char := 3;
  Camlmix.source := "ocamlscript.html.mlx"
;;

let () = !Camlmix.printer 
# 12 "ocamlscript.html.mlx";;
   "\n";;

let () =
  Camlmix.line := 13;
  Camlmix.char := 3;
  Camlmix.source := "ocamlscript.html.mlx"
;;

# 13 "ocamlscript.html.mlx";;
   include_file "doctype" 
let () =
  Camlmix.line := 13;
  Camlmix.char := 29;
  Camlmix.source := "ocamlscript.html.mlx"
;;

let () = !Camlmix.printer 
# 13 "ocamlscript.html.mlx";;
                             "\n<html>\n<head>\n";;

let () =
  Camlmix.line := 16;
  Camlmix.char := 3;
  Camlmix.source := "ocamlscript.html.mlx"
;;

# 16 "ocamlscript.html.mlx";;
   title 
"ocamlscript: natively-compiled OCaml scripts"

let () =
  Camlmix.line := 18;
  Camlmix.char := 3;
  Camlmix.source := "ocamlscript.html.mlx"
;;

let () = !Camlmix.printer 
# 18 "ocamlscript.html.mlx";;
   "\n";;

let () =
  Camlmix.line := 19;
  Camlmix.char := 3;
  Camlmix.source := "ocamlscript.html.mlx"
;;

# 19 "ocamlscript.html.mlx";;
   include_file "charset" 
let () =
  Camlmix.line := 19;
  Camlmix.char := 29;
  Camlmix.source := "ocamlscript.html.mlx"
;;

let () = !Camlmix.printer 
# 19 "ocamlscript.html.mlx";;
                             "\n";;

let () =
  Camlmix.line := 20;
  Camlmix.char := 3;
  Camlmix.source := "ocamlscript.html.mlx"
;;

# 20 "ocamlscript.html.mlx";;
   include_file "stylesheet" 
let () =
  Camlmix.line := 20;
  Camlmix.char := 32;
  Camlmix.source := "ocamlscript.html.mlx"
;;

let () = !Camlmix.printer 
# 20 "ocamlscript.html.mlx";;
                                "\n";;

let () =
  Camlmix.line := 21;
  Camlmix.char := 3;
  Camlmix.source := "ocamlscript.html.mlx"
;;

# 21 "ocamlscript.html.mlx";;
   include_file "ocaml-stylesheet" 
let () =
  Camlmix.line := 21;
  Camlmix.char := 38;
  Camlmix.source := "ocamlscript.html.mlx"
;;

let () = !Camlmix.printer 
# 21 "ocamlscript.html.mlx";;
                                      "\n";;

let () =
  Camlmix.line := 22;
  Camlmix.char := 3;
  Camlmix.source := "ocamlscript.html.mlx"
;;

# 22 "ocamlscript.html.mlx";;
   include_file "icon" 
let () =
  Camlmix.line := 22;
  Camlmix.char := 26;
  Camlmix.source := "ocamlscript.html.mlx"
;;

let () = !Camlmix.printer 
# 22 "ocamlscript.html.mlx";;
                          "\n";;

let () =
  Camlmix.line := 23;
  Camlmix.char := 3;
  Camlmix.source := "ocamlscript.html.mlx"
;;

# 23 "ocamlscript.html.mlx";;
   include_file "commonlinks" 
let () =
  Camlmix.line := 23;
  Camlmix.char := 33;
  Camlmix.source := "ocamlscript.html.mlx"
;;

let () = !Camlmix.printer 
# 23 "ocamlscript.html.mlx";;
                                 "\n</head>\n<body>\n";;

let () =
  Camlmix.line := 26;
  Camlmix.char := 3;
  Camlmix.source := "ocamlscript.html.mlx"
;;

# 26 "ocamlscript.html.mlx";;
   include_file "hitcounter" 
let () =
  Camlmix.line := 26;
  Camlmix.char := 32;
  Camlmix.source := "ocamlscript.html.mlx"
;;

let () = !Camlmix.printer 
# 26 "ocamlscript.html.mlx";;
                                "\n";;

let () =
  Camlmix.line := 27;
  Camlmix.char := 3;
  Camlmix.source := "ocamlscript.html.mlx"
;;

# 27 "ocamlscript.html.mlx";;
   include_file "start_big_table" 
let () =
  Camlmix.line := 27;
  Camlmix.char := 37;
  Camlmix.source := "ocamlscript.html.mlx"
;;

let () = !Camlmix.printer 
# 27 "ocamlscript.html.mlx";;
                                     "\n";;

let () =
  Camlmix.line := 28;
  Camlmix.char := 3;
  Camlmix.source := "ocamlscript.html.mlx"
;;

# 28 "ocamlscript.html.mlx";;
   top_menu ocaml 
let () =
  Camlmix.line := 28;
  Camlmix.char := 21;
  Camlmix.source := "ocamlscript.html.mlx"
;;

let () = !Camlmix.printer 
# 28 "ocamlscript.html.mlx";;
                     "\n\n";;

let () =
  Camlmix.line := 30;
  Camlmix.char := 3;
  Camlmix.source := "ocamlscript.html.mlx"
;;

# 30 "ocamlscript.html.mlx";;
  
open Printf

let () =
  Camlmix.line := 32;
  Camlmix.char := 3;
  Camlmix.source := "ocamlscript.html.mlx"
;;

let () = !Camlmix.printer 
# 32 "ocamlscript.html.mlx";;
   "\n\n<h1>ocamlscript: natively-compiled OCaml scripts\n";;

let () =
  Camlmix.line := 35;
  Camlmix.char := 3;
  Camlmix.source := "ocamlscript.html.mlx"
;;

# 35 "ocamlscript.html.mlx";;
   include_file "1camel" 
let () =
  Camlmix.line := 35;
  Camlmix.char := 28;
  Camlmix.source := "ocamlscript.html.mlx"
;;

let () = !Camlmix.printer 
# 35 "ocamlscript.html.mlx";;
                            "</h1>\n\n<h2>Introduction</h2>\n\n<p>\nocamlscript compiles scripts, i.e. one-file programs, into \nnatively-compiled binaries, and executes them.\n\n<p>\nBasically, a script named <code>alpha</code> is compiled into\n<code>alpha.exe</code>. If <code>alpha.exe</code> is more recent\nthan <code>alpha</code>, then <code>alpha.exe</code> is executed directly,\notherwise <code>alpha</code> is recompiled first.\n\n<p>\nCompilation commands reside in the first section of the script. They are\nwritten in OCaml and consist normally in setting one or two variables.\n\n\n<h2>Documentation</h2>\n\n<p>\nThe ocamlscript tool is made of two essential components: a command\nnamed ocamlscript and a library which is made available in the compilation\nsection of the scripts.\n\n<p>\nThe basic usage of the ocamlscript command was designed to be intuitive:\n<pre>\nocamlscript scriptfile.ml\n</pre>\n\n<p>\nScript files do not have to follow the conventions of standard OCaml\nfile names. They can also be read from stdin or directly from the command-line.\nFull details on the command-line options are returned by \n<a href=\"ocamlscript-help.txt\"><code>ocamlscript --help</code></a>.\n\n<p>\nAn ocamlscript script differs from a standard OCaml file at its beginning.\nThere is an optional first section that instructs ocamlscript on how to\ncompile the script. Basically, variables that hold package names\nand additional preprocessing or compilation option can be set.\nA simple script that fetches a web page using the HTTP client provided by\nthe netclient package could be:\n";;

let () =
  Camlmix.line := 80;
  Camlmix.char := 3;
  Camlmix.source := "ocamlscript.html.mlx"
;;

# 80 "ocamlscript.html.mlx";;
   print_with ocamlpre 
let () =
  Camlmix.line := 80;
  Camlmix.char := 26;
  Camlmix.source := "ocamlscript.html.mlx"
;;

let () = !Camlmix.printer 
# 80 "ocamlscript.html.mlx";;
                          "\n#! /usr/bin/env ocamlscript\nOcaml.packs := [ \"netclient\" ]\n--\nmatch Sys.argv with\n    [| _; url |] -> print_string (Http_client.Convenience.http_get url)\n  | _ -> prerr_string \"Usage: getpage URL\\n\"; exit 1\n";;

let () =
  Camlmix.line := 87;
  Camlmix.char := 3;
  Camlmix.source := "ocamlscript.html.mlx"
;;

# 87 "ocamlscript.html.mlx";;
   () 
let () =
  Camlmix.line := 87;
  Camlmix.char := 9;
  Camlmix.source := "ocamlscript.html.mlx"
;;

let () = !Camlmix.printer 
# 87 "ocamlscript.html.mlx";;
         "\n\n<p>\nFor complete details, see the <a href=\"ocamlscript-doc/index.html\">API \nof the ocamlscript compilation library</a>.\n\n<p>\nFor simple examples of original uses of ocamlscript, you can browse \n<a href=\"ocamlscript-examples\">the collection of examples</a>\nextracted from the distribution of ocamlscript.\n\n<p>\nMore documentation, although somewhat incomplete, is given on the \n<a href=\"http://ocaml.pbwiki.com/Ocamlscript\">wiki site</a>.\n\n\n<h2>Download</h2>\n\n<p>\nThis software was written by David Mentr&eacute; and Martin Jambon. \nIt is distributed under a \n<a href=\"ocamlscript-license.txt\">Boost Software License</a>.\n<a href=\"/releases/ocamlscript\">Download it here</a>.\n\n<p>\nThe <a href=\"https://github.com/mjambon/ocamlscript\">development version\nof Ocamlscript</a> is hosted on GitHub.\n\n";;

let () =
  Camlmix.line := 115;
  Camlmix.char := 3;
  Camlmix.source := "ocamlscript.html.mlx"
;;

# 115 "ocamlscript.html.mlx";;
   camlmix_footer ~years:"2007" () 
let () =
  Camlmix.line := 115;
  Camlmix.char := 38;
  Camlmix.source := "ocamlscript.html.mlx"
;;

let () = !Camlmix.printer 
# 115 "ocamlscript.html.mlx";;
                                      "\n";;

let () =
  Camlmix.line := 116;
  Camlmix.char := 3;
  Camlmix.source := "ocamlscript.html.mlx"
;;

# 116 "ocamlscript.html.mlx";;
   include_file "end_big_table" 
let () =
  Camlmix.line := 116;
  Camlmix.char := 35;
  Camlmix.source := "ocamlscript.html.mlx"
;;

let () = !Camlmix.printer 
# 116 "ocamlscript.html.mlx";;
                                   "\n</body>\n</html>\n";;

