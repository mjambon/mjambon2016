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

# 1 "extend-ocaml-syntax.html.mlx";;

let () =
  Camlmix.line := 1;
  Camlmix.char := 1;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1 "extend-ocaml-syntax.html.mlx";;
 "";;

let () =
  Camlmix.line := 1;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1 "extend-ocaml-syntax.html.mlx";;
  
#load "utils.cmo";;
#use "topfind";;
#require "caml2html";;
#require "mikmatch_pcre";;
#load "unmix.cmo";;
#load "print_ocaml.cmo";;
open Print_ocaml
open Utils
open Camlmix

open Printf

let warning ?(name = "Warning") s =
  printf "<span style=\"color:red\"><b>%s</b>: \
          %s</span>" name s

let manual () = 
  printf
    "<a href=\"http://pauillac.inria.fr/~ddr/camlp5/doc/htmlc/\">manual</a>"

let command ?(noexit = false) cmd =
  eprintf "%s\n%!" cmd;
  match Sys.command cmd with
      0 -> ()
    | status -> 
	if noexit then ()
	else 
	  (eprintf "exit %i\n%!" status;
	   exit status)

let () =
  Camlmix.line := 31;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 31 "extend-ocaml-syntax.html.mlx";;
   "\n";;

let () =
  Camlmix.line := 32;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 32 "extend-ocaml-syntax.html.mlx";;
   include_file "doctype" 
let () =
  Camlmix.line := 32;
  Camlmix.char := 29;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 32 "extend-ocaml-syntax.html.mlx";;
                             "\n<html>\n<head>\n";;

let () =
  Camlmix.line := 35;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 35 "extend-ocaml-syntax.html.mlx";;
   title 
"Tutorial: How to customize the syntax of OCaml, using Camlp5"

let () =
  Camlmix.line := 37;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 37 "extend-ocaml-syntax.html.mlx";;
   "\n";;

let () =
  Camlmix.line := 38;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 38 "extend-ocaml-syntax.html.mlx";;
   include_file "charset" 
let () =
  Camlmix.line := 38;
  Camlmix.char := 29;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 38 "extend-ocaml-syntax.html.mlx";;
                             "\n";;

let () =
  Camlmix.line := 39;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 39 "extend-ocaml-syntax.html.mlx";;
   include_file "stylesheet" 
let () =
  Camlmix.line := 39;
  Camlmix.char := 32;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 39 "extend-ocaml-syntax.html.mlx";;
                                "\n";;

let () =
  Camlmix.line := 40;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 40 "extend-ocaml-syntax.html.mlx";;
   include_file "ocaml-stylesheet" 
let () =
  Camlmix.line := 40;
  Camlmix.char := 38;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 40 "extend-ocaml-syntax.html.mlx";;
                                      "\n";;

let () =
  Camlmix.line := 41;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 41 "extend-ocaml-syntax.html.mlx";;
   include_file "icon" 
let () =
  Camlmix.line := 41;
  Camlmix.char := 26;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 41 "extend-ocaml-syntax.html.mlx";;
                          "\n";;

let () =
  Camlmix.line := 42;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 42 "extend-ocaml-syntax.html.mlx";;
   include_file "commonlinks" 
let () =
  Camlmix.line := 42;
  Camlmix.char := 33;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 42 "extend-ocaml-syntax.html.mlx";;
                                 "\n</head>\n<body>\n";;

let () =
  Camlmix.line := 45;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 45 "extend-ocaml-syntax.html.mlx";;
   include_file "hitcounter" 
let () =
  Camlmix.line := 45;
  Camlmix.char := 32;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 45 "extend-ocaml-syntax.html.mlx";;
                                "\n";;

let () =
  Camlmix.line := 46;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 46 "extend-ocaml-syntax.html.mlx";;
   include_file "start_big_table" 
let () =
  Camlmix.line := 46;
  Camlmix.char := 37;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 46 "extend-ocaml-syntax.html.mlx";;
                                     "\n";;

let () =
  Camlmix.line := 47;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 47 "extend-ocaml-syntax.html.mlx";;
   top_menu ocaml 
let () =
  Camlmix.line := 47;
  Camlmix.char := 21;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 47 "extend-ocaml-syntax.html.mlx";;
                     "\n\n";;

let () =
  Camlmix.line := 49;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 49 "extend-ocaml-syntax.html.mlx";;
  
open Printf

let () =
  Camlmix.line := 51;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 51 "extend-ocaml-syntax.html.mlx";;
   "\n\n<h1>How to customize the syntax of OCaml, using Camlp5\n";;

let () =
  Camlmix.line := 54;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 54 "extend-ocaml-syntax.html.mlx";;
   include_file "3camels" 
let () =
  Camlmix.line := 54;
  Camlmix.char := 29;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 54 "extend-ocaml-syntax.html.mlx";;
                             "<br>\n<span class=title2>Everything you always wanted to know, \nbut were afraid to ask</span></h1>\n\n<p style=\"padding-left:3cm;padding-right:3cm\">\n<i>\nCopyright &copy; 2005, 2010 Martin Jambon.\nPermission is granted to copy, distribute and/or modify this document\nunder the terms of the GNU Free Documentation License, Version 1.2\nor any later version published by the Free Software Foundation;\nwith no Invariant Sections, no Front-Cover Texts, and no Back-Cover\nTexts.  A copy of the license is included in the file\n<a href=\"fdl.txt\">fdl.txt</a>. The source code of this document is the file\n<a href=\"extend-ocaml-syntax.html.mlx\" \n   rel=\"nofollow\">extend-ocaml-syntax.html.mlx</a>.\n</i>\n\n<p>\nThis tutorial is an individual initiative to provide\nadditional documentation for\n<a href=\"http://pauillac.inria.fr/~ddr/camlp5/\">Camlp5</a>, \na sophisticated tool for\n<a href=\"http://caml.inria.fr/\">Objective Caml</a>\nprogrammers.\n\n<p>\n<b>2010 revision</b>: This document was updated to reflect the name\nchange of the legacy Camlp4, now called Camlp5.\nThe following table clarifies name issues:\n<table class=\"real-table\">\n<tr>\n  <th>Period</th><th>Name of \"legacy Camlp4\"</th><th>Name of \"new Camlp4\"</th>\n</tr>\n<tr>\n  <td>before 2007</td>\n  <td>Camlp4</td>\n  <td>-</td>\n</tr>\n<tr>\n  <td>from 2007 (OCaml 3.10)</td>\n  <td>Camlp5</td>\n  <td>Camlp4</td>\n</tr>\n</table>\n<p>\nThe examples of this tutorial will not work with the new Camlp4 starting \nwith OCaml 3.10.\n\n";;

let () =
  Camlmix.line := 102;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 102 "extend-ocaml-syntax.html.mlx";;
   let (toc_item0, toc_item1, toc_item2, toc_entry, toc_link) = make_toc () 
let () =
  Camlmix.line := 102;
  Camlmix.char := 79;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 102 "extend-ocaml-syntax.html.mlx";;
                                                                               "\n\n<div class=toc>\n<b>Contents</b><br>\n";;

let () =
  Camlmix.line := 106;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 106 "extend-ocaml-syntax.html.mlx";;
   toc_item0 ~id:"what" "What is it about?" 
let () =
  Camlmix.line := 106;
  Camlmix.char := 47;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 106 "extend-ocaml-syntax.html.mlx";;
                                               "\n";;

let () =
  Camlmix.line := 107;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 107 "extend-ocaml-syntax.html.mlx";;
   toc_item0 ~id:"when" "Is Camlp5 what I need?" 
let () =
  Camlmix.line := 107;
  Camlmix.char := 52;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 107 "extend-ocaml-syntax.html.mlx";;
                                                    "\n";;

let () =
  Camlmix.line := 108;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 108 "extend-ocaml-syntax.html.mlx";;
   toc_item0 ~id:"who" "Intended audience" 
let () =
  Camlmix.line := 108;
  Camlmix.char := 46;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 108 "extend-ocaml-syntax.html.mlx";;
                                              "\n";;

let () =
  Camlmix.line := 109;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 109 "extend-ocaml-syntax.html.mlx";;
   toc_item0 ~id:"getting-started" "Getting started" 
let () =
  Camlmix.line := 109;
  Camlmix.char := 56;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 109 "extend-ocaml-syntax.html.mlx";;
                                                        "\n";;

let () =
  Camlmix.line := 110;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 110 "extend-ocaml-syntax.html.mlx";;
   toc_item0 ~id:"languages" "Which language does Camlp5 speak?" 
let () =
  Camlmix.line := 110;
  Camlmix.char := 68;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 110 "extend-ocaml-syntax.html.mlx";;
                                                                    "\n";;

let () =
  Camlmix.line := 111;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 111 "extend-ocaml-syntax.html.mlx";;
   toc_item0 ~id:"machinery" "What goes in and what comes out" 
let () =
  Camlmix.line := 111;
  Camlmix.char := 66;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 111 "extend-ocaml-syntax.html.mlx";;
                                                                  "\n";;

let () =
  Camlmix.line := 112;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 112 "extend-ocaml-syntax.html.mlx";;
   toc_item0 ~id:"dissection" "Dissection of a syntax expander" 
let () =
  Camlmix.line := 112;
  Camlmix.char := 67;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 112 "extend-ocaml-syntax.html.mlx";;
                                                                   "\n\n";;

let () =
  Camlmix.line := 114;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 114 "extend-ocaml-syntax.html.mlx";;
   toc_item0 ~id:"variations" "Variations around the same example" 
let () =
  Camlmix.line := 114;
  Camlmix.char := 70;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 114 "extend-ocaml-syntax.html.mlx";;
                                                                      "\n";;

let () =
  Camlmix.line := 115;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 115 "extend-ocaml-syntax.html.mlx";;
   toc_item1 ~id:"quotations" "Using only one quotation" 
let () =
  Camlmix.line := 115;
  Camlmix.char := 60;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 115 "extend-ocaml-syntax.html.mlx";;
                                                            "\n";;

let () =
  Camlmix.line := 116;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 116 "extend-ocaml-syntax.html.mlx";;
   toc_item1 ~id:"reordering" "Removing the hidden reserved identifier" 
let () =
  Camlmix.line := 116;
  Camlmix.char := 75;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 116 "extend-ocaml-syntax.html.mlx";;
                                                                           "\n";;

let () =
  Camlmix.line := 117;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 117 "extend-ocaml-syntax.html.mlx";;
   toc_item1 ~id:"more-rules" "Adding more constructs" 
let () =
  Camlmix.line := 117;
  Camlmix.char := 58;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 117 "extend-ocaml-syntax.html.mlx";;
                                                          "\n\n\n";;

let () =
  Camlmix.line := 120;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 120 "extend-ocaml-syntax.html.mlx";;
   toc_item0 ~id:"replacing" 
  "Local syntax extensions, transformations of the AST" 
let () =
  Camlmix.line := 121;
  Camlmix.char := 59;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 121 "extend-ocaml-syntax.html.mlx";;
                                                           "\n";;

let () =
  Camlmix.line := 122;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 122 "extend-ocaml-syntax.html.mlx";;
   toc_item0 ~id:"inserting-bof" 
  "Inserting some code at the beginning of the file" 
let () =
  Camlmix.line := 123;
  Camlmix.char := 56;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 123 "extend-ocaml-syntax.html.mlx";;
                                                        "\n";;

let () =
  Camlmix.line := 124;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 124 "extend-ocaml-syntax.html.mlx";;
   toc_item0 ~id:"inserting-str_items"
  "Inserting toplevel expressions" 
let () =
  Camlmix.line := 125;
  Camlmix.char := 38;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 125 "extend-ocaml-syntax.html.mlx";;
                                      "\n";;

let () =
  Camlmix.line := 126;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 126 "extend-ocaml-syntax.html.mlx";;
   toc_item0 ~id:"inserting-just-before"
  "Inserting hidden expressions which are evaluated once" 
let () =
  Camlmix.line := 127;
  Camlmix.char := 61;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 127 "extend-ocaml-syntax.html.mlx";;
                                                             "\n\n";;

let () =
  Camlmix.line := 129;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 129 "extend-ocaml-syntax.html.mlx";;
   toc_item0 ~id:"priorities" "Mastering priorities" 
let () =
  Camlmix.line := 129;
  Camlmix.char := 56;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 129 "extend-ocaml-syntax.html.mlx";;
                                                        "\n\n";;

let () =
  Camlmix.line := 131;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 131 "extend-ocaml-syntax.html.mlx";;
   toc_item0 ~id:"custom_parsers" "Local use of external parsers" 
let () =
  Camlmix.line := 131;
  Camlmix.char := 69;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 131 "extend-ocaml-syntax.html.mlx";;
                                                                     "\n";;

let () =
  Camlmix.line := 132;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 132 "extend-ocaml-syntax.html.mlx";;
   toc_item1 ~id:"parse_string" "Parsing raw blocks of text" 
let () =
  Camlmix.line := 132;
  Camlmix.char := 64;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 132 "extend-ocaml-syntax.html.mlx";;
                                                                "\n";;

let () =
  Camlmix.line := 133;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 133 "extend-ocaml-syntax.html.mlx";;
   toc_item1 ~id:"parse_token_stream" "Parsing the stream of tokens" 
let () =
  Camlmix.line := 133;
  Camlmix.char := 72;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 133 "extend-ocaml-syntax.html.mlx";;
                                                                        "\n\n";;

let () =
  Camlmix.line := 135;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 135 "extend-ocaml-syntax.html.mlx";;
   toc_item0 ~id:"error_location" "Producing useful error messages" 
let () =
  Camlmix.line := 135;
  Camlmix.char := 71;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 135 "extend-ocaml-syntax.html.mlx";;
                                                                       "\n\n";;

let () =
  Camlmix.line := 137;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 137 "extend-ocaml-syntax.html.mlx";;
   toc_item0 ~id:"packaging" "Suggestions for a better interaction between multiple syntax extensions" 
let () =
  Camlmix.line := 137;
  Camlmix.char := 106;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 137 "extend-ocaml-syntax.html.mlx";;
                                                                                                          "\n\n";;

let () =
  Camlmix.line := 139;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 139 "extend-ocaml-syntax.html.mlx";;
   toc_item1 ~id:"cohabitation" "Avoiding strong incompatibilities" 
let () =
  Camlmix.line := 139;
  Camlmix.char := 71;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 139 "extend-ocaml-syntax.html.mlx";;
                                                                       "\n";;

let () =
  Camlmix.line := 140;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 140 "extend-ocaml-syntax.html.mlx";;
   toc_item1 ~id:"names" "Avoiding name clashes" 
let () =
  Camlmix.line := 140;
  Camlmix.char := 52;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 140 "extend-ocaml-syntax.html.mlx";;
                                                    "\n\n\n\n";;

let () =
  Camlmix.line := 144;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 144 "extend-ocaml-syntax.html.mlx";;
   toc_item0 ~id:"youcan" "Things you can do" 
let () =
  Camlmix.line := 144;
  Camlmix.char := 49;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 144 "extend-ocaml-syntax.html.mlx";;
                                                 "\n";;

let () =
  Camlmix.line := 145;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 145 "extend-ocaml-syntax.html.mlx";;
   toc_item1 ~id:"lettry" 
	"Catching exceptions only where needed: \
         <code>let try <i>name</i> = <i>expr1</i> in \
         <i>expr2</i> with <i>exception-handler</i></code>" 
let () =
  Camlmix.line := 148;
  Camlmix.char := 63;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 148 "extend-ocaml-syntax.html.mlx";;
                                                               "\n";;

let () =
  Camlmix.line := 149;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 149 "extend-ocaml-syntax.html.mlx";;
   toc_item1 ~id:"onlyfloats" 
	"Read <code>1/2</code> as <code>1. /. 2.</code>, but only locally" 
let () =
  Camlmix.line := 150;
  Camlmix.char := 71;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 150 "extend-ocaml-syntax.html.mlx";;
                                                                       "\n";;

let () =
  Camlmix.line := 151;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 151 "extend-ocaml-syntax.html.mlx";;
   toc_item1 ~id:"types" 
	"Default values for record fields" 
let () =
  Camlmix.line := 152;
  Camlmix.char := 39;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 152 "extend-ocaml-syntax.html.mlx";;
                                       "\n";;

let () =
  Camlmix.line := 153;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 153 "extend-ocaml-syntax.html.mlx";;
   toc_item1 ~id:"rec-expr" "Anonymous recursive functions" 
let () =
  Camlmix.line := 153;
  Camlmix.char := 63;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 153 "extend-ocaml-syntax.html.mlx";;
                                                               "\n\n";;

let () =
  Camlmix.line := 155;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 155 "extend-ocaml-syntax.html.mlx";;
   toc_item0 ~id:"youcant" "Things you cannot do and workarounds" 
let () =
  Camlmix.line := 155;
  Camlmix.char := 69;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 155 "extend-ocaml-syntax.html.mlx";;
                                                                     "\n";;

let () =
  Camlmix.line := 156;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 156 "extend-ocaml-syntax.html.mlx";;
   toc_item1 ~id:"inserting-anywhere" "Inserting anything, anywhere" 
let () =
  Camlmix.line := 156;
  Camlmix.char := 72;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 156 "extend-ocaml-syntax.html.mlx";;
                                                                        "\n";;

let () =
  Camlmix.line := 157;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 157 "extend-ocaml-syntax.html.mlx";;
   toc_item1 ~id:"comments" "Adding end of line comments" 
let () =
  Camlmix.line := 157;
  Camlmix.char := 61;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 157 "extend-ocaml-syntax.html.mlx";;
                                                             "\n";;

let () =
  Camlmix.line := 158;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 158 "extend-ocaml-syntax.html.mlx";;
   toc_item1 ~id:"strings" "Adding a notation for raw strings" 
let () =
  Camlmix.line := 158;
  Camlmix.char := 66;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 158 "extend-ocaml-syntax.html.mlx";;
                                                                  "\n";;

let () =
  Camlmix.line := 159;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 159 "extend-ocaml-syntax.html.mlx";;
   toc_item1 ~id:"infix" "Adding Haskell's \"infixing\" backquotes
such as <code>f `map` list</code>" 
let () =
  Camlmix.line := 160;
  Camlmix.char := 38;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 160 "extend-ocaml-syntax.html.mlx";;
                                      "\n";;

let () =
  Camlmix.line := 161;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 161 "extend-ocaml-syntax.html.mlx";;
   toc_item1 ~id:"selectors" "Adding SML's #<i>n</i> notation 
to extract field number <i>n</i> of any tuple" 
let () =
  Camlmix.line := 162;
  Camlmix.char := 50;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 162 "extend-ocaml-syntax.html.mlx";;
                                                  "\n\n\n";;

let () =
  Camlmix.line := 165;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 165 "extend-ocaml-syntax.html.mlx";;
   toc_item0 ~id:"troubleshooting" "Common problems" 
let () =
  Camlmix.line := 165;
  Camlmix.char := 56;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 165 "extend-ocaml-syntax.html.mlx";;
                                                        "\n";;

let () =
  Camlmix.line := 166;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 166 "extend-ocaml-syntax.html.mlx";;
   
let quot = html_quote "<:expr< [ $list:my_list$ ] >>" in
toc_item1 ~id:"lists" 
  (sprintf "I can't build a list with something like <code>%s</code>" quot) 
let () =
  Camlmix.line := 169;
  Camlmix.char := 79;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 169 "extend-ocaml-syntax.html.mlx";;
                                                                               "\n";;

let () =
  Camlmix.line := 170;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 170 "extend-ocaml-syntax.html.mlx";;
   
let quot = html_quote "<:expr< let f $list:args$ = $e$ >>" in
toc_item1 ~id:"functions" 
  (sprintf "I can't build a function declaration with \
something like <code>%s</code>" quot) 
let () =
  Camlmix.line := 174;
  Camlmix.char := 41;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 174 "extend-ocaml-syntax.html.mlx";;
                                         "\n";;

let () =
  Camlmix.line := 175;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 175 "extend-ocaml-syntax.html.mlx";;
   toc_item1 ~id:"badloc" "Incorrect locations in error reports" 
let () =
  Camlmix.line := 175;
  Camlmix.char := 68;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 175 "extend-ocaml-syntax.html.mlx";;
                                                                    "\n";;

let () =
  Camlmix.line := 176;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 176 "extend-ocaml-syntax.html.mlx";;
   toc_item1 ~id:"loc"
  "Unbound value <code>_loc</code> (or <code>loc</code>)" 
let () =
  Camlmix.line := 177;
  Camlmix.char := 61;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 177 "extend-ocaml-syntax.html.mlx";;
                                                             "\n";;

let () =
  Camlmix.line := 178;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 178 "extend-ocaml-syntax.html.mlx";;
   
let quot = html_quote "<:expr< f ~$lid:labelname$ >>" in
toc_item1 ~id:"labels"
  (sprintf "What's wrong with labels: <code>%s</code> doesn't work" quot) 
let () =
  Camlmix.line := 181;
  Camlmix.char := 77;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 181 "extend-ocaml-syntax.html.mlx";;
                                                                             "\n";;

let () =
  Camlmix.line := 182;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 182 "extend-ocaml-syntax.html.mlx";;
   toc_item1 ~id:"Not_found"
  "<code>Not_found</code> is raised during the preprocessing" 
let () =
  Camlmix.line := 183;
  Camlmix.char := 65;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 183 "extend-ocaml-syntax.html.mlx";;
                                                                 "\n</div>\n\n\n";;

let () =
  Camlmix.line := 187;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 187 "extend-ocaml-syntax.html.mlx";;
   toc_entry "what" 
let () =
  Camlmix.line := 187;
  Camlmix.char := 23;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 187 "extend-ocaml-syntax.html.mlx";;
                       "\n\n<p>\nWe are talking about truly modifying the syntax of OCaml.\nYes, in theory anyone could modify the syntax of this programming\nlanguage, without rewriting a whole dedicated parser. \nCamlp5 is the tool that lets you do this. And many syntax enhancements\ncan be performed in relatively few lines of code.\n\n<p>\nHowever, there are quite a few things to know before starting to write\nyour own syntax extension which will implement exactly what you want.\nThis tutorial is meant to address the common difficulties that people\nencounter when they start using Camlp5 for this purpose. \nIt is essentially based on my \n<a href=\"micmatch.html\">recent experience</a> \nin integrating a dedicated syntax for regular\nexpressions in OCaml and mix this form of pattern matching with the\ntraditional pattern matching of OCaml.\n\n\n";;

let () =
  Camlmix.line := 208;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 208 "extend-ocaml-syntax.html.mlx";;
   toc_entry "when" 
let () =
  Camlmix.line := 208;
  Camlmix.char := 23;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 208 "extend-ocaml-syntax.html.mlx";;
                       "\n\n<p>\nCamlp5 lets you do amazing things that have no equivalent in most other\nprogramming languages.\nYou might want to define a domain-specific language (DSL) without\nwasting your time in developing one more interpreter of poor quality which is\nnot reusable at all. With Camlp5, you may create syntaxic shortcuts \nfor the most common operations that your DSL requires and at the same\ntime benefit from all the qualities of OCaml: automatic type\ninference, static typing, early detection of errors, precise location\nof mistakes in your code, most of the advantages of text-editor\nmodes for OCaml, interface with other languages, an interactive interpreter\nand of course the generation of high performance native code.\n\n<p>\nCamlp5 is an excellent solution if you want to add a syntax which is a\nshortcut for something that is obviously, mechanically expandable into\nstandard OCaml without having resort to the type information. Camlp5\nlets you work on the abstract syntax tree (AST), which does not\ncontain information on the actual type of the object being manipulated.\n\n<p>\nIf the syntax extension you want to provide requires the knowledge of\nthe type of each object, you can still design a dedicated embedded\nlanguage that will be compiled into OCaml. \nCamlp5 provides a convenient mechanism for producing OCaml\ncode, therefore compiling any given language to OCaml is an excellent\nchoice in many cases even if the parsing facilities of Camlp5 are not used.\n\n<p>\nThis tutorial is about learning how to develop your own syntax extensions\nbut you might want to have a look at existing syntax extensions that\nare available on the web. The main sources for finding \nCamlp5 extensions are: \n<a\nhref=\"http://caml.inria.fr/cgi-bin/hump.en.cgi?sort=0&amp;browse=92\">the\nCaml hump</a> on the <a href=\"http://caml.inria.fr\">official Caml site</a>, \n<a \nhref=\"http://www.npc.de/ocaml/linkdb/list.cgi?type=classification&amp;frames=false\">the\nOCaml Link Database</a> \n(under \"OCaml syntax extension\") and <a href=\"p4ck.html\">P4ck</a>.\n\n\n";;

let () =
  Camlmix.line := 252;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 252 "extend-ocaml-syntax.html.mlx";;
   toc_entry "who" 
let () =
  Camlmix.line := 252;
  Camlmix.char := 22;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 252 "extend-ocaml-syntax.html.mlx";;
                      "\n\n<p>\nIf you are interested in modifying the syntax of OCaml and you are a\nbit confused by the official tutorial and ";;

let () =
  Camlmix.line := 256;
  Camlmix.char := 45;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 256 "extend-ocaml-syntax.html.mlx";;
                                             manual () 
let () =
  Camlmix.line := 256;
  Camlmix.char := 58;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 256 "extend-ocaml-syntax.html.mlx";;
                                                          " for Camlp5, then I\nhope this document will help you get started.\n\n<p>\nIn order to start discovering Camlp5, you need to be fluent in OCaml\nsince it will be our main language (with variants) for doing everything.\nYou need to be familiar with the higher order functions (HOF) of OCaml\nsuch as <code>List.map</code>, <code>List.fold_right</code> and \n<code>List.fold_left</code> since we will use them a lot for manipulating\nsyntax trees.\nSo if you are not familiar with\nthese and functional programming in general, practice a little first.\n\n\n";;

let () =
  Camlmix.line := 270;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 270 "extend-ocaml-syntax.html.mlx";;
   toc_entry "getting-started" 
let () =
  Camlmix.line := 270;
  Camlmix.char := 34;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 270 "extend-ocaml-syntax.html.mlx";;
                                  "\n\n<p>\nYou will need a standard installation of OCaml, which should include\nthe OCaml compilers (<code>ocaml</code>, <code>ocamlc</code>, \n<code>ocamlopt</code>) and the Camlp5 system (<code>camlp5</code>,\n<code>camlp5o</code>)\n\n<p>\nAs usual for editing and testing OCaml code, you will need a good\nediting mode for OCaml in your favorite text editor,\nbut we assume you know all about this.\n\n<p>\nYou also need some way to compile automatically your code. \nI use <code>make</code> with <code>OCamlMakefile</code>.\nThe good thing about <code>make</code> is that if you don't want to be\ntoo subtle, you can just write one target and the hardcoded sequence\nof commands that recompiles everything. This might still be the best\nchoice in many cases. Anyway, don't waste your time with such things.\n\n<p>\nAll the files that are given as examples along this document can be\nbrowsed from\n";;

let () =
  Camlmix.line := 294;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 294 "extend-ocaml-syntax.html.mlx";;
   download ~path:true "http://martin.jambon.free.fr/camlp5" 
let () =
  Camlmix.line := 294;
  Camlmix.char := 64;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 294 "extend-ocaml-syntax.html.mlx";;
                                                                "\nor downloaded as a \n<a href=\"http://martin.jambon.free.fr/camlp5.tar.gz\">compressed archive</a>.\n\n";;

let () =
  Camlmix.line := 298;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 298 "extend-ocaml-syntax.html.mlx";;
   toc_entry "languages" 
let () =
  Camlmix.line := 298;
  Camlmix.char := 28;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 298 "extend-ocaml-syntax.html.mlx";;
                            "\n\n<p>\nOne of the main source of confusion for beginners is the presence of \nmultiple languages that are used for different things but which all\nlook more or less like OCaml. We will see later the details about all\nof this, but just keep in mind that we will use the following\nlanguages:\n<ul>\n<li> regular OCaml\n<li> modified OCaml using <code>EXTEND ... END</code> constructs for\ndefining syntax extensions (we use a predefined syntax extension in\norder to define our own syntax extensions)\n<li> quotations: these look like ";;

let () =
  Camlmix.line := 311;
  Camlmix.char := 36;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 311 "extend-ocaml-syntax.html.mlx";;
                                    verb "<:ident< ... >>" 
let () =
  Camlmix.line := 311;
  Camlmix.char := 62;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 311 "extend-ocaml-syntax.html.mlx";;
                                                              " or\njust ";;

let () =
  Camlmix.line := 312;
  Camlmix.char := 8;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 312 "extend-ocaml-syntax.html.mlx";;
        verb "<< ... >>" 
let () =
  Camlmix.line := 312;
  Camlmix.char := 28;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 312 "extend-ocaml-syntax.html.mlx";;
                            ". Quotations are a generic syntax extension\nwhich are supported in any OCaml code which is preprocessed by Camlp5.\nThe contents of the quotation will be expanded in place according to\n<code>ident</code> which has to be known by the preprocessor.\n<li> revised OCaml syntax. This syntax is different from the standard\nOCaml syntax. We will use it inside of quotations for building OCaml\nsyntax trees, in combination with\n<li> antiquotations which look like ";;

let () =
  Camlmix.line := 319;
  Camlmix.char := 39;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 319 "extend-ocaml-syntax.html.mlx";;
                                       verb "$this$" 
let () =
  Camlmix.line := 319;
  Camlmix.char := 56;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 319 "extend-ocaml-syntax.html.mlx";;
                                                        " and are\narbitrary OCaml code written in the regular syntax which lets you\ninsert automatically generated nodes into the syntax tree being\ndefined by the current quotation.\n</ul>\n\n<p>\nNow that you are completely confused, you understand why some Camlp5\nsyntax extensions that may seem natural, simple and readable may be\nvery discouraging when you are a beginner who is trying to use\nexisting code as a template.\n\n\n";;

let () =
  Camlmix.line := 332;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 332 "extend-ocaml-syntax.html.mlx";;
   toc_entry "machinery" 
let () =
  Camlmix.line := 332;
  Camlmix.char := 28;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 332 "extend-ocaml-syntax.html.mlx";;
                            "\n\n<p>\nWe have two kinds of files: those which define a syntax or  \nmodify an existing syntax, and the files that are written in this syntax.\n<p>\n";;

let () =
  Camlmix.line := 338;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 338 "extend-ocaml-syntax.html.mlx";;
   warning 
"the syntax of a file is never defined within the file itself, 
but in a separate file" 
let () =
  Camlmix.line := 340;
  Camlmix.char := 27;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 340 "extend-ocaml-syntax.html.mlx";;
                           "\n\n<p>\nAn OCaml file written in the standard syntax does not need to be\npreprocessed. It is directly compiled into bytecode or native code by\none of the OCaml compilers (<code>ocamlc</code>,\n<code>ocamlopt</code> or <code>ocaml</code>).\n<p>\nExtending the syntax of OCaml simply means that we will use a modified\nsyntax for writing our programs and this non-standard syntax is not\nunderstood by the OCaml compilers.\nTherefore our programs need to be <b>preprocessed</b> by a converter\nfrom our exotic syntax into plain old OCaml.\nCamlp5 provides us with tools for writing <b>our specific preprocessor</b>.\n\n<p>\nThe command-line tool which will serve as a base for building our\nspecific preprocessor is <code>camlp5</code>. <code>camlp5</code>\nalone does nothing very interesting for us: we need to feed it with\nour definition of how to convert our syntax into regular OCaml.\nThis is done by passing object files (<code>.cmo</code>) \nto <code>camlp5</code>.\nAs a convention, we will name these files according to their role:\n<ul>\n<li> <code>pa_</code> (as in <b>pa</b>rsing) \nis used as a prefix for the files that define or modify a grammar,\ni.e. how the input file should be converted into an <b>abstract syntax\ntree (AST)</b>\n<li> <code>q_</code> (as in <b>q</b>uotation) \nis used as a prefix for the files that define how to expand the\ncontents of quotations. Quotations are single, predefined tokens in the OCaml\nsyntax but are meant to be expanded into some normal OCaml expression\nor pattern using arbitrary lexing and parsing rules. \nThese files are not named with the <code>pa_</code>\nprefix since technically they do not add rules in the general grammar\nthat we may extend.\n<li> <code>pr_</code> (as in <b>pr</b>inting) \nis used as a prefix for the files that define how to export the\nAST.\n</ul>\n\n<p>\nCamlp5 provides a file named <code>pa_o.cmo</code> which parses the\nstandard syntax of OCaml (with only one addition, the quotations: see\nlater). It provides a file named <code>pr_o.cmo</code> which converts\nan OCaml AST into the concrete syntax of OCaml, i.e. a valid source file\nfor the OCaml compilers.\nThus the command <code>camlp5 pa_o.cmo pr_o.cmo</code> should read a\nstandard OCaml source file and reprint an equivalent program\nfrom the point of view of the compilers:\n";;

let () =
  Camlmix.line := 390;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 390 "extend-ocaml-syntax.html.mlx";;
   print_with verbatim 
let () =
  Camlmix.line := 390;
  Camlmix.char := 26;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 390 "extend-ocaml-syntax.html.mlx";;
                          "\n$ cat hello.ml\nprint_endline \"Hello World!\";;\n$ camlp5 pa_o.cmo pr_o.cmo hello.ml\nlet _ = print_endline \"Hello World!\"\n";;

let () =
  Camlmix.line := 395;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 395 "extend-ocaml-syntax.html.mlx";;
   () 
let () =
  Camlmix.line := 395;
  Camlmix.char := 9;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 395 "extend-ocaml-syntax.html.mlx";;
         "\n\n<p>\nAnother useful printing file is <code>pr_dump.cmo</code>. If you try\nit instead of <code>pr_o.cmo</code>, you will get an unreadable\noutput. This is a binary representation of the AST which can be read\nback efficiently by the OCaml compilers and more importantly without\nlosing trace of the location of the original tokens in the source\nfile. We will therefore reserve the usage of <code>pr_o.cmo</code>\nfor reviewing the generated OCaml code but not compile it further.\n<code>camlp5o</code> is a predefined shortcut for \n<code>camlp5 pa_o.cmo pa_op.cmo pr_dump.cmo</code>: it parses the\nregular syntax of OCaml and outputs a compiler-friendly representation \nof the AST. The additional file <code>pa_op.cmo</code> is a predefined\n<b>syntax extension</b> of OCaml. It actually implements an\nexperimental syntax for streams and parsers which was used in earlier\nversions of OCaml.\nThe interesting thing to notice here is that we load two files\nstarting with <code>pa_</code>: <code>pa_o.cmo</code> defines the\ngrammar of OCaml from scratch while <code>pa_op.cmo</code> only adds\nsyntax rules to this grammar. This is really a syntax extension: we\nload different files which will successively create and modify the\nconcrete syntax that is understood by the preprocessor.\n\n<p>\nSince we are interesting in parsing a syntax which is a modified OCaml\nand converting it into an OCaml AST, we will always use\n<code>camlp5o</code>, and tell it to load our <code>pa_*.cmo</code> files.\n\n<p>\n";;

let () =
  Camlmix.line := 425;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 425 "extend-ocaml-syntax.html.mlx";;
   print_with warning 
let () =
  Camlmix.line := 425;
  Camlmix.char := 25;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 425 "extend-ocaml-syntax.html.mlx";;
                         "\ndon't get confused: \nthe files that define syntax extensions use themselves a\nmodified syntax of OCaml and therefore have to be preprocessed with\n<code>camlp5o</code> loaded with the adequate files \n(usually <code>pa_extend.cmo</code> and <code>q_MLast.cmo</code>)\n";;

let () =
  Camlmix.line := 431;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 431 "extend-ocaml-syntax.html.mlx";;
   () 
let () =
  Camlmix.line := 431;
  Camlmix.char := 9;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 431 "extend-ocaml-syntax.html.mlx";;
         "\n\n<p>\nThe most important point to remember for now is that the center of\neverything is the abstract syntax tree. The type of the nodes of this tree\nis fixed and is the only one which can be understood by the OCaml\ncompilers.\n\n<p>\nThe next step is to see how to add new syntaxic constructs to the\ngrammar of OCaml and how to expand them into the intended AST.\n\n\n";;

let () =
  Camlmix.line := 444;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 444 "extend-ocaml-syntax.html.mlx";;
   toc_entry "dissection" 
let () =
  Camlmix.line := 444;
  Camlmix.char := 29;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 444 "extend-ocaml-syntax.html.mlx";;
                             "\n\n<p>\nFor testing our example, we are going to use a\nMakefile which is merely a\nsequence of commands. We are going to write two programs: \n<code>pa_tryfinally.ml</code> defines our syntax extension\nand <code>prog.ml</code> is a simple test program.\nHere is the ";;

let () =
  Camlmix.line := 452;
  Camlmix.char := 15;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 452 "extend-ocaml-syntax.html.mlx";;
               download "camlp5/tryfinally/Makefile" 
let () =
  Camlmix.line := 452;
  Camlmix.char := 56;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 452 "extend-ocaml-syntax.html.mlx";;
                                                        ":\n";;

let () =
  Camlmix.line := 453;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 453 "extend-ocaml-syntax.html.mlx";;
   html_verbatim "camlp5/tryfinally/Makefile" 
let () =
  Camlmix.line := 453;
  Camlmix.char := 49;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 453 "extend-ocaml-syntax.html.mlx";;
                                                 "\n\n<p>\nWe want to add a <code>try ... finally</code> construct which behavior is \nillustrated by this example:\n";;

let () =
  Camlmix.line := 458;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 458 "extend-ocaml-syntax.html.mlx";;
   print_with (bg_ocaml ~file:"camlp5/tryfinally/prog.ml" ~html:true) 

let () =
  Camlmix.line := 459;
  Camlmix.char := 1;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 459 "extend-ocaml-syntax.html.mlx";;
 "let _ =\n  @yellow@try@@\n    @silver@failwith \"this is not an error\"@@\n  @yellow@finally@@\n    @silver@print_endline \"OK\"@@\n";;

let () =
  Camlmix.line := 464;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 464 "extend-ocaml-syntax.html.mlx";;
   () 
let () =
  Camlmix.line := 464;
  Camlmix.char := 9;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 464 "extend-ocaml-syntax.html.mlx";;
         "\n<p>\nshould be converted into the following program written in the \nstandard syntax of OCaml:\n";;

let () =
  Camlmix.line := 468;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 468 "extend-ocaml-syntax.html.mlx";;
   print_with (bg_ocaml ~file:"camlp5/tryfinally/expected.ml") 

let () =
  Camlmix.line := 469;
  Camlmix.char := 1;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 469 "extend-ocaml-syntax.html.mlx";;
 "let _ =\n  let @pink@__finally1@@ =\n    try\n      @silver@failwith \"this is not an error\"@@;\n      None\n    with @pink@exn@@ ->\n      Some exn in\n  @silver@print_endline \"OK\"@@;\n  match __finally1 with\n      None -> ()\n    | Some @pink@exn@@ -> raise exn\n";;

let () =
  Camlmix.line := 480;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 480 "extend-ocaml-syntax.html.mlx";;
   () 
let () =
  Camlmix.line := 480;
  Camlmix.char := 9;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 480 "extend-ocaml-syntax.html.mlx";;
         "\n<p>\nThis new syntaxic construct is formed by two <b>keywords</b> (yellow regions)\nand two <b>expressions</b> (grey regions): \n<code>try</code> is already a keyword in OCaml\nand <code>finally</code> is a new keyword. \nThe two expressions are conserved during the conversion to standard OCaml and \nsome auxilliary code is added around in order to achieve the desired\neffect. The desired effect consists in evaluating an expression e1 first,\nand then evaluate an expression e2 later, even if the evaluation\nof e1 raised an exception in which case this exception is re-raised after\nthe evaluation of e2.\n\n<p>\nIn real programs it is often useful for closing\nan open file at the end of its manipulation even if an error occured. Please\nnote that a <a href=\"ocaml.html\">more useful version of \nthis syntax extension</a> exists, but it's not the point here.\n\n<p>\nDuring the transformation of our program, \nwe introduced new identifiers at three different\nplaces (pink). One of them, <code>__finally1</code> must have a name\nthat is unlikely to interfere with existing names. We had to decide that \nidentifiers starting with <code>__finally</code> are reserved for the syntax\nexpander and should not be used directly. The two other identifiers\nare named <code>exn</code> at two different places and are not visible\nin the user-defined code (grey). Therefore it is perfectly safe to use\ncanonical names such as <code>exn</code>, <code>x</code>, <code>s</code> or\nwhatever we like.\n\n<p>\nNow we will see how to implement this transformation.\nHere is a solution:\n";;

let () =
  Camlmix.line := 514;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 514 "extend-ocaml-syntax.html.mlx";;
   print_with 
    (bg_ocaml ~file:"camlp5/tryfinally/pa_tryfinally.ml" ~html:true) 

let () =
  Camlmix.line := 516;
  Camlmix.char := 1;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 516 "extend-ocaml-syntax.html.mlx";;
 "(* The function that returns unique identifiers *)\nlet new_id = \n  let counter = ref 0 in\n  fun () ->\n    incr counter;\n    \"__finally\" ^ string_of_int !counter\n\n(* The function that converts our syntax into a single OCaml expression,\n   i.e. an \"expr\" node of the syntax tree *)\nlet expand loc e1 e2 =\n  let id = new_id () in\n  let id_patt = @silver@<:patt< $lid:id$ >>@@ in\n  let id_expr = @silver@<:expr< $lid:id$ >>@@ in\n  @silver@<:expr<\n  let $id_patt$ =\n    try do { $e1$; None } \n    with [ exn -> Some exn ] in\n  do { $e2$;\n       match $id_expr$ with\n\t   [ None -> ()\n\t   | Some exn -> raise exn ] }\n  >>@@\n\n(* The statement that extends the default grammar, \n   i.e. the regular syntax of OCaml if we use camlp5o \n   or the revised syntax if we use camlp5r *)\n@pink@EXTEND\n  Pcaml.expr: LEVEL \"expr1\" [\n    [ \"try\"; e1 = Pcaml.expr; \"finally\"; e2 = Pcaml.expr -> expand loc e1 e2 ]\n  ];\nEND@@;;\n";;

let () =
  Camlmix.line := 547;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 547 "extend-ocaml-syntax.html.mlx";;
   () 
let () =
  Camlmix.line := 547;
  Camlmix.char := 9;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 547 "extend-ocaml-syntax.html.mlx";;
         "\n";;

let () =
  Camlmix.line := 548;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 548 "extend-ocaml-syntax.html.mlx";;
   (* Now that the sources have been updated, let's compile and run *)
command "cd camlp5/tryfinally && make 1>&2"

let () =
  Camlmix.line := 550;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 550 "extend-ocaml-syntax.html.mlx";;
   "\n\n<p>\nThis program is written with a strange syntax: it uses\nthree <b>quotations</b> (grey areas) which start with something of the form\n";;

let () =
  Camlmix.line := 555;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 555 "extend-ocaml-syntax.html.mlx";;
   verb "<:name<" 
let () =
  Camlmix.line := 555;
  Camlmix.char := 21;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 555 "extend-ocaml-syntax.html.mlx";;
                     " where <code>name</code>\nis the name of a predefined <b>quotation expander</b>\nand are terminated by ";;

let () =
  Camlmix.line := 557;
  Camlmix.char := 25;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 557 "extend-ocaml-syntax.html.mlx";;
                         verb ">>" 
let () =
  Camlmix.line := 557;
  Camlmix.char := 38;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 557 "extend-ocaml-syntax.html.mlx";;
                                      ".\nHere we use two different quotation expanders: <code>expr</code> \nand <code>patt</code>. These quotation expanders are loaded from the file\n<code>q_MLast.cmo</code> (<code>q_</code> means quotations, \nand the rest means ML AST = OCaml abstract syntax tree).\nThe contents of these quotations looks very much like OCaml code but not\nexactly: \nit is actually expanded into a representation of the AST using\nconcrete types. Have a look at the program \nafter preprocessing, ";;

let () =
  Camlmix.line := 566;
  Camlmix.char := 24;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 566 "extend-ocaml-syntax.html.mlx";;
                        download "camlp5/tryfinally/pa_tryfinally.ppo" 
let () =
  Camlmix.line := 566;
  Camlmix.char := 74;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 566 "extend-ocaml-syntax.html.mlx";;
                                                                          ",\nin order to see the effect of the quotation expanders.\n\n<p>\n";;

let () =
  Camlmix.line := 570;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 570 "extend-ocaml-syntax.html.mlx";;
   warning "The quotations which serve as shortcuts for building
nodes of the OCaml AST do not use the usual syntax
of OCaml, but must be written in the <b>revised syntax</b>. Unfortunately 
you will have to learn this new syntax. One way is
to read the reference manual of Camlp5. Another way is to convert
your own programs to this syntax with <code>camlp5o pr_r.cmo</code>
and compare the output with the input." 
let () =
  Camlmix.line := 576;
  Camlmix.char := 43;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 576 "extend-ocaml-syntax.html.mlx";;
                                           " \n\n<p>\n";;

let () =
  Camlmix.line := 579;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 579 "extend-ocaml-syntax.html.mlx";;
   warning "The contents of these quotations are written in 
the revised syntax of OCaml, at the exception of 
the pieces which appear between
dollars (<code>$...$</code>). They are called <b>antiquotations</b>
and are way to insert nodes of the syntax tree which have been 
defined previously." 
let () =
  Camlmix.line := 584;
  Camlmix.char := 24;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 584 "extend-ocaml-syntax.html.mlx";;
                        "\n\n<p>\nIn the example, <code>id_patt</code> and <code>id_expr</code> are \ntwo simple nodes of the AST which are respectively of the types\n<code>MLast.patt</code> and <code>MLast.expr</code>. They both stand\nfor a lowercase identifier, but once in a <b>pattern</b> and once in \na <b>expression</b>. We just said that antiquotations are a pair of dollars\ncontaining an OCaml expression which stands for a predefined node of the\nAST. Actually, in addition we can use labels such as <code>lid:</code> in this\nportion of our example:\n";;

let () =
  Camlmix.line := 595;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 595 "extend-ocaml-syntax.html.mlx";;
   print_with bg_ocaml 

let () =
  Camlmix.line := 596;
  Camlmix.char := 1;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 596 "extend-ocaml-syntax.html.mlx";;
 "let id_patt = <:patt< $lid:id$ >> in\n...\n";;

let () =
  Camlmix.line := 598;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 598 "extend-ocaml-syntax.html.mlx";;
   () 
let () =
  Camlmix.line := 598;
  Camlmix.char := 9;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 598 "extend-ocaml-syntax.html.mlx";;
         "\n<p>\nIt means that the actual contents of the antiquotation (yellow) \nis a string which represents a lowercase identifier (lid).\nHere <code>id</code> has to represent a valid lowercase identifier, which \nis the case (<code>id = \"__finally1\"</code>).\nUsing labels in antiquotation is required to convert one basic type\nto a node of the syntax tree. It is also important for disambiguation\nsince a string can represent a lowercase identifier, but also an\nan uppercase identifier, an escaped string literal or an escaped\ncharacter literal. They all have a corresponding label (see the reference \n";;

let () =
  Camlmix.line := 609;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 609 "extend-ocaml-syntax.html.mlx";;
   manual () 
let () =
  Camlmix.line := 609;
  Camlmix.char := 16;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 609 "extend-ocaml-syntax.html.mlx";;
                " for details).\n\n<p>\nAn important feature is to keep track in the AST of the location of\nthe original source code. Therefore, a <b>location</b> is associated\nto each node of the AST. When manipulating the AST with quotations,\nthe quotation expander use a predefined name for the locations.\nThis name is by default <code>loc</code> in the versions of Camlp5 up to\n3.08.2 and <code>_loc</code> in the following versions. The best way\nto avoid trouble is to pass the <code>-loc loc</code> option\nto <code>camlp5o</code> and use <code>loc</code>. So a location\nmust be available under the name <code>loc</code> when building\nthe AST with quotations. In return, when destructuring the AST\nwith pattern-matching using quotations, a variable named <code>loc</code>\nis automatically defined. The same thing happens in grammar rules\nof <code>EXTEND</code> statements, which explains the availability \nof a <code>loc</code> object which seems\nto come from nowhere in our <code>EXTEND</code> statement.\n\n<p>\nNow you should really take the time to understand completely the system\nof quotations. You must realize that they are used for building\nnodes of the AST which types are defined in the <code>MLast</code>\nmodule of the Camlp5 library. \nThese quotations can also be used in pattern matching if you need\nto extract some information for an existing AST or if you want\nto substitute it.\n\n<p>\nLet's now have a look at the <code>EXTEND</code> statement.\nWhat we extend is the default grammar.\nThe default grammar has been set by <code>pa_o.cmo</code> which\nis implicitely loaded by <code>camlp5o</code>. This is the\ngrammar of the regular syntax of OCaml.\nWe will not extend the set of possible <b>tokens</b> or how they\nare recognized, but only their meaning according to their sequential \narrangement.\nAn <code>EXTEND</code> statement \ncontains a list of <b>grammar entries</b> that will be extended.\nEach grammar entry consists in a collection of <b>rules</b>.\nThe entries can be predefined or newly defined.\nThey can be made visible and therefore extensible by other syntax extensions\nor not. Here we just extend the <code>Pcaml.expr</code> entry\nwhich defines the syntax of an OCaml expression as its name indicates.\nA rule within a given entry\nis made of a <b>pattern</b> (yellow block) which is \nassociated with an OCaml expression which defines a syntax node (grey block):\n";;

let () =
  Camlmix.line := 656;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 656 "extend-ocaml-syntax.html.mlx";;
   print_with bg_ocaml 

let () =
  Camlmix.line := 657;
  Camlmix.char := 1;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 657 "extend-ocaml-syntax.html.mlx";;
 "EXTEND\n  Pcaml.expr: @pink@LEVEL \"expr1\"@@ [\n    [ @yellow@\"try\"; e1 = Pcaml.expr; \"finally\"; e2 = Pcaml.expr@@ -> @silver@expand loc e1 e2@@ ]\n  ];\nEND;;\n";;

let () =
  Camlmix.line := 662;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 662 "extend-ocaml-syntax.html.mlx";;
   () 
let () =
  Camlmix.line := 662;
  Camlmix.char := 9;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 662 "extend-ocaml-syntax.html.mlx";;
         "\n<p>\nThe patterns are matched according to <b>precedence levels</b>.\nHere we know that a level named <code>expr1</code> exists, and we\nknow its meaning and relative priority with respect to existing\nsyntaxic constructs. \nWe know this from the file\npa_o.ml of the Camlp5 library.\nSo we insert a rule exactly in this level, no new level is created which would\nbe the case if we wouldn't have used a <code>LEVEL</code> annotation.\n\n\n<p>\nThe rest is self explanatory: \n<code>try</code> and <code>finally</code> are implicitely made\nreserved keywords of the language if not already, and\nwe extract <code>e1</code> and <code>e2</code>\nwhich are two expression nodes (<code>Pcaml.expr</code> is a grammar entry\nwhich returns objects of type <code>MLast.expr</code>).\nOur new rule itself must return a node of type <code>MLast.expr</code>.\nThis is the role of our <code>expand</code> function.\n\n<p>\nAfter compilation of the syntax extension, we use it to rewrite\nour program in the regular OCaml syntax:\n";;

let () =
  Camlmix.line := 687;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 687 "extend-ocaml-syntax.html.mlx";;
   ocaml_file "camlp5/tryfinally/prog.ppo" 
let () =
  Camlmix.line := 687;
  Camlmix.char := 46;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 687 "extend-ocaml-syntax.html.mlx";;
                                              "\nand in the revised syntax, which is closer to what we wrote\nin the quotations of our file <code>pa_tryfinally.ml</code>:\n";;

let () =
  Camlmix.line := 690;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 690 "extend-ocaml-syntax.html.mlx";;
   ocaml_file "camlp5/tryfinally/prog.ppr" 
let () =
  Camlmix.line := 690;
  Camlmix.char := 46;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 690 "extend-ocaml-syntax.html.mlx";;
                                              "\n\n<p>\nAnd the program <code>prog</code> runs as expected:\n<pre>\n$ ./prog\n";;

let () =
  Camlmix.line := 696;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 696 "extend-ocaml-syntax.html.mlx";;
   command ~noexit:true "camlp5/tryfinally/prog 2>&1" 
let () =
  Camlmix.line := 696;
  Camlmix.char := 57;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 696 "extend-ocaml-syntax.html.mlx";;
                                                         "</pre>\n\n\n";;

let () =
  Camlmix.line := 699;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 699 "extend-ocaml-syntax.html.mlx";;
   toc_entry "variations" 
let () =
  Camlmix.line := 699;
  Camlmix.char := 29;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 699 "extend-ocaml-syntax.html.mlx";;
                             "\n\n<p>\nWe will rearrange the source code of our <code>try ... finally</code> syntax\nextension in order to see better which element is responsible for which\neffect and learn more about Camlp5.\n\n";;

let () =
  Camlmix.line := 706;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 706 "extend-ocaml-syntax.html.mlx";;
   toc_entry "quotations" 
let () =
  Camlmix.line := 706;
  Camlmix.char := 29;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 706 "extend-ocaml-syntax.html.mlx";;
                             "\n\n<p>\nFirst, we might use only one quotation to represent the node of the\nAST which is returned by the <code>try ... finally</code> rule.\nWe are talking of the <code>expand</code> function, which was defined like \nthis:\n";;

let () =
  Camlmix.line := 713;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 713 "extend-ocaml-syntax.html.mlx";;
   print_with bg_ocaml 

let () =
  Camlmix.line := 714;
  Camlmix.char := 1;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 714 "extend-ocaml-syntax.html.mlx";;
 "let expand loc e1 e2 =\n  let id = new_id () in\n  let id_patt = <:patt< $lid:id$ >> in\n  let id_expr = <:expr< $lid:id$ >> in\n  <:expr<\n  let $id_patt$ =\n    try do { $e1$; None } \n    with [ exn -> Some exn ] in\n  do { $e2$;\n       match $id_expr$ with\n\t   [ None -> ()\n\t   | Some exn -> raise exn ] }\n  >>\n";;

let () =
  Camlmix.line := 727;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 727 "extend-ocaml-syntax.html.mlx";;
   () 
let () =
  Camlmix.line := 727;
  Camlmix.char := 9;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 727 "extend-ocaml-syntax.html.mlx";;
         "\n\n<p>\nSo, we can inline the definitions of <code>id_patt</code>\nand <code>id_expr</code>, which here simplifies our source code:\n";;

let () =
  Camlmix.line := 732;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 732 "extend-ocaml-syntax.html.mlx";;
   print_with bg_ocaml 

let () =
  Camlmix.line := 733;
  Camlmix.char := 1;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 733 "extend-ocaml-syntax.html.mlx";;
 "let expand loc e1 e2 =\n  let id = new_id () in\n  <:expr<\n  let $lid:id$ =\n    try do { $e1$; None } \n    with [ exn -> Some exn ] in\n  do { $e2$;\n       match $lid:id$ with\n\t   [ None -> ()\n\t   | Some exn -> raise exn ] }\n  >>\n";;

let () =
  Camlmix.line := 744;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 744 "extend-ocaml-syntax.html.mlx";;
   () 
let () =
  Camlmix.line := 744;
  Camlmix.char := 9;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 744 "extend-ocaml-syntax.html.mlx";;
         "\n<p>\nThe first occurrence in the quotation\nof our newly created identifier <code>id</code>\nis a pattern according to the Camlp5 terminology, \nand the second occurrence is an expression. This is inferred\nsimply by the context: <code>let <i>patt</i> =</code> in the first case\nand <code>match <i>expr</i> with</code> in the second case.\n\n<p>\nHere is some dummy OCaml code where some patterns and expressions\nhave been highlighted in yellow (patterns) and pink (expressions):\n";;

let () =
  Camlmix.line := 756;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 756 "extend-ocaml-syntax.html.mlx";;
   print_with bg_ocaml 

let () =
  Camlmix.line := 757;
  Camlmix.char := 1;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 757 "extend-ocaml-syntax.html.mlx";;
 "let @yellow@x@@ = \"abc\"\nlet @yellow@_@@ =\n  let @yellow@z2@@ =\n    @pink@let z = 5 * 3 in z * z@@ in\n  @pink@print_float@@ @pink@z2@@;\n  match x, z2, @pink@Some true@@ with\n      @yellow@\"a\", _, None@@ -> @pink@()@@\n    | @yellow@(\"abc\" | \"ab\")@@, 0, Some @yellow@false@@ -> @pink@print_endline \"something\"@@\n    | @yellow@_@@ when @pink@z < 10@@ -> ()\n    | _ -> ()\n";;

let () =
  Camlmix.line := 767;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 767 "extend-ocaml-syntax.html.mlx";;
   () 
let () =
  Camlmix.line := 767;
  Camlmix.char := 9;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 767 "extend-ocaml-syntax.html.mlx";;
         "\n\n<p>\n\"Toplevel expressions\" such as ";;

let () =
  Camlmix.line := 770;
  Camlmix.char := 34;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 770 "extend-ocaml-syntax.html.mlx";;
                                  ocamlcode "let x = 2" 
let () =
  Camlmix.line := 770;
  Camlmix.char := 59;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 770 "extend-ocaml-syntax.html.mlx";;
                                                           "\nor ";;

let () =
  Camlmix.line := 771;
  Camlmix.char := 6;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 771 "extend-ocaml-syntax.html.mlx";;
      ocamlcode "type t = A | B of string" 
let () =
  Camlmix.line := 771;
  Camlmix.char := 46;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 771 "extend-ocaml-syntax.html.mlx";;
                                              "\nare actually not expressions, but declarations\nwhich are elements of the implementation of the current module.\nIn Camlp5, these are called <code>str_item</code> (<code>str</code> reminds of\nthe <code>struct</code> keyword\nwhich introduces submodule implementations).\nThere is a quotation expander for str_items, as well as for other families\nof syntaxic elements that we did not encounter yet.\n\n\n";;

let () =
  Camlmix.line := 781;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 781 "extend-ocaml-syntax.html.mlx";;
   toc_entry "reordering" 
let () =
  Camlmix.line := 781;
  Camlmix.char := 29;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 781 "extend-ocaml-syntax.html.mlx";;
                             "\n\n<p>\nLet's now remove the uncessary identifier which has a reserved prefix.\nIt avoids the user of our syntax extension\nto remember that <code>__finally</code> is\na forbidden prefix. And there is unfortunately no way of generating\nidentifiers in a reserved Camlp5 namespace.\n<p>\nWe completely rewrite the quotation so that\nall the identifiers we introduce are not accessible by \nuser-defined expressions.\nHere is one solution:\n";;

let () =
  Camlmix.line := 794;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 794 "extend-ocaml-syntax.html.mlx";;
   print_with bg_ocaml 

let () =
  Camlmix.line := 795;
  Camlmix.char := 1;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 795 "extend-ocaml-syntax.html.mlx";;
 "let expand loc e1 e2 =\n  <:expr<\n  let f1 () = $e1$\n  and f2 () = $e2$ in\n  do { (try f1 ()\n        with exn -> do { f2 (); raise exn });\n       f2 () }\n  >>\n";;

let () =
  Camlmix.line := 803;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 803 "extend-ocaml-syntax.html.mlx";;
   () 
let () =
  Camlmix.line := 803;
  Camlmix.char := 9;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 803 "extend-ocaml-syntax.html.mlx";;
         "\n<p>\nThere are several reasons why we have to write such twisted code:\n<ul>\n<li> the closures <code>f1</code> and <code>f2</code> play their role well\nsince they both record the environment before any new binding is added\n(and they don't see each other);\n<li> we want to avoid exponential growth in size of the generated code,\nwhich could happen if we duplicate \nthe whole contents of the expression <code>e2</code>\n(<code>e2</code> itself might contain <code>try ... finally</code>\nstatements).\n</ul>\n<p>\nAnd we hope that the compiler handles the closures efficiently.\n\n<p>\nIn general, a good approach would be to implement the initial solution\nwhich is more natural,\nand choose our automatically-generated identifiers so that\nthere is no clash with the user-defined identifiers.\nThere is no simple generic solution for doing this (yet) since it \nrequires a lexical analysis of whole subtrees with a lot of different \nkind of nodes.\nWe will see an example in which we actually do something like this\n";;

let () =
  Camlmix.line := 828;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 828 "extend-ocaml-syntax.html.mlx";;
   toc_link "replacing" "later" 
let () =
  Camlmix.line := 828;
  Camlmix.char := 35;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 828 "extend-ocaml-syntax.html.mlx";;
                                   ".\n\n\n\n\n";;

let () =
  Camlmix.line := 833;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 833 "extend-ocaml-syntax.html.mlx";;
   toc_entry "more-rules" 
let () =
  Camlmix.line := 833;
  Camlmix.char := 29;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 833 "extend-ocaml-syntax.html.mlx";;
                             "\n\n<p>\nWe want to add another syntax for expressing the same as with\n<code>try ... finally</code>. We want that the following:\n";;

let () =
  Camlmix.line := 838;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 838 "extend-ocaml-syntax.html.mlx";;
   print_with bg_ocaml 

let () =
  Camlmix.line := 839;
  Camlmix.char := 1;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 839 "extend-ocaml-syntax.html.mlx";;
 "try e1 finally e2\n";;

let () =
  Camlmix.line := 840;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 840 "extend-ocaml-syntax.html.mlx";;
   () 
let () =
  Camlmix.line := 840;
  Camlmix.char := 9;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 840 "extend-ocaml-syntax.html.mlx";;
         "\n<p>\ncould as well be written as:\n";;

let () =
  Camlmix.line := 843;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 843 "extend-ocaml-syntax.html.mlx";;
   print_with bg_ocaml 

let () =
  Camlmix.line := 844;
  Camlmix.char := 1;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 844 "extend-ocaml-syntax.html.mlx";;
 "before e2 try e1\n";;

let () =
  Camlmix.line := 845;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 845 "extend-ocaml-syntax.html.mlx";;
   () 
let () =
  Camlmix.line := 845;
  Camlmix.char := 9;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 845 "extend-ocaml-syntax.html.mlx";;
         "\n\n<p>\nWe will insert a rule for this syntax in the same priority <b>level</b>\nas we did previously for <code>try ... finally</code>.\nFor now, just notice that we place a vertical bar directly between\nthe rules within in the innermost pair of square brackets which represent\nthe extension of the same level:\n";;

let () =
  Camlmix.line := 853;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 853 "extend-ocaml-syntax.html.mlx";;
   print_with bg_ocaml 

let () =
  Camlmix.line := 854;
  Camlmix.char := 1;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 854 "extend-ocaml-syntax.html.mlx";;
 "EXTEND\n  Pcaml.expr: LEVEL \"expr1\" [\n    @pink@[@@ \"try\"; e1 = Pcaml.expr; \"finally\"; e2 = Pcaml.expr -> expand loc e1 e2\n    @pink@|@@ \"before\"; e2 = Pcaml.expr; \"try\"; e1 = Pcaml.expr -> expand loc e1 e2 @pink@]@@\n  ];\nEND;;\n";;

let () =
  Camlmix.line := 860;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 860 "extend-ocaml-syntax.html.mlx";;
   () 
let () =
  Camlmix.line := 860;
  Camlmix.char := 9;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 860 "extend-ocaml-syntax.html.mlx";;
         "\n\n<p>\nUnderstanding the system of levels is the object of\n";;

let () =
  Camlmix.line := 864;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 864 "extend-ocaml-syntax.html.mlx";;
   toc_link "priorities" "a dedicated section" 
let () =
  Camlmix.line := 864;
  Camlmix.char := 50;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 864 "extend-ocaml-syntax.html.mlx";;
                                                  " of this tutorial.\n\n\n";;

let () =
  Camlmix.line := 867;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 867 "extend-ocaml-syntax.html.mlx";;
   toc_entry "replacing" 
let () =
  Camlmix.line := 867;
  Camlmix.char := 28;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 867 "extend-ocaml-syntax.html.mlx";;
                            "\n\n<p>\nUsing the <code>EXTEND</code> statement, we are able to add or replace \ngrammar rules. We have seen that a rule consists in building a syntax\nnode for the OCaml AST.\nEarlier we defined a rule like this:\n";;

let () =
  Camlmix.line := 874;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 874 "extend-ocaml-syntax.html.mlx";;
   print_with ocamlpre 
let () =
  Camlmix.line := 874;
  Camlmix.char := 26;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 874 "extend-ocaml-syntax.html.mlx";;
                          "\n   \"try\"; e1 = Pcaml.expr; \"finally\"; e2 = Pcaml.expr -> expand loc e1 e2\n";;

let () =
  Camlmix.line := 876;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 876 "extend-ocaml-syntax.html.mlx";;
   () 
let () =
  Camlmix.line := 876;
  Camlmix.char := 9;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 876 "extend-ocaml-syntax.html.mlx";;
         "\n<p>\n<code>e1</code> and <code>e2</code> are two expressions, i.e. two nodes\nof type <code>MLast.expr</code>. From these expressions, \nwe build a syntax node\nwhich is itself an expression. This is the role of our <code>expand</code>\nfunction.\n<p>\nIn that case, we don't have to transform <code>e1</code> or <code>e2</code>.\nHowever, things are not always so simple. Let's consider the following problem:\nwe want to create a syntax which has the following properties:\n<ul>\n<li> locally we can switch to a special syntax,\n<li> this special syntax is a slight modification of the OCaml syntax.\n</ul>\n<p>\nConsider the following problem: in order to make the code for numeric\ncomputations easier to read, we want to read ints as floats\nand their operators (<code>+ - * /</code>) \nas the equivalent operators over floats\n(<code>+. -. *. /.</code>). However we don't want this to be applied \neverywhere in the file, but only in expressions that are introduced\nby a new <code>FLOAT</code> keyword since it makes quasi impossible to use\nints within the new syntax:\n";;

let () =
  Camlmix.line := 900;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 900 "extend-ocaml-syntax.html.mlx";;
   print_with ocamlpre 
let () =
  Camlmix.line := 900;
  Camlmix.char := 26;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 900 "extend-ocaml-syntax.html.mlx";;
                          "\nlet x = FLOAT 3/2 - sqrt (1/3)\nlet i = 1 + 2 + 3\n";;

let () =
  Camlmix.line := 903;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 903 "extend-ocaml-syntax.html.mlx";;
   () 
let () =
  Camlmix.line := 903;
  Camlmix.char := 9;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 903 "extend-ocaml-syntax.html.mlx";;
         "\n<p>\nwould be converted into:\n";;

let () =
  Camlmix.line := 906;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 906 "extend-ocaml-syntax.html.mlx";;
   print_with ocamlpre 
let () =
  Camlmix.line := 906;
  Camlmix.char := 26;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 906 "extend-ocaml-syntax.html.mlx";;
                          "\nlet x = 3. /. 2. - sqrt (1. /. 3.)\nlet i = 1 + 2 + 3\n";;

let () =
  Camlmix.line := 909;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 909 "extend-ocaml-syntax.html.mlx";;
   () 
let () =
  Camlmix.line := 909;
  Camlmix.char := 9;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 909 "extend-ocaml-syntax.html.mlx";;
         "\n<p>\nwhich is less pleasant for the eye.\n<p>\nUsing an <code>EXTEND</code> statement, we could relatively\neasily add rules that interpret int constants as their float equivalent, \ninterpret <code>+</code> as <code>+.</code> and so on\n(if this is not obvious to you, implement it as an exercise using\nthe knowledge introduced in the previous sections and \nthe file <code>pa_o.ml</code> of the distribution).\nThis would however interpret any occurrence of <code>2</code>\nas the float <code>2.0</code> for instance, which is not satisfactory.\n<p>\nOn the other hand, we want to benefit from the full OCaml syntax\nwithin our \"<code>FLOAT</code>\" expressions (which by the way \ndo not have to be of type <code>float</code>).\n<p>\nOne solution to this problem is to define a \nquotation expander which uses a globally-modified OCaml syntax.\nIn other words, our example would look like this:\n";;

let () =
  Camlmix.line := 929;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 929 "extend-ocaml-syntax.html.mlx";;
   print_with bg_ocaml 

let () =
  Camlmix.line := 930;
  Camlmix.char := 1;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 930 "extend-ocaml-syntax.html.mlx";;
 "let x = @pink@<:float< 3/2 - sqrt (1/3) >>@@\nlet i = 1 + 2 + 3\n";;

let () =
  Camlmix.line := 932;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 932 "extend-ocaml-syntax.html.mlx";;
   () 
let () =
  Camlmix.line := 932;
  Camlmix.char := 9;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 932 "extend-ocaml-syntax.html.mlx";;
         "\n<p>\nBut this is not exactly what we want and I don't know how to do this.\nMoreover it might be not so simple since we would have to manipulate two \nvariants of OCaml grammars at the same time, not only the default one\n(maybe a look at the implementation of\n<a href=\"http://www.eleves.ens.fr/home/frisch/soft.html#HereDoc\">HereDoc</a>\ncould help).\n\n<p>\nThe solution we will adopt is extremely inelegant, but works after all\nand does not require as many efforts as it seems at first sight.\n<p>\nFor testing our syntax extension, we are going to use this\n";;

let () =
  Camlmix.line := 946;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 946 "extend-ocaml-syntax.html.mlx";;
   download "camlp5/float/Makefile" 
let () =
  Camlmix.line := 946;
  Camlmix.char := 39;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 946 "extend-ocaml-syntax.html.mlx";;
                                       ".\nWe will perform the tests over the following program:\n";;

let () =
  Camlmix.line := 948;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 948 "extend-ocaml-syntax.html.mlx";;
   print_with (bg_ocaml ~file:"camlp5/float/prog.ml" ~html:true) 

let () =
  Camlmix.line := 949;
  Camlmix.char := 1;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 949 "extend-ocaml-syntax.html.mlx";;
 "let f x =\n  FLOAT \n   let pi = acos (-1) in\n   x/(2*pi) - x**(2/3)\n\nlet _ = \n  let x = 2.5 in\n  Printf.printf \"%g -> %g\\n\" x (f x)\n";;

let () =
  Camlmix.line := 957;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 957 "extend-ocaml-syntax.html.mlx";;
   () 
let () =
  Camlmix.line := 957;
  Camlmix.char := 9;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 957 "extend-ocaml-syntax.html.mlx";;
         "\n<p>\nAnd it should be transformed into this:\n";;

let () =
  Camlmix.line := 960;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 960 "extend-ocaml-syntax.html.mlx";;
   print_with (bg_ocaml ~file:"camlp5/float/expected.ml") 

let () =
  Camlmix.line := 961;
  Camlmix.char := 1;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 961 "extend-ocaml-syntax.html.mlx";;
 "let f x =\n  let pi = acos (-1.) in\n  x /. (2. *. pi) -. x ** (2. /. 3.)\n\nlet _ = \n  let x = 2.5 in\n  Printf.printf \"%g -> %g\\n\" x (f x)\n";;

let () =
  Camlmix.line := 968;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 968 "extend-ocaml-syntax.html.mlx";;
   () 
let () =
  Camlmix.line := 968;
  Camlmix.char := 9;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 968 "extend-ocaml-syntax.html.mlx";;
         "\n\n<p>\nHere comes our syntax extension. We use predefined quotations for \nrecursively destructuring the syntax tree, as well as for reconstructing\nit. Only the yellow regions are actually specific, the rest is very repetitive\nand can be reused in other programs that need to rewrite <code>expr</code>\nnodes.\n\n";;

let () =
  Camlmix.line := 977;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 977 "extend-ocaml-syntax.html.mlx";;
   print_with (bg_ocaml ~file:"camlp5/float/pa_float.ml" ~html:true) 

let () =
  Camlmix.line := 978;
  Camlmix.char := 1;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 978 "extend-ocaml-syntax.html.mlx";;
 "(* The following function takes an expr syntax node and replaces \n   all occurrences of int constants and operators by their float equivalent.\n\n   The code is directly derived from the section on the quotations \n   for manipulating OCaml syntax trees in the reference manual.\n\n   This code can be easily reused by copy-pasting.\n*)\nlet rec subst_float expr =\n  @cyan@let loc = MLast.loc_of_expr expr in@@\n@silver@  let se = subst_float in\n  let sel = List.map subst_float in\n  let spwel = List.map (fun (p, w, e) -> (p, w, se e)) in@@\n  match expr with\n      <:expr< $e1$ . $e2$ >> ->          <:expr< $se e1$ . $se e2$ >>\n    | <:expr< $anti:e$ >> ->             <:expr< $anti:se e$ >>\n    | <:expr< $e1$ $e2$ >> ->            <:expr< $se e1$ $se e2$ >>\n    | <:expr< $e1$ .( $e2$ ) >> ->       <:expr< $se e1$ .( $se e2$ ) >>\n    | <:expr< [| $list:el$ |] >> ->      <:expr< [| $list:sel el$ |] >>\n    | <:expr< $e1$ := $e2$ >> ->         <:expr< $se e1$ := $se e2$ >>\n    | <:expr< $chr:c$ >> ->              expr\n    | <:expr< ($e$ :> $t$) >> ->         <:expr< ($se e$ :> $t$) >>\n    | <:expr< ($e$ : $t1$ :> $t2$) >> -> <:expr< ($se e$ : $t1$ :> $t2$) >>\n    | <:expr< $flo:s$ >> ->              expr\n    | <:expr< for $s$ = $e1$ $to:b$ $e2$ do { $list:el$ } >> -> \n          <:expr< for $s$ = $se e1$ $to:b$ $se e2$ do { $list:sel el$ } >>\n    | <:expr< fun [ $list:pwel$ ] >> ->  <:expr< fun [ $list:spwel pwel$ ] >>\n    | <:expr< if $e1$ then $e2$ else $e3$ >> -> \n        <:expr< if $se e1$ then $se e2$ else $se e3$ >>\n\n@yellow@    | <:expr< $int:s$ >> -> (* we change the int constants into floats *)\n        let x = string_of_float (float (int_of_string s)) in\n\t<:expr< $flo:x$ >>\n@@\n    | <:expr< ~ $i$ : $e$ >> ->          <:expr< ~ $i$ : $se e$ >>\n    | <:expr< lazy $e$ >> ->             <:expr< lazy $se e$ >>\n    | <:expr< let $opt:b$ $list:pel$ in $e$ >> -> \n        let pel' = List.map (fun (p, e) -> (p, se e)) pel in\n        <:expr< let $opt:b$ $list:pel'$ in $se e$ >>\n\n@yellow@    | <:expr< $lid:s$ >> -> (* we override the basic operators + - * / *)\n        (match s with\n\t     \"+\" | \"-\" | \"*\" | \"/\" -> <:expr< $lid: s ^ \".\"$ >>\n\t   | _ -> expr)\n@@\n    | <:expr< match $e$ with [ $list:pwel$ ] >> ->\n\t<:expr< match $se e$ with [ $list:spwel pwel$ ] >> \n    | <:expr< { $list:pel$ } >> -> \n        let pel' = List.map (fun (p, e) -> (p, se e)) pel in\n        <:expr< { $list:pel'$ } >>\n    | <:expr< do { $list:el$ } >> ->     <:expr< do { $list:sel el$ } >>\n    | <:expr< $e1$ .[ $e2$ ] >> ->       <:expr< $se e1$ .[ $se e2$ ] >>\n    | <:expr< $str:s$ >> -> expr\n    | <:expr< try $e$ with [ $list:pwel$ ] >> -> \n\t<:expr< try $e$ with [ $list:spwel pwel$ ] >>\n    | <:expr< ( $list:el$ ) >> ->        <:expr< ( $list:sel el$ ) >>\n    | <:expr< ( $e$ : $t$ ) >> ->        <:expr< ( $se e$ : $t$ ) >>\n    | <:expr< $uid:s$ >> ->              expr\n    | <:expr< while $e$ do { $list:el$ } >> -> \n        <:expr< while $se e$ do { $list:sel el$ } >>\n\n@pink@    | _ -> \n\tStdpp.raise_with_loc loc \n\t  (Failure \n\t     \"syntax not supported due to the \\\n              lack of Camlp5 documentation\")@@\n\nEXTEND\n  Pcaml.expr: LEVEL \"expr1\" [\n    [ \"FLOAT\"; e = Pcaml.expr -> subst_float e ]\n  ];\nEND;;\n";;

let () =
  Camlmix.line := 1050;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1050 "extend-ocaml-syntax.html.mlx";;
   () 
let () =
  Camlmix.line := 1050;
  Camlmix.char := 9;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1050 "extend-ocaml-syntax.html.mlx";;
         "\n\n";;

let () =
  Camlmix.line := 1052;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1052 "extend-ocaml-syntax.html.mlx";;
   (* Now that the sources have been updated, let's compile and run *)
command "cd camlp5/float && make 1>&2"

let () =
  Camlmix.line := 1054;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1054 "extend-ocaml-syntax.html.mlx";;
   "\n\n<p>\nAnd the program <code>prog</code> runs nicely:\n<pre>\n$ ./prog\n";;

let () =
  Camlmix.line := 1060;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1060 "extend-ocaml-syntax.html.mlx";;
   command "camlp5/float/prog 2>&1" 
let () =
  Camlmix.line := 1060;
  Camlmix.char := 39;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1060 "extend-ocaml-syntax.html.mlx";;
                                       "</pre>\n\n";;

let () =
  Camlmix.line := 1062;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1062 "extend-ocaml-syntax.html.mlx";;
   (* ocaml_file "camlp5/float/pa_float.ppo" *) 
let () =
  Camlmix.line := 1062;
  Camlmix.char := 51;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1062 "extend-ocaml-syntax.html.mlx";;
                                                   "\n\n<p>\nYou can check the result of the preprocessing\nof our test program \nin the standard syntax (";;

let () =
  Camlmix.line := 1067;
  Camlmix.char := 27;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1067 "extend-ocaml-syntax.html.mlx";;
                           download "camlp5/float/prog.ppo" 
let () =
  Camlmix.line := 1067;
  Camlmix.char := 63;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1067 "extend-ocaml-syntax.html.mlx";;
                                                               ")\nor in the revised syntax (";;

let () =
  Camlmix.line := 1068;
  Camlmix.char := 29;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1068 "extend-ocaml-syntax.html.mlx";;
                             download "camlp5/float/prog.ppr" 
let () =
  Camlmix.line := 1068;
  Camlmix.char := 65;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1068 "extend-ocaml-syntax.html.mlx";;
                                                                 ").\n\n<p>\nNicer solutions to this kind of problems exist in theory, such\nas generic tree-traversal functions that could be defined automatically\nfrom type definitions. But it has to be written.\n\n\n\n";;

let () =
  Camlmix.line := 1077;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1077 "extend-ocaml-syntax.html.mlx";;
   toc_entry "inserting-bof" 
let () =
  Camlmix.line := 1077;
  Camlmix.char := 32;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1077 "extend-ocaml-syntax.html.mlx";;
                                "\n\n<p>\nIt may useful to insert some <code>open</code> directives or \na few definitions that are used by our runtime system.\nOne solution consists in changing the global function which parses\nthe stream of characters and returns the list of str_items \n(<code>.ml</code> files) or sig_items (<code>.mli</code> files).\nThis parsing function can be interrupted and reloaded because of directives\nthat might modify the syntax. This is why we must check that the insertions\nof initial code is made only once.\n\n";;

let () =
  Camlmix.line := 1089;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1089 "extend-ocaml-syntax.html.mlx";;
   print_with (bg_ocaml ~file:"camlp5/bof/prog.ml" ~html:true) 

let () =
  Camlmix.line := 1090;
  Camlmix.char := 1;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1090 "extend-ocaml-syntax.html.mlx";;
 "let _ =\n  Printf.printf \"Version: %s\\n\" version\n";;

let () =
  Camlmix.line := 1092;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1092 "extend-ocaml-syntax.html.mlx";;
   () 
let () =
  Camlmix.line := 1092;
  Camlmix.char := 9;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1092 "extend-ocaml-syntax.html.mlx";;
         "\n\n";;

let () =
  Camlmix.line := 1094;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1094 "extend-ocaml-syntax.html.mlx";;
   print_with (bg_ocaml ~file:"camlp5/bof/pa_bof.ml" ~html:true) 

let () =
  Camlmix.line := 1095;
  Camlmix.char := 1;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1095 "extend-ocaml-syntax.html.mlx";;
 "let insert_this () =\n  let loc = Token.dummy_loc in\n  (<:str_item< value version = \"1.2.3\" >>, loc)\n\nlet _ =\n  let first = ref true in\n  let parse strm =\n    let (l, stopped) = Grammar.Entry.parse Pcaml.implem strm in\n    let l' = \n      if !first then\n\tinsert_this () :: l\n      else l in\n    (l', stopped) in\n  Pcaml.parse_implem := parse\n";;

let () =
  Camlmix.line := 1109;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1109 "extend-ocaml-syntax.html.mlx";;
   () 
let () =
  Camlmix.line := 1109;
  Camlmix.char := 9;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1109 "extend-ocaml-syntax.html.mlx";;
         "\n\n\n";;

let () =
  Camlmix.line := 1112;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1112 "extend-ocaml-syntax.html.mlx";;
   (* Now that the sources have been updated, let's compile and run *)
command "cd camlp5/bof && make 1>&2"

let () =
  Camlmix.line := 1114;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1114 "extend-ocaml-syntax.html.mlx";;
   "\n\n<p>\nIt seems that the pretty-printer is confused by this hack,\nand the output looks strange:\n";;

let () =
  Camlmix.line := 1119;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1119 "extend-ocaml-syntax.html.mlx";;
   ocaml_file "camlp5/bof/prog.ppo" 
let () =
  Camlmix.line := 1119;
  Camlmix.char := 39;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1119 "extend-ocaml-syntax.html.mlx";;
                                       "\n\n<p>\nNevertheless, the AST in binary format is correct since the program \nis correctly compiled and executed when <code>pr_dump.cmo</code> \nis used (always loaded implicitely by <code>camlp5o</code>) \ninstead of <code>pr_o.cmo</code>:\n<pre>\n$ ./prog\n";;

let () =
  Camlmix.line := 1128;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1128 "extend-ocaml-syntax.html.mlx";;
   command "camlp5/bof/prog 2>&1" 
let () =
  Camlmix.line := 1128;
  Camlmix.char := 37;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1128 "extend-ocaml-syntax.html.mlx";;
                                     "</pre>\n\n\n<p>\nYou can also get the ";;

let () =
  Camlmix.line := 1132;
  Camlmix.char := 24;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1132 "extend-ocaml-syntax.html.mlx";;
                        download "camlp5/bof/Makefile" 
let () =
  Camlmix.line := 1132;
  Camlmix.char := 58;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1132 "extend-ocaml-syntax.html.mlx";;
                                                          " for this example.\n\n\n\n";;

let () =
  Camlmix.line := 1136;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1136 "extend-ocaml-syntax.html.mlx";;
   toc_entry "inserting-str_items" 
let () =
  Camlmix.line := 1136;
  Camlmix.char := 38;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1136 "extend-ocaml-syntax.html.mlx";;
                                      "\n\n<p>\nIn the case of expanding the <code>str_item</code> grammar entry with \na new rule, often we want to insert several <code>str_item</code> nodes\nof the OCaml abstract syntax tree, or sometimes not at all.\nHowever, we have to return exactly one node.\n\n<p>\nIn this case, we use the <code>declare</code> ... <code>end</code>\nconstruct of the revised syntax to group an arbitrary number of\nstr_items:\n";;

let () =
  Camlmix.line := 1148;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1148 "extend-ocaml-syntax.html.mlx";;
   print_with bg_ocaml 

let () =
  Camlmix.line := 1149;
  Camlmix.char := 1;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1149 "extend-ocaml-syntax.html.mlx";;
 "<:str_item< \n  declare \n    $x$;\n    $y$;\n  end\n>>\n";;

let () =
  Camlmix.line := 1155;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1155 "extend-ocaml-syntax.html.mlx";;
   () 
let () =
  Camlmix.line := 1155;
  Camlmix.char := 9;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1155 "extend-ocaml-syntax.html.mlx";;
         "\n<p>\nOr:\n";;

let () =
  Camlmix.line := 1158;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1158 "extend-ocaml-syntax.html.mlx";;
   print_with bg_ocaml 

let () =
  Camlmix.line := 1159;
  Camlmix.char := 1;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1159 "extend-ocaml-syntax.html.mlx";;
 "<:str_item< \n  declare \n    $list: list_of_str_items$\n  end\n>>\n";;

let () =
  Camlmix.line := 1164;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1164 "extend-ocaml-syntax.html.mlx";;
   () 
let () =
  Camlmix.line := 1164;
  Camlmix.char := 9;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1164 "extend-ocaml-syntax.html.mlx";;
         "\n\n<p>\nSee the ";;

let () =
  Camlmix.line := 1167;
  Camlmix.char := 11;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1167 "extend-ocaml-syntax.html.mlx";;
           toc_link "types" "section on customized record types" 
let () =
  Camlmix.line := 1167;
  Camlmix.char := 68;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1167 "extend-ocaml-syntax.html.mlx";;
                                                                    " \nfor a meaningful example.\n\n\n";;

let () =
  Camlmix.line := 1171;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1171 "extend-ocaml-syntax.html.mlx";;
   toc_entry "inserting-just-before" 
let () =
  Camlmix.line := 1171;
  Camlmix.char := 40;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1171 "extend-ocaml-syntax.html.mlx";;
                                        "\n\n<p>\nThe problem is the following: a syntax extension\nneeds to use some data, such as a cache, that has to be used repeatedly\nbut is initialized only once. Moreover we don't want to expose\nthis definition in the module interface since it will be used\ntransparently and locally.\n\n<p>\nFor instance we can create a <code>count</code> keyword which counts\nhow many times the execution of the program goes through\nthis point, and displays the result when the program terminates:\n";;

let () =
  Camlmix.line := 1184;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1184 "extend-ocaml-syntax.html.mlx";;
   print_with bg_ocaml 

let () =
  Camlmix.line := 1185;
  Camlmix.char := 1;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1185 "extend-ocaml-syntax.html.mlx";;
 "let f l = \n  print_string \"That's a nice list of items:\\n\";\n  List.iter (fun x -> count; print_endline x) l\n";;

let () =
  Camlmix.line := 1188;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1188 "extend-ocaml-syntax.html.mlx";;
   () 
let () =
  Camlmix.line := 1188;
  Camlmix.char := 9;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1188 "extend-ocaml-syntax.html.mlx";;
         "\n<p>\nThat could expanded into something like this:\n";;

let () =
  Camlmix.line := 1191;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1191 "extend-ocaml-syntax.html.mlx";;
   print_with bg_ocaml 

let () =
  Camlmix.line := 1192;
  Camlmix.char := 1;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1192 "extend-ocaml-syntax.html.mlx";;
 "let f =\n  let __count1 = ref 0 in\n  at_exit \n    (fun () -> \n       Printf.printf \n         \"File \\\"test_count.ml\\\", line 3, characters 22-26:\\n\\\n          count = %i\\n\" \n         !__count1);\n  fun l ->\n    print_string \"That's a nice list of items:\\n\";\n    List.iter\n      (fun x ->\n\t incr __count1;\n\t print_endline x)\n      l\n";;

let () =
  Camlmix.line := 1207;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1207 "extend-ocaml-syntax.html.mlx";;
   () 
let () =
  Camlmix.line := 1207;
  Camlmix.char := 9;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1207 "extend-ocaml-syntax.html.mlx";;
         "\n\n<p>\nAlthough there is no built-in functionality for doing this,\nyou can use Yutaka Oiwa's Declare_once library which is included\nin the distribution of his\n<a href=\"http://www.oiwa.jp/~yutaka/caml/index-en.html\">regexp-pp\npackage</a>. Once compiled, the \n<code>Declare_once</code> module can be used as follows:\n";;

let () =
  Camlmix.line := 1216;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1216 "extend-ocaml-syntax.html.mlx";;
   print_with bg_ocaml 

let () =
  Camlmix.line := 1217;
  Camlmix.char := 1;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1217 "extend-ocaml-syntax.html.mlx";;
 "let create_some_ast_node some_param =\n  ...\n  let expr = ... in\n  let name_for_my_expr = ... in\n  Declare_once.declare \n    ~package:\"my_package\" \n    name_for_my_expr\n    (Declare_once.Expr expr);\n  ...\n";;

let () =
  Camlmix.line := 1226;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1226 "extend-ocaml-syntax.html.mlx";;
   () 
let () =
  Camlmix.line := 1226;
  Camlmix.char := 9;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1226 "extend-ocaml-syntax.html.mlx";;
         "\n<p>\nIt works by adding a pair (name, expr) to a list of pending declarations.\nWhen the value of the current str_item is computed, this list\nof declarations is inserted in a way which is similar to our example,\nso that these declarations are not visible in the module\ninterface but are computed only once.\n\n\n";;

let () =
  Camlmix.line := 1235;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1235 "extend-ocaml-syntax.html.mlx";;
   toc_entry "priorities" 
let () =
  Camlmix.line := 1235;
  Camlmix.char := 29;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1235 "extend-ocaml-syntax.html.mlx";;
                             "\n\n<p>\nThis section is best illustrated with the <code>pa_o.ml</code> file\nof the Camlp5 distribution. It is time for you to retrieve it \nand keep a copy somewhere, if you haven't already done so.\n<p>\nFirst, look at the <code>expr</code> entry of the grammar.\nThe first occurence of <code>expr:</code> in the file defines\nwhat is commented as the \"core expressions\". It defines\nmany rules, and these rules are grouped into different precedence \n<b>levels</b>,\nand many of them are named explicitely: \n";;

let () =
  Camlmix.line := 1248;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1248 "extend-ocaml-syntax.html.mlx";;
   ocamlcode "\"top\"" 
let () =
  Camlmix.line := 1248;
  Camlmix.char := 26;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1248 "extend-ocaml-syntax.html.mlx";;
                          ",\n";;

let () =
  Camlmix.line := 1249;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1249 "extend-ocaml-syntax.html.mlx";;
   ocamlcode "\"expr1\"" 
let () =
  Camlmix.line := 1249;
  Camlmix.char := 28;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1249 "extend-ocaml-syntax.html.mlx";;
                            ",\n";;

let () =
  Camlmix.line := 1250;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1250 "extend-ocaml-syntax.html.mlx";;
   ocamlcode "\":=\"" 
let () =
  Camlmix.line := 1250;
  Camlmix.char := 25;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1250 "extend-ocaml-syntax.html.mlx";;
                         ",\n";;

let () =
  Camlmix.line := 1251;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1251 "extend-ocaml-syntax.html.mlx";;
   ocamlcode "\"||\"" 
let () =
  Camlmix.line := 1251;
  Camlmix.char := 25;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1251 "extend-ocaml-syntax.html.mlx";;
                         ",\n";;

let () =
  Camlmix.line := 1252;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1252 "extend-ocaml-syntax.html.mlx";;
   ocamlcode "\"&&\"" 
let () =
  Camlmix.line := 1252;
  Camlmix.char := 25;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1252 "extend-ocaml-syntax.html.mlx";;
                         ",\n";;

let () =
  Camlmix.line := 1253;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1253 "extend-ocaml-syntax.html.mlx";;
   ocamlcode "\"apply\"" 
let () =
  Camlmix.line := 1253;
  Camlmix.char := 28;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1253 "extend-ocaml-syntax.html.mlx";;
                            ",\n";;

let () =
  Camlmix.line := 1254;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1254 "extend-ocaml-syntax.html.mlx";;
   ocamlcode "\"simple\"" 
let () =
  Camlmix.line := 1254;
  Camlmix.char := 29;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1254 "extend-ocaml-syntax.html.mlx";;
                             ", etc.\nLater in the <code>EXTEND</code> statement, the <code>expr</code> entry\nis extended further with other rules.\nSome of these additional rules can be inserted in already existing\nlevels. This extends the ";;

let () =
  Camlmix.line := 1258;
  Camlmix.char := 28;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1258 "extend-ocaml-syntax.html.mlx";;
                            ocamlcode "\"expr1\"" 
let () =
  Camlmix.line := 1258;
  Camlmix.char := 53;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1258 "extend-ocaml-syntax.html.mlx";;
                                                     " level \nof the <code>expr</code> entry with\nan additional rule:\n";;

let () =
  Camlmix.line := 1261;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1261 "extend-ocaml-syntax.html.mlx";;
   print_with bg_ocaml 

let () =
  Camlmix.line := 1262;
  Camlmix.char := 1;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1262 "extend-ocaml-syntax.html.mlx";;
 "  expr: LEVEL \"expr1\"\n    [ @silver@[ \"fun\"; p = labeled_patt; e = fun_def -> <:expr< fun $p$ -> $e$ >> ]@@ ]\n  ;\n";;

let () =
  Camlmix.line := 1265;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1265 "extend-ocaml-syntax.html.mlx";;
   () 
let () =
  Camlmix.line := 1265;
  Camlmix.char := 9;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1265 "extend-ocaml-syntax.html.mlx";;
         "\n<p>\nThe innermost brackets define a level or like here, an extension of \nan existing level (grey area).\nA level may contain several rules, separated by vertical bars.\nLists of levels also use the vertical bar as a separator, but\ndo not confuse them.\nPlease do not do this:\n";;

let () =
  Camlmix.line := 1273;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1273 "extend-ocaml-syntax.html.mlx";;
   print_with bg_ocaml 

let () =
  Camlmix.line := 1274;
  Camlmix.char := 1;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1274 "extend-ocaml-syntax.html.mlx";;
 "(* 2 levels, 2 rules, 1 level to extend: \n   Which level is extended?\n   Which level is inserted? Where? *)\n  @=font-style:italic@entry@@: LEVEL @=font-style:italic@\"some level\"@@\n    [ [ @=font-style:italic@some rule@@ ]\n    | [ @=font-style:italic@some other rule@@ ] ];\n";;

let () =
  Camlmix.line := 1280;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1280 "extend-ocaml-syntax.html.mlx";;
   () 
let () =
  Camlmix.line := 1280;
  Camlmix.char := 9;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1280 "extend-ocaml-syntax.html.mlx";;
         "\n<p>\nwhich is different from:\n";;

let () =
  Camlmix.line := 1283;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1283 "extend-ocaml-syntax.html.mlx";;
   print_with bg_ocaml 

let () =
  Camlmix.line := 1284;
  Camlmix.char := 1;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1284 "extend-ocaml-syntax.html.mlx";;
 "(* extending 1 level with 2 rules: this is clear *)\n  @=font-style:italic@entry@@: LEVEL @=font-style:italic@\"some level\"@@\n    [ [ @=font-style:italic@some rule@@\n      | @=font-style:italic@some other rule@@ ] ];\n";;

let () =
  Camlmix.line := 1288;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1288 "extend-ocaml-syntax.html.mlx";;
   () 
let () =
  Camlmix.line := 1288;
  Camlmix.char := 9;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1288 "extend-ocaml-syntax.html.mlx";;
         "\n\n\n<p>\nLevels have this property: when the parser is looking for \na given syntax entry, it starts at a given level (by default the first one)\nand looks for rules that can be satisfied. If no rule can be satisfied\nin the current level,\nit goes to the next level, and repeats the same process.\nThe pratical consequences are that:\n<ul>\n<li> different levels can be used to define different levels of associativity\nsuch as the addition vs. the multiplication: the level of the\naddition comes first, and the multiplication comes in the next level \n(see file <code>pa_o.ml</code>).\nViewed like this, addition has a higher priority than multiplication.\n<li> Within rules, the level where the parser must start to match a given\nentry may be specified, so that the rules contained in the preceding\nlevels of the entry are not available\n(for an example, see the ";;

let () =
  Camlmix.line := 1307;
  Camlmix.char := 28;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1307 "extend-ocaml-syntax.html.mlx";;
                            toc_link "types" 
   "definition of record types with default values" 
let () =
  Camlmix.line := 1308;
  Camlmix.char := 55;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1308 "extend-ocaml-syntax.html.mlx";;
                                                       " in this tutorial).\n</ul>\n\n<p>\nAs stated in the reference ";;

let () =
  Camlmix.line := 1312;
  Camlmix.char := 30;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1312 "extend-ocaml-syntax.html.mlx";;
                              manual () 
let () =
  Camlmix.line := 1312;
  Camlmix.char := 43;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1312 "extend-ocaml-syntax.html.mlx";;
                                           ", only the <code>LEVEL</code> instruction\ncan be used to extend an existing level. Other instructions\nthat specify where a given level must be inserted are available:\n<code>FIRST</code>, <code>LAST</code>, <code>AFTER</code> some level,\n<code>BEFORE</code> some level. These positions refer to the order\nin which they are written, which is the order in which the parser tries to\nmatch the rules.\n\n<p>\nSuggested exercise: implement and test a syntax extension which supports\na ";;

let () =
  Camlmix.line := 1322;
  Camlmix.char := 5;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1322 "extend-ocaml-syntax.html.mlx";;
     verb "where" 
let () =
  Camlmix.line := 1322;
  Camlmix.char := 21;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1322 "extend-ocaml-syntax.html.mlx";;
                     " construct. \nFor instance, ";;

let () =
  Camlmix.line := 1323;
  Camlmix.char := 17;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1323 "extend-ocaml-syntax.html.mlx";;
                 ocamlpre "a + b where a = 1 and b = 2" 
let () =
  Camlmix.line := 1323;
  Camlmix.char := 59;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1323 "extend-ocaml-syntax.html.mlx";;
                                                           " \n<p>means\n";;

let () =
  Camlmix.line := 1325;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1325 "extend-ocaml-syntax.html.mlx";;
   ocamlpre "let a = 1 and b = 2 in a + b" 
let () =
  Camlmix.line := 1325;
  Camlmix.char := 46;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1325 "extend-ocaml-syntax.html.mlx";;
                                              "\n<p>\nWe decide that\n";;

let () =
  Camlmix.line := 1328;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1328 "extend-ocaml-syntax.html.mlx";;
   ocamlpre "let a = 1 in a where a = 2" 
let () =
  Camlmix.line := 1328;
  Camlmix.char := 44;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1328 "extend-ocaml-syntax.html.mlx";;
                                            " \n<p>\nshould be read as\n";;

let () =
  Camlmix.line := 1331;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1331 "extend-ocaml-syntax.html.mlx";;
   ocamlpre "let a = 1 in (a where a = 2) (* returns 2 *)" 
let () =
  Camlmix.line := 1331;
  Camlmix.char := 62;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1331 "extend-ocaml-syntax.html.mlx";;
                                                              "\n<p>\nand not\n";;

let () =
  Camlmix.line := 1334;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1334 "extend-ocaml-syntax.html.mlx";;
   ocamlpre "(let a = 1 in a) where a = 2 (* returns 1 *)" 
let () =
  Camlmix.line := 1334;
  Camlmix.char := 62;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1334 "extend-ocaml-syntax.html.mlx";;
                                                              "\n<p>\nAlso, the ";;

let () =
  Camlmix.line := 1336;
  Camlmix.char := 13;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1336 "extend-ocaml-syntax.html.mlx";;
             verb "where" 
let () =
  Camlmix.line := 1336;
  Camlmix.char := 29;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1336 "extend-ocaml-syntax.html.mlx";;
                             " construct is right-associative:\n";;

let () =
  Camlmix.line := 1337;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1337 "extend-ocaml-syntax.html.mlx";;
   ocamlpre "x + y where x = y where y = 1" 
let () =
  Camlmix.line := 1337;
  Camlmix.char := 47;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1337 "extend-ocaml-syntax.html.mlx";;
                                               " \n<p>\nmeans\n";;

let () =
  Camlmix.line := 1340;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1340 "extend-ocaml-syntax.html.mlx";;
   ocamlpre "x + y where x = (y where y = 1) (* depends on an external y *)" 
let () =
  Camlmix.line := 1340;
  Camlmix.char := 80;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1340 "extend-ocaml-syntax.html.mlx";;
                                                                                "\n<p>\nand not \n";;

let () =
  Camlmix.line := 1343;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1343 "extend-ocaml-syntax.html.mlx";;
   ocamlpre "(x + y where x = y) where y = 1 (* returns 2 *)" 
let () =
  Camlmix.line := 1343;
  Camlmix.char := 65;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1343 "extend-ocaml-syntax.html.mlx";;
                                                                 "\nYou are encouraged to reuse the ";;

let () =
  Camlmix.line := 1344;
  Camlmix.char := 35;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1344 "extend-ocaml-syntax.html.mlx";;
                                   verb "let_binding" 
let () =
  Camlmix.line := 1344;
  Camlmix.char := 57;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1344 "extend-ocaml-syntax.html.mlx";;
                                                         " grammar entry\n(";;

let () =
  Camlmix.line := 1345;
  Camlmix.char := 4;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1345 "extend-ocaml-syntax.html.mlx";;
    ocamlcode "Pcaml.let_binding" 
let () =
  Camlmix.line := 1345;
  Camlmix.char := 37;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1345 "extend-ocaml-syntax.html.mlx";;
                                     "). Right-associativity\nmust be specified with ";;

let () =
  Camlmix.line := 1346;
  Camlmix.char := 26;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1346 "extend-ocaml-syntax.html.mlx";;
                          ocamlcode "RIGHTA" 
let () =
  Camlmix.line := 1346;
  Camlmix.char := 48;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1346 "extend-ocaml-syntax.html.mlx";;
                                                " since the default is\nleft-associativity (";;

let () =
  Camlmix.line := 1347;
  Camlmix.char := 23;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1347 "extend-ocaml-syntax.html.mlx";;
                       ocamlcode "LEFTA" 
let () =
  Camlmix.line := 1347;
  Camlmix.char := 44;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1347 "extend-ocaml-syntax.html.mlx";;
                                            "); you can find examples\nof these specifications in the ";;

let () =
  Camlmix.line := 1348;
  Camlmix.char := 34;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1348 "extend-ocaml-syntax.html.mlx";;
                                  verb "pa_o.ml" 
let () =
  Camlmix.line := 1348;
  Camlmix.char := 52;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1348 "extend-ocaml-syntax.html.mlx";;
                                                    " file.\nAfter completion of this exercise, you should be able to:\n<ul>\n<li> extend a grammar entry with new syntax rules;\n<li> give these rules the correct associativity, before even testing.\n</ul>\n\n\n";;

let () =
  Camlmix.line := 1356;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1356 "extend-ocaml-syntax.html.mlx";;
   toc_entry "custom_parsers" 
let () =
  Camlmix.line := 1356;
  Camlmix.char := 33;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1356 "extend-ocaml-syntax.html.mlx";;
                                 "\n\n<p>\nThis section gives hints on how to parse some blocks using a custom parser.\nWe will not give too much detail here, since the recommended way of\ndoing this is by using ";;

let () =
  Camlmix.line := 1361;
  Camlmix.char := 26;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1361 "extend-ocaml-syntax.html.mlx";;
                          toc_link "inserting-anywhere" "quotations" 
let () =
  Camlmix.line := 1361;
  Camlmix.char := 72;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1361 "extend-ocaml-syntax.html.mlx";;
                                                                        ".\nMake sure you understand the rest of this document before reading this.\n\n";;

let () =
  Camlmix.line := 1364;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1364 "extend-ocaml-syntax.html.mlx";;
   toc_entry "parse_string" 
let () =
  Camlmix.line := 1364;
  Camlmix.char := 31;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1364 "extend-ocaml-syntax.html.mlx";;
                               "\n\n\n<p>\nWhen the language extension that must be parsed locally cannot be\nparsed using the Camlp5 grammar system, we would normally use \n";;

let () =
  Camlmix.line := 1370;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1370 "extend-ocaml-syntax.html.mlx";;
   toc_link "inserting-anywhere" "quotations" 
let () =
  Camlmix.line := 1370;
  Camlmix.char := 49;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1370 "extend-ocaml-syntax.html.mlx";;
                                                 ".\nConsider the following example where a graph is represented using ASCII art:\n";;

let () =
  Camlmix.line := 1372;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1372 "extend-ocaml-syntax.html.mlx";;
   print_with verbatim 
let () =
  Camlmix.line := 1372;
  Camlmix.char := 26;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1372 "extend-ocaml-syntax.html.mlx";;
                          "\n\"Node 1\"---B---D\n   |        \\ /\n   +---------C\n";;

let () =
  Camlmix.line := 1376;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1376 "extend-ocaml-syntax.html.mlx";;
   () 
let () =
  Camlmix.line := 1376;
  Camlmix.char := 9;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1376 "extend-ocaml-syntax.html.mlx";;
         "\n<p>\nThe graph should be expanded into the following type definitions:\n";;

let () =
  Camlmix.line := 1379;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1379 "extend-ocaml-syntax.html.mlx";;
   print_with bg_ocaml 

let () =
  Camlmix.line := 1380;
  Camlmix.char := 1;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1380 "extend-ocaml-syntax.html.mlx";;
 "type node_1 = [ `B of b | `C of c ]\nand b = [ `Node_1 of node_1 | `C of c | `D of d ]\nand c = [ `Node_1 of node_1 | `B of b | `D of d ]\nand d = [ `B of b | `C of c ]\n";;

let () =
  Camlmix.line := 1384;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1384 "extend-ocaml-syntax.html.mlx";;
   () 
let () =
  Camlmix.line := 1384;
  Camlmix.char := 9;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1384 "extend-ocaml-syntax.html.mlx";;
         "\n<p>\nActually, this graph should be included in an OCaml program, so we would \ncreate a quotation expander named ";;

let () =
  Camlmix.line := 1387;
  Camlmix.char := 37;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1387 "extend-ocaml-syntax.html.mlx";;
                                     verb "graph" 
let () =
  Camlmix.line := 1387;
  Camlmix.char := 53;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1387 "extend-ocaml-syntax.html.mlx";;
                                                     ", and our piece of program\nshould be written like this:\n";;

let () =
  Camlmix.line := 1389;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1389 "extend-ocaml-syntax.html.mlx";;
   print_with verbatim 
let () =
  Camlmix.line := 1389;
  Camlmix.char := 26;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1389 "extend-ocaml-syntax.html.mlx";;
                          "\n<:graph<\n\"Node 1\"---B---D\n   |        \\ /\n   +---------C\n>>\n";;

let () =
  Camlmix.line := 1395;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1395 "extend-ocaml-syntax.html.mlx";;
   () 
let () =
  Camlmix.line := 1395;
  Camlmix.char := 9;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1395 "extend-ocaml-syntax.html.mlx";;
         "\n<p>\nHowever, one limitation of quotations is that they must be expanded into either\nan ";;

let () =
  Camlmix.line := 1398;
  Camlmix.char := 6;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1398 "extend-ocaml-syntax.html.mlx";;
      verb "expr" 
let () =
  Camlmix.line := 1398;
  Camlmix.char := 21;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1398 "extend-ocaml-syntax.html.mlx";;
                     " or a ";;

let () =
  Camlmix.line := 1398;
  Camlmix.char := 29;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1398 "extend-ocaml-syntax.html.mlx";;
                             verb "patt" 
let () =
  Camlmix.line := 1398;
  Camlmix.char := 44;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1398 "extend-ocaml-syntax.html.mlx";;
                                            ", but not into a type definition,\nwhich is a ";;

let () =
  Camlmix.line := 1399;
  Camlmix.char := 14;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1399 "extend-ocaml-syntax.html.mlx";;
              verb "str_item" 
let () =
  Camlmix.line := 1399;
  Camlmix.char := 33;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1399 "extend-ocaml-syntax.html.mlx";;
                                 ". So this will not be accepted as-is\nby the parser.\n<p>\nSolution 1: instead of using of quotation, just create a \n";;

let () =
  Camlmix.line := 1403;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1403 "extend-ocaml-syntax.html.mlx";;
   ocamlcode "GRAPH" 
let () =
  Camlmix.line := 1403;
  Camlmix.char := 24;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1403 "extend-ocaml-syntax.html.mlx";;
                        " keyword which\nwill be followed by a string literal. This can be expanded into a \n";;

let () =
  Camlmix.line := 1405;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1405 "extend-ocaml-syntax.html.mlx";;
   verb "str_item" 
let () =
  Camlmix.line := 1405;
  Camlmix.char := 22;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1405 "extend-ocaml-syntax.html.mlx";;
                      " without specific difficulties, given a function\nwhich will parse the string. The problem here is that double-quotes \nmust be protected by backslashes, which may be inconvenient.\nThe program would look like this, which is now totally unreadable\nunless we don't use double-quoted labels:\n";;

let () =
  Camlmix.line := 1410;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1410 "extend-ocaml-syntax.html.mlx";;
   print_with bg_ocaml 

let () =
  Camlmix.line := 1411;
  Camlmix.char := 1;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1411 "extend-ocaml-syntax.html.mlx";;
 "GRAPH \"\n\\\"Node 1\\\"---B---D\n   |        \\ /\n   +---------C\n\"\n";;

let () =
  Camlmix.line := 1416;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1416 "extend-ocaml-syntax.html.mlx";;
   () 
let () =
  Camlmix.line := 1416;
  Camlmix.char := 9;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1416 "extend-ocaml-syntax.html.mlx";;
         "\n<p>\nSolution 2: same as solution 1, but in addition we define a quotation\nexpander named ";;

let () =
  Camlmix.line := 1419;
  Camlmix.char := 18;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1419 "extend-ocaml-syntax.html.mlx";;
                  verb "string" 
let () =
  Camlmix.line := 1419;
  Camlmix.char := 35;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1419 "extend-ocaml-syntax.html.mlx";;
                                   " which just lets us write a string\nliteral using the quotation syntax. In this case, \nonly the ";;

let () =
  Camlmix.line := 1421;
  Camlmix.char := 12;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1421 "extend-ocaml-syntax.html.mlx";;
            verb ">>" 
let () =
  Camlmix.line := 1421;
  Camlmix.char := 25;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1421 "extend-ocaml-syntax.html.mlx";;
                         " sequences\nwould have to be protected by backslashes.\nThe example becomes:\n";;

let () =
  Camlmix.line := 1424;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1424 "extend-ocaml-syntax.html.mlx";;
   print_with bg_ocaml 

let () =
  Camlmix.line := 1425;
  Camlmix.char := 1;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1425 "extend-ocaml-syntax.html.mlx";;
 "GRAPH <:string<\n\"Node 1\"---B---D\n   |        \\ /\n   +---------C\n>>\n";;

let () =
  Camlmix.line := 1430;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1430 "extend-ocaml-syntax.html.mlx";;
   () 
let () =
  Camlmix.line := 1430;
  Camlmix.char := 9;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1430 "extend-ocaml-syntax.html.mlx";;
         "\n\n\n\n";;

let () =
  Camlmix.line := 1434;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1434 "extend-ocaml-syntax.html.mlx";;
   toc_entry "parse_token_stream" 
let () =
  Camlmix.line := 1434;
  Camlmix.char := 37;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1434 "extend-ocaml-syntax.html.mlx";;
                                     "\n\n<p>\nNow, if the token stream returned by the lexer is satisfying, but your grammar\nrequires to first scan the stream without consuming it, you can do it.\nYou can actually hook any external parser at this point. It will operate\non the token stream, with its limitations (whitespace is discarded, tokens\nmay not be recognized the way you want in your sublanguage, ...).\n\n\n\n";;

let () =
  Camlmix.line := 1445;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1445 "extend-ocaml-syntax.html.mlx";;
   toc_entry "error_location" 
let () =
  Camlmix.line := 1445;
  Camlmix.char := 33;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1445 "extend-ocaml-syntax.html.mlx";;
                                 "\n\n<p>\nThe easiest way of generating error messages that indicate a location\nin the source file is the following:\n";;

let () =
  Camlmix.line := 1450;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1450 "extend-ocaml-syntax.html.mlx";;
   print_with bg_ocaml 

let () =
  Camlmix.line := 1451;
  Camlmix.char := 1;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1451 "extend-ocaml-syntax.html.mlx";;
 "Stdpp.raise_with_loc _loc (Failure \"this is an error message\")\n";;

let () =
  Camlmix.line := 1452;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1452 "extend-ocaml-syntax.html.mlx";;
   () 
let () =
  Camlmix.line := 1452;
  Camlmix.char := 9;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1452 "extend-ocaml-syntax.html.mlx";;
         "\nIt displays the location by indicating file, line number and character \noffsets, \nas usual in OCaml. Under Emacs with tuareg-mode it allows to go directly to\nthis location in the source file. However, this raise an exception, which \nis not always wanted.\n\n<p>\nA similar error message can be produced using the following function:\n";;

let () =
  Camlmix.line := 1461;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1461 "extend-ocaml-syntax.html.mlx";;
   print_with bg_ocaml 

let () =
  Camlmix.line := 1462;
  Camlmix.char := 1;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1462 "extend-ocaml-syntax.html.mlx";;
 "open Printf\nopen Lexing\n\n(* works only if done immediately, since the file name can change when a\n   #line or #use directive is encountered *)\n\nlet string_of_loc _loc =\n  let start, stop = _loc in\n  let char1 = start.pos_cnum - start.pos_bol in\n  let char2 = char1 + stop.pos_cnum - start.pos_cnum - 1 in\n  sprintf \"File %S, line %i, characters %i-%i:\\n\"\n    !Pcaml.input_file (* should be: start.pos_fname*) \n    start.pos_lnum\n    char1 char2\n";;

let () =
  Camlmix.line := 1476;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1476 "extend-ocaml-syntax.html.mlx";;
   () 
let () =
  Camlmix.line := 1476;
  Camlmix.char := 9;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1476 "extend-ocaml-syntax.html.mlx";;
         "\n<p>\nBeware that there has been bug which caused the <code>pos_fname</code>\nrecord field to not be set correctly \n(<a href=\"http://caml.inria.fr/mantis/view.php?id=3886\">bug report 3886</a>).\nThis is why we don't use it, although it should be a better solution\nsince it does not depend on any external state.\n\n<p>\nOf course, the user of the syntax extension must <b>not load \n<code>pr_o.cmo</code></b> (conversion to OCaml source file in standard syntax)\nwhen preprocessing a source file with <code>camlp5o</code>, \nsince it does not preserve the original location indicators.\nThe default output format should be used. It is provided by the \n<code>pr_dump.cmo</code> file which is preloaded in \n<code>camlp5o</code> or <code>camlp5r</code>. This format is a\nbinary representation of the abstract syntax tree, \nwith locations that match the source code.\n\n<p>\nSee also ";;

let () =
  Camlmix.line := 1496;
  Camlmix.char := 12;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1496 "extend-ocaml-syntax.html.mlx";;
            toc_link "loc" "loc vs. _loc" 
let () =
  Camlmix.line := 1496;
  Camlmix.char := 45;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1496 "extend-ocaml-syntax.html.mlx";;
                                             " and why you should\nalways use the <code>-loc</code> option when preprocessing \na syntax extension.\n\n\n";;

let () =
  Camlmix.line := 1501;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1501 "extend-ocaml-syntax.html.mlx";;
   toc_entry "packaging" 
let () =
  Camlmix.line := 1501;
  Camlmix.char := 28;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1501 "extend-ocaml-syntax.html.mlx";;
                            "\n\n<p>\nThese are guidelines which should make it easier for programmers\nto actually use the syntax extensions that you may have written.\n\n";;

let () =
  Camlmix.line := 1507;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1507 "extend-ocaml-syntax.html.mlx";;
   toc_entry "cohabitation" 
let () =
  Camlmix.line := 1507;
  Camlmix.char := 31;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1507 "extend-ocaml-syntax.html.mlx";;
                               "\n<p>\nIf possible, do not override existing rules: this might be fine if only\nyour extension is being used, but if another extension does the same, only\none of these extensions can be used at a time. Sometimes, deleting a rule\nand rewriting an extended version of it is the only way to \"extend\" existing\nsyntax constructs, but using other keywords instead is always possible.\n\n<p>\nEXTEND statements are expressions and they can be parametrized by some runtime\nparameters. It is a good idea to provide an option which allows to specify\na given keyword instead of the default one.\nFor instance, instead of this:\n";;

let () =
  Camlmix.line := 1520;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1520 "extend-ocaml-syntax.html.mlx";;
   print_with bg_ocaml 

let () =
  Camlmix.line := 1521;
  Camlmix.char := 1;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1521 "extend-ocaml-syntax.html.mlx";;
 "(* file pa_eval.ml *)\n...\n\nEXTEND\n  Pcaml.expr: [\n    [ \"eval\"; e = Pcaml.expr -> ... ]\n  ]\nEND\n";;

let () =
  Camlmix.line := 1529;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1529 "extend-ocaml-syntax.html.mlx";;
   () 
let () =
  Camlmix.line := 1529;
  Camlmix.char := 9;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1529 "extend-ocaml-syntax.html.mlx";;
         "\n<p>we would write the following:\n";;

let () =
  Camlmix.line := 1531;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1531 "extend-ocaml-syntax.html.mlx";;
   print_with bg_ocaml 

let () =
  Camlmix.line := 1532;
  Camlmix.char := 1;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1532 "extend-ocaml-syntax.html.mlx";;
 "(* file pa_eval.ml *)\n...\n\nlet extend opt =\n  let kw = !opt in\n  EXTEND\n    Pcaml.expr: [\n      [ $kw$; e = Pcaml.expr -> ... ]\n    ]\n  END\n\nlet _ =\n  let eval = ref \"eval\" in\n  Pcaml.add_option \"-eval-kw\" \n    (Arg.SetString eval)\n    \"<kw>  use another keyword than \\\"eval\\\"\";  \n";;

let () =
  Camlmix.line := 1548;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1548 "extend-ocaml-syntax.html.mlx";;
   () 
let () =
  Camlmix.line := 1548;
  Camlmix.char := 9;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1548 "extend-ocaml-syntax.html.mlx";;
         "\n<p>\nNow the users of the syntax extension can load it\nwith <code>camlp5o pa_eval.cmo -eval-kw EVAL</code> if they want the new keyword\nto be <code>EVAL</code> instead of <code>eval</code>.\n\n\n\n";;

let () =
  Camlmix.line := 1556;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1556 "extend-ocaml-syntax.html.mlx";;
   toc_entry "names" 
let () =
  Camlmix.line := 1556;
  Camlmix.char := 24;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1556 "extend-ocaml-syntax.html.mlx";;
                        "\n\nIn order to minimize conflicts between existing syntax extensions that could\nbe used simultaneously, the following rules are suggested:\n<ul>\n<li> the name of \na library which extends the syntax should start with \"pa_\"\n(e.g. <code>pa_eval.cmo</code>) \n<li> the name of \na library which defines a pretty-printer should start with \"pr_\"\n(e.g. <code>pr_eval.cmo</code>) \n<li> the name of \na library which defines quotation expanders should start with \"q_\"\n(e.g. <code>q_eval.cmo</code>) \n<li> check that the name of the library that you intend to publish is not\nalready taken, with or without the \"pa_\", \"pr_\" or \"q_\" prefix, unless\nyou are specifically writing syntactic sugar for this library.\n<li> if your syntax extension accepts options, beware that other \nsyntax extensions might use the same option names, which won't work\nwhen used simultaneously. You can assume the exclusivity of option names\nthat start with the same name as your syntax extension\n(e.g. <code>-eval-kw</code>).\n<li> hidden identifiers that are introduced into the OCaml AST should\nstart two underscores followed by the name of the extension file, including\nthe \"pa_\" or \"pr_\" prefix (e.g. <code>__pa_eval1234</code>).\n</ul>\n\n<p>\nPlease note that many existing extensions do not respect all of these (new,\nunofficial)\nguidelines, but if you follow them it means less trouble \nfor you in the future.\n\n\n";;

let () =
  Camlmix.line := 1590;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1590 "extend-ocaml-syntax.html.mlx";;
   toc_entry "youcan" 
let () =
  Camlmix.line := 1590;
  Camlmix.char := 25;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1590 "extend-ocaml-syntax.html.mlx";;
                         "\n\n\n";;

let () =
  Camlmix.line := 1593;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1593 "extend-ocaml-syntax.html.mlx";;
   toc_entry "lettry" 
let () =
  Camlmix.line := 1593;
  Camlmix.char := 25;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1593 "extend-ocaml-syntax.html.mlx";;
                         "\n\n<p>\nSometimes, it is useful to restrict the scope of an exception handler.\nThe regular ";;

let () =
  Camlmix.line := 1597;
  Camlmix.char := 15;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1597 "extend-ocaml-syntax.html.mlx";;
               ocamlcode "try" 
let () =
  Camlmix.line := 1597;
  Camlmix.char := 34;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1597 "extend-ocaml-syntax.html.mlx";;
                                  " ... ";;

let () =
  Camlmix.line := 1597;
  Camlmix.char := 41;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1597 "extend-ocaml-syntax.html.mlx";;
                                         ocamlcode "with" 
let () =
  Camlmix.line := 1597;
  Camlmix.char := 61;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1597 "extend-ocaml-syntax.html.mlx";;
                                                             " \nlets us do this:\n";;

let () =
  Camlmix.line := 1599;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1599 "extend-ocaml-syntax.html.mlx";;
   print_with bg_ocaml 

let () =
  Camlmix.line := 1600;
  Camlmix.char := 1;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1600 "extend-ocaml-syntax.html.mlx";;
 "let rec cat () =\n  try \n    let c = input_char stdin in\n    print_char c;\n    cat ()\n  with End_of_file -> ()\n\nlet _ = cat ()\n";;

let () =
  Camlmix.line := 1608;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1608 "extend-ocaml-syntax.html.mlx";;
   () 
let () =
  Camlmix.line := 1608;
  Camlmix.char := 9;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1608 "extend-ocaml-syntax.html.mlx";;
         "\n<p>\nbut it catches exceptions that might be raised not only during the call to\n<code>input_char</code> but also <code>print_char</code>\nand <code>cat</code> itself.\nThat is problematic for several reasons that we don't want to discuss here.\n<p>\nIn order to catch the exceptions that are raised during the call to\n<code>input_char</code>, it can be quite difficult to keep the code\nsimple and readable. Here is one solution which is relatively natural:\n";;

let () =
  Camlmix.line := 1618;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1618 "extend-ocaml-syntax.html.mlx";;
   print_with bg_ocaml 

let () =
  Camlmix.line := 1619;
  Camlmix.char := 1;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1619 "extend-ocaml-syntax.html.mlx";;
 "let rec cat () =\n  match\n    try Some (input_char stdin)\n    with End_of_file -> None\n  with\n      Some c -> \n\tprint_char c;\n\tcat ()\n    | None -> ()\n\nlet _ = cat ()\n";;

let () =
  Camlmix.line := 1630;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1630 "extend-ocaml-syntax.html.mlx";;
   () 
let () =
  Camlmix.line := 1630;
  Camlmix.char := 9;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1630 "extend-ocaml-syntax.html.mlx";;
         "\n<p>\nAnother solution, which is hard to read but simple to implement mechanically\nis the following:\n";;

let () =
  Camlmix.line := 1634;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1634 "extend-ocaml-syntax.html.mlx";;
   print_with bg_ocaml 

let () =
  Camlmix.line := 1635;
  Camlmix.char := 1;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1635 "extend-ocaml-syntax.html.mlx";;
 "let rec cat () =\n  (try \n     let c = input_char stdin in\n     fun () ->\n       print_char c;\n       cat ()\n   with End_of_file -> fun () -> ()) ()\n\nlet _ = cat ()\n";;

let () =
  Camlmix.line := 1644;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1644 "extend-ocaml-syntax.html.mlx";;
   () 
let () =
  Camlmix.line := 1644;
  Camlmix.char := 9;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1644 "extend-ocaml-syntax.html.mlx";;
         "\n<p>\nThis is the solution we choose here to implement a new \nlet-try-in-with construct which was suggested by \nDon Syme in \n<a href=\"http://caml.inria.fr/pub/ml-archives/caml-list/2004/12/b5b79fcd4ea695b8e1e0aff740b07cf3.en.html\">a message to caml-list</a>. \nIt looks like this:\n";;

let () =
  Camlmix.line := 1651;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1651 "extend-ocaml-syntax.html.mlx";;
   print_with (bg_ocaml ~file:"camlp5/lettry/prog.ml" ~html:true) 

let () =
  Camlmix.line := 1652;
  Camlmix.char := 1;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1652 "extend-ocaml-syntax.html.mlx";;
 "let rec cat () =\n  let try c = input_char stdin in\n  print_char c;\n  cat ()\n  with End_of_file -> ()\n\nlet _ = cat ()\n";;

let () =
  Camlmix.line := 1659;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1659 "extend-ocaml-syntax.html.mlx";;
   () 
let () =
  Camlmix.line := 1659;
  Camlmix.char := 9;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1659 "extend-ocaml-syntax.html.mlx";;
         "\n<p>\nNote that we just inverted the ";;

let () =
  Camlmix.line := 1661;
  Camlmix.char := 34;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1661 "extend-ocaml-syntax.html.mlx";;
                                  ocamlcode "let" 
let () =
  Camlmix.line := 1661;
  Camlmix.char := 53;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1661 "extend-ocaml-syntax.html.mlx";;
                                                     " and\n";;

let () =
  Camlmix.line := 1662;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1662 "extend-ocaml-syntax.html.mlx";;
   ocamlcode "try" 
let () =
  Camlmix.line := 1662;
  Camlmix.char := 22;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1662 "extend-ocaml-syntax.html.mlx";;
                      " keywords with respect to the original program.\n<p>\nThe syntax extension is pretty straightforward and reuses\nsome entries of the grammar of OCaml: ";;

let () =
  Camlmix.line := 1665;
  Camlmix.char := 41;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1665 "extend-ocaml-syntax.html.mlx";;
                                         ocamlcode "Pcaml.let_binding" 
let () =
  Camlmix.line := 1665;
  Camlmix.char := 74;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1665 "extend-ocaml-syntax.html.mlx";;
                                                                          ",\n";;

let () =
  Camlmix.line := 1666;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1666 "extend-ocaml-syntax.html.mlx";;
   ocamlcode "Pcaml.expr" 
let () =
  Camlmix.line := 1666;
  Camlmix.char := 29;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1666 "extend-ocaml-syntax.html.mlx";;
                             " and ";;

let () =
  Camlmix.line := 1666;
  Camlmix.char := 36;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1666 "extend-ocaml-syntax.html.mlx";;
                                    ocamlcode "Pcaml.patt" 
let () =
  Camlmix.line := 1666;
  Camlmix.char := 62;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1666 "extend-ocaml-syntax.html.mlx";;
                                                              ".\nYou can notice that these entries are defined in the ";;

let () =
  Camlmix.line := 1667;
  Camlmix.char := 56;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1667 "extend-ocaml-syntax.html.mlx";;
                                                        ocamlcode "Pcaml" 
let () =
  Camlmix.line := 1667;
  Camlmix.char := 77;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1667 "extend-ocaml-syntax.html.mlx";;
                                                                             "\nmodule, not in ";;

let () =
  Camlmix.line := 1668;
  Camlmix.char := 18;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1668 "extend-ocaml-syntax.html.mlx";;
                  ocamlcode "Pa_o" 
let () =
  Camlmix.line := 1668;
  Camlmix.char := 38;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1668 "extend-ocaml-syntax.html.mlx";;
                                      " (file <code>pa_o.ml</code>). \nThe reason is that\nthe grammar for the revised syntax of OCaml (file <code>pa_r.ml</code>)\nshares the same public entries.\nThis leaves the possibility of writing syntax extensions of the\nregular syntax (as we do in this tutorial)\nwhich also work to extend the revised syntax.\n<p>\nUnfortunately, many entries found in <code>pa_o.ml</code> \nthat we would like to modify are not visible from outside.\n<p>\nIn this example, we create a new entry <code>lettry_case</code>\nwhich is very similar to the <code>match_case</code> entry found\nin <code>pa_o.ml</code>:\n";;

let () =
  Camlmix.line := 1682;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1682 "extend-ocaml-syntax.html.mlx";;
   print_with (bg_ocaml ~file:"camlp5/lettry/pa_lettry.ml" ~html:true) 

let () =
  Camlmix.line := 1683;
  Camlmix.char := 1;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1683 "extend-ocaml-syntax.html.mlx";;
 "EXTEND\n  GLOBAL: Pcaml.expr;\n\n  Pcaml.expr: LEVEL \"expr1\" [\n    [ \"let\"; \"try\"; o = OPT \"rec\"; l = LIST1 Pcaml.let_binding SEP \"and\"; \n      \"in\"; e = Pcaml.expr;\n      \"with\"; pwel = LIST1 lettry_case SEP \"|\" ->\n        <:expr< (try \n                   let $opt: o <> None$ $list:l$ in \n                   fun () -> $e$ \n\t\t with \n                   [ $list:pwel$ ]) () >>  ]\n  ];\n\n  lettry_case: [ \n    [ p = Pcaml.patt; \n      w = OPT [ \"when\"; e = Pcaml.expr -> e ]; \"->\"; \n      e = Pcaml.expr -> (p, Ploc.VaVal w, <:expr< fun () -> $e$ >>) ]\n  ];\nEND;;\n";;

let () =
  Camlmix.line := 1703;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1703 "extend-ocaml-syntax.html.mlx";;
   () 
let () =
  Camlmix.line := 1703;
  Camlmix.char := 9;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1703 "extend-ocaml-syntax.html.mlx";;
         "\n<p>\nWhen a <code>GLOBAL</code> statement is present, it means that\nany new entry will be created automatically and will not be\nvisible outside of the <code>EXTEND</code> block.\nTo make the lettry_case visible, we would proceed as follows:\n";;

let () =
  Camlmix.line := 1709;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1709 "extend-ocaml-syntax.html.mlx";;
   print_with bg_ocaml 

let () =
  Camlmix.line := 1710;
  Camlmix.char := 1;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1710 "extend-ocaml-syntax.html.mlx";;
 "let lettry_case = Grammar.Entry.create Pcaml.gram \"lettry_case\";;\n\nEXTEND\n  (* no GLOBAL statement *)\n  Pcaml.expr: ... ;\n  lettry_case: ... ;\nEND;;\n";;

let () =
  Camlmix.line := 1717;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1717 "extend-ocaml-syntax.html.mlx";;
   () 
let () =
  Camlmix.line := 1717;
  Camlmix.char := 9;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1717 "extend-ocaml-syntax.html.mlx";;
         "\n\n";;

let () =
  Camlmix.line := 1719;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1719 "extend-ocaml-syntax.html.mlx";;
   (* Now that the sources have been updated, let's compile and run *)
command "cd camlp5/lettry && make 1>&2"

let () =
  Camlmix.line := 1721;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1721 "extend-ocaml-syntax.html.mlx";;
   "\n\n<p>\nOur program in the new syntax is successfully transformed into this\none:\n";;

let () =
  Camlmix.line := 1726;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1726 "extend-ocaml-syntax.html.mlx";;
   ocaml_file "camlp5/lettry/prog.ppo" 
let () =
  Camlmix.line := 1726;
  Camlmix.char := 42;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1726 "extend-ocaml-syntax.html.mlx";;
                                          "\n\n<p>\nThe program prints on stdout the characters read from stdin:\n<pre>\n$ echo Hello | ./prog\n";;

let () =
  Camlmix.line := 1732;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1732 "extend-ocaml-syntax.html.mlx";;
   command "echo Hello | camlp5/lettry/prog 2>&1" 
let () =
  Camlmix.line := 1732;
  Camlmix.char := 53;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1732 "extend-ocaml-syntax.html.mlx";;
                                                     "</pre>\n\n<p>\n";;

let () =
  Camlmix.line := 1735;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1735 "extend-ocaml-syntax.html.mlx";;
   warning "we also should extend the <code>Pcaml.str_item</code> entry,
using the same code as for <code>Pcaml.expr</code>, just
like for the standard let-in construct found in <code>pa_o.ml</code>." 
let () =
  Camlmix.line := 1737;
  Camlmix.char := 74;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1737 "extend-ocaml-syntax.html.mlx";;
                                                                          "\n\n\n<p>\n<b>Alternate syntax:</b> \nwe might prefer a syntax where the ";;

let () =
  Camlmix.line := 1742;
  Camlmix.char := 38;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1742 "extend-ocaml-syntax.html.mlx";;
                                      ocamlcode "with" 
let () =
  Camlmix.line := 1742;
  Camlmix.char := 58;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1742 "extend-ocaml-syntax.html.mlx";;
                                                          " \nis internal.\nIt makes it easier to realize that the recursive call to our \n";;

let () =
  Camlmix.line := 1745;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1745 "extend-ocaml-syntax.html.mlx";;
   ocamlcode "cat" 
let () =
  Camlmix.line := 1745;
  Camlmix.char := 22;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1745 "extend-ocaml-syntax.html.mlx";;
                      " function is a tail-call.\nThis was suggested by \n<a href=\"http://pauillac.inria.fr/~ddr/index-english.html\">Daniel \nde Rauglaudre</a>. It goes like this:\n";;

let () =
  Camlmix.line := 1749;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1749 "extend-ocaml-syntax.html.mlx";;
   print_with bg_ocaml 

let () =
  Camlmix.line := 1750;
  Camlmix.char := 1;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1750 "extend-ocaml-syntax.html.mlx";;
 "let rec cat () =\n  let try c = input_char stdin \n      with End_of_file -> ()\n  in\n  print_char c;\n  cat ()\n\nlet _ = cat ()\n";;

let () =
  Camlmix.line := 1758;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1758 "extend-ocaml-syntax.html.mlx";;
   () 
let () =
  Camlmix.line := 1758;
  Camlmix.char := 9;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1758 "extend-ocaml-syntax.html.mlx";;
         "\n<p>\nImplementing this is left as an exercise for the reader.\n\n\n";;

let () =
  Camlmix.line := 1763;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1763 "extend-ocaml-syntax.html.mlx";;
   toc_entry "onlyfloats" 
let () =
  Camlmix.line := 1763;
  Camlmix.char := 29;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1763 "extend-ocaml-syntax.html.mlx";;
                             "\n\n<p>\nA full solution to this problem is given earlier, in \n";;

let () =
  Camlmix.line := 1767;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1767 "extend-ocaml-syntax.html.mlx";;
   toc_link "replacing" "that section" 
let () =
  Camlmix.line := 1767;
  Camlmix.char := 42;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1767 "extend-ocaml-syntax.html.mlx";;
                                          ".\n\n\n\n";;

let () =
  Camlmix.line := 1771;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1771 "extend-ocaml-syntax.html.mlx";;
   toc_entry "types" 
let () =
  Camlmix.line := 1771;
  Camlmix.char := 24;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1771 "extend-ocaml-syntax.html.mlx";;
                        "\n\n<p>\nAlthough it is not very easy to extend the existing syntax for type \ndefinitions, we can easily add alternative syntaxes.\n<p>\nHere we will create a <code>record</code> keyword that we\nwill use for the definition of records where some fields\nare defined with default values.\nA function with labeled arguments will be generated automatically\nand should be used by the user for creating these records.\n<p>\nThis is our test program:\n";;

let () =
  Camlmix.line := 1784;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1784 "extend-ocaml-syntax.html.mlx";;
   print_with (bg_ocaml ~file:"camlp5/records/prog.ml" ~html:true) 

let () =
  Camlmix.line := 1785;
  Camlmix.char := 1;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1785 "extend-ocaml-syntax.html.mlx";;
 "record bob = { foo : string = \"Hello\";\n\t       bar : string;\n\t       mutable n : int = 1 }\n\nrecord weird = { x : weird option = (Some (create_weird ~x:None ())) }\n\nlet _ =\n  let x = create_bob ~bar:\"World\" () in\n  x.n <- x.n + 1;\n  Printf.printf \"%s %s %i\\n\" x.foo x.bar x.n\n";;

let () =
  Camlmix.line := 1795;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1795 "extend-ocaml-syntax.html.mlx";;
   () 
let () =
  Camlmix.line := 1795;
  Camlmix.char := 9;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1795 "extend-ocaml-syntax.html.mlx";;
         "\n\n<p>\nThere is no big difficulty since we chose not to extend \nthe ";;

let () =
  Camlmix.line := 1799;
  Camlmix.char := 7;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1799 "extend-ocaml-syntax.html.mlx";;
       ocamlcode "type" 
let () =
  Camlmix.line := 1799;
  Camlmix.char := 27;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1799 "extend-ocaml-syntax.html.mlx";;
                           " syntax for type definitions but to create\na new one, just for records.\n<p>\nNote (in pink) that the expressions that are given as default values\nfor record fields are parsed from the ";;

let () =
  Camlmix.line := 1803;
  Camlmix.char := 41;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1803 "extend-ocaml-syntax.html.mlx";;
                                         ocamlcode "\"simple\"" 
let () =
  Camlmix.line := 1803;
  Camlmix.char := 67;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1803 "extend-ocaml-syntax.html.mlx";;
                                                                   " \nprecedence level. It means that unless parentheses are placed\naround the expression, the semicolon will be interpreted as a \nseparator between two record fields, not between two expressions.\n";;

let () =
  Camlmix.line := 1807;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1807 "extend-ocaml-syntax.html.mlx";;
   print_with (bg_ocaml ~file:"camlp5/records/pa_records.ml" ~html:true) 

let () =
  Camlmix.line := 1808;
  Camlmix.char := 1;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1808 "extend-ocaml-syntax.html.mlx";;
 "let make_record_expr loc l =\n  let fields =\n    List.map (fun ((loc, name, mut, t), default) -> \n\t\t(<:patt< $lid:name$ >>, <:expr< $lid:name$ >>)) l in\n  <:expr< { $list:fields$ } >>\n\nlet expand_record loc type_name l =\n  let type_def = \n    let fields = List.map fst l in\n    <:str_item< type $lid:type_name$ = { $list:fields$ } >> in\n  let expr_def =\n    let record_expr = make_record_expr loc l in\n    let f =\n      List.fold_right\n\t(fun ((loc, name, mut, t), default) e ->\n\t   match default with\n\t       None ->\n\t\t <:expr< fun ~ $Ploc.VaVal name$ -> $e$ >>\n\t     | Some x ->\n\t\t <:expr< fun ? ($lid:name$ = $x$) -> $e$ >>)\n\tl\n        <:expr< fun () -> $record_expr$ >> in\n    <:str_item< value rec $lid: \"create_\" ^ type_name$ = $f$ >> in\n  <:str_item< declare $type_def$; $expr_def$; end >>\n\nEXTEND\n  GLOBAL: Pcaml.str_item;\n\n  Pcaml.str_item: LEVEL \"top\" [\n    [ \"record\"; type_name = LIDENT; \"=\"; \n      \"{\"; l = LIST1 field_decl SEP \";\"; \"}\" -> expand_record loc type_name l ]\n  ];\n\n  field_decl: [\n    [ mut = OPT \"mutable\";\n      name = LIDENT; \":\"; t = Pcaml.ctyp; \n      default = OPT [ \"=\"; @pink@e = Pcaml.expr LEVEL \"simple\"@@ -> e ] -> \n\t((loc, name, (mut <> None), t), default) ]\n  ];\nEND;;\n";;

let () =
  Camlmix.line := 1848;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1848 "extend-ocaml-syntax.html.mlx";;
   () 
let () =
  Camlmix.line := 1848;
  Camlmix.char := 9;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1848 "extend-ocaml-syntax.html.mlx";;
         "\n\n";;

let () =
  Camlmix.line := 1850;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1850 "extend-ocaml-syntax.html.mlx";;
   (* Now that the sources have been updated, let's compile and run *)
command "cd camlp5/records && make 1>&2"

let () =
  Camlmix.line := 1852;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1852 "extend-ocaml-syntax.html.mlx";;
   "\n\n<p>\nOur program ";;

let () =
  Camlmix.line := 1855;
  Camlmix.char := 15;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1855 "extend-ocaml-syntax.html.mlx";;
               download "camlp5/records/prog.ml" 
let () =
  Camlmix.line := 1855;
  Camlmix.char := 52;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1855 "extend-ocaml-syntax.html.mlx";;
                                                    "\nhas been converted into ";;

let () =
  Camlmix.line := 1856;
  Camlmix.char := 27;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1856 "extend-ocaml-syntax.html.mlx";;
                           download "camlp5/records/prog.ppo" 
let () =
  Camlmix.line := 1856;
  Camlmix.char := 65;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1856 "extend-ocaml-syntax.html.mlx";;
                                                                 "\nand works as expected:\n<pre>\n$ ./prog\n";;

let () =
  Camlmix.line := 1860;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1860 "extend-ocaml-syntax.html.mlx";;
   command "camlp5/records/prog 2>&1" 
let () =
  Camlmix.line := 1860;
  Camlmix.char := 41;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1860 "extend-ocaml-syntax.html.mlx";;
                                         "</pre>\n\n<p>\nYou can download the ";;

let () =
  Camlmix.line := 1863;
  Camlmix.char := 24;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1863 "extend-ocaml-syntax.html.mlx";;
                        download "camlp5/records/Makefile" 
let () =
  Camlmix.line := 1863;
  Camlmix.char := 62;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1863 "extend-ocaml-syntax.html.mlx";;
                                                              ".\n\n\n\n";;

let () =
  Camlmix.line := 1867;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1867 "extend-ocaml-syntax.html.mlx";;
   toc_entry "rec-expr" (* anonymous recursive functions *) 
let () =
  Camlmix.line := 1867;
  Camlmix.char := 63;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1867 "extend-ocaml-syntax.html.mlx";;
                                                               "\n\n<p>\nThis is left as an exercise for the reader:\nwe decide that the <code>rec</code> keyword preceding a function makes this function available under\nthe name <code>self</code> throughout its definition.\nFor instance, the following:\n";;

let () =
  Camlmix.line := 1874;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1874 "extend-ocaml-syntax.html.mlx";;
   print_with ocamlpre 
let () =
  Camlmix.line := 1874;
  Camlmix.char := 26;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1874 "extend-ocaml-syntax.html.mlx";;
                          "\nList.map \n  (rec function 0 -> 1 | n -> n * self (n - 1))\n  [1;2;3;4;5]\n";;

let () =
  Camlmix.line := 1878;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1878 "extend-ocaml-syntax.html.mlx";;
   () 
let () =
  Camlmix.line := 1878;
  Camlmix.char := 9;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1878 "extend-ocaml-syntax.html.mlx";;
         "\n<p>\nwould be transcribed into:\n";;

let () =
  Camlmix.line := 1881;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1881 "extend-ocaml-syntax.html.mlx";;
   print_with ocamlpre 
let () =
  Camlmix.line := 1881;
  Camlmix.char := 26;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1881 "extend-ocaml-syntax.html.mlx";;
                          "\nList.map \n  (let rec self = function 0 -> 1 | n -> n * self (n - 1) in self)\n  [1;2;3;4;5]\n";;

let () =
  Camlmix.line := 1885;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1885 "extend-ocaml-syntax.html.mlx";;
   () 
let () =
  Camlmix.line := 1885;
  Camlmix.char := 9;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1885 "extend-ocaml-syntax.html.mlx";;
         "\n<p>\nHint: some expressions other than functions can be defined recursively.\nHow would you define the following list in our new syntax?\n";;

let () =
  Camlmix.line := 1889;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1889 "extend-ocaml-syntax.html.mlx";;
   print_with ocamlpre 
let () =
  Camlmix.line := 1889;
  Camlmix.char := 26;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1889 "extend-ocaml-syntax.html.mlx";;
                          "\n(* This is a circular list *)\nlet rec circ = 1 :: 2 :: circ\n";;

let () =
  Camlmix.line := 1892;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1892 "extend-ocaml-syntax.html.mlx";;
   () 
let () =
  Camlmix.line := 1892;
  Camlmix.char := 9;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1892 "extend-ocaml-syntax.html.mlx";;
         "\n\n\n\n";;

let () =
  Camlmix.line := 1896;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1896 "extend-ocaml-syntax.html.mlx";;
   toc_entry "youcant" 
let () =
  Camlmix.line := 1896;
  Camlmix.char := 26;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1896 "extend-ocaml-syntax.html.mlx";;
                          "\n\n";;

let () =
  Camlmix.line := 1898;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1898 "extend-ocaml-syntax.html.mlx";;
   toc_entry "inserting-anywhere" 
let () =
  Camlmix.line := 1898;
  Camlmix.char := 37;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1898 "extend-ocaml-syntax.html.mlx";;
                                     "\n\n<p>\nExtending the syntax of OCaml consists in adding or replacing rules \nin the grammar.\nHowever the terminal rules, i.e. the tokens returned by the lexer such\nas <code>LIDENT</code>, <code>STRING</code> or <code>INT</code>, cannot be \nextended.\n<p>\nConsider the following syntax extension where we create a ";;

let () =
  Camlmix.line := 1907;
  Camlmix.char := 61;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1907 "extend-ocaml-syntax.html.mlx";;
                                                             verb "one" 
let () =
  Camlmix.line := 1907;
  Camlmix.char := 75;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1907 "extend-ocaml-syntax.html.mlx";;
                                                                           "\nkeyword which is simply replaced by ";;

let () =
  Camlmix.line := 1908;
  Camlmix.char := 39;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1908 "extend-ocaml-syntax.html.mlx";;
                                       verb "1" 
let () =
  Camlmix.line := 1908;
  Camlmix.char := 51;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1908 "extend-ocaml-syntax.html.mlx";;
                                                   " in expressions and in\npatterns:\n";;

let () =
  Camlmix.line := 1910;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1910 "extend-ocaml-syntax.html.mlx";;
   print_with ocamlpre 
let () =
  Camlmix.line := 1910;
  Camlmix.char := 26;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1910 "extend-ocaml-syntax.html.mlx";;
                          "\nEXTEND\n  Pcaml.expr: LEVEL \"simple\" [ \n    [ \"one\" -> <:expr< 1 >> ]\n  ];\n  Pcaml.patt: LEVEL \"simple\" [ \n    [ \"one\" -> <:patt< 1 >> ]\n  ];\nEND;;\n";;

let () =
  Camlmix.line := 1919;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1919 "extend-ocaml-syntax.html.mlx";;
   () 
let () =
  Camlmix.line := 1919;
  Camlmix.char := 9;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1919 "extend-ocaml-syntax.html.mlx";;
         "\n<p>\nThis will not replace every occurrence of ";;

let () =
  Camlmix.line := 1921;
  Camlmix.char := 45;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1921 "extend-ocaml-syntax.html.mlx";;
                                             verb "one" 
let () =
  Camlmix.line := 1921;
  Camlmix.char := 59;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1921 "extend-ocaml-syntax.html.mlx";;
                                                           " by ";;

let () =
  Camlmix.line := 1921;
  Camlmix.char := 65;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1921 "extend-ocaml-syntax.html.mlx";;
                                                                 verb "1" 
let () =
  Camlmix.line := 1921;
  Camlmix.char := 77;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1921 "extend-ocaml-syntax.html.mlx";;
                                                                             ",\nbut only where ";;

let () =
  Camlmix.line := 1922;
  Camlmix.char := 18;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1922 "extend-ocaml-syntax.html.mlx";;
                  verb "one" 
let () =
  Camlmix.line := 1922;
  Camlmix.char := 32;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1922 "extend-ocaml-syntax.html.mlx";;
                                " appears as a lowercase identifier\nas defined by the lexer, as an expression or a pattern. \nSo ";;

let () =
  Camlmix.line := 1924;
  Camlmix.char := 6;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1924 "extend-ocaml-syntax.html.mlx";;
      ocamlcode "one_apple" 
let () =
  Camlmix.line := 1924;
  Camlmix.char := 31;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1924 "extend-ocaml-syntax.html.mlx";;
                               " and ";;

let () =
  Camlmix.line := 1924;
  Camlmix.char := 38;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1924 "extend-ocaml-syntax.html.mlx";;
                                      ocamlcode "\"one + 2\"" 
let () =
  Camlmix.line := 1924;
  Camlmix.char := 65;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1924 "extend-ocaml-syntax.html.mlx";;
                                                                 " will\nremain unchanged.\n<p>\nIf you need for instance to parametrize the name of an identifier by adding\na suffix such as a version number, you can't do it by defining grammar rules.\nIn that case, one solution is to use a simple preprocessor which simply\nignores the context, or to define your own quotation expander.\n<p>\nQuotations behave as one single token, which will be expanded into a node\nof the OCaml syntax tree which is either an expression (expr) or\na pattern (patt). Quotations are a good way to introduce a syntax which\nis radically different from OCaml. All you have to do is\ndefine a syntax expander, i.e. a function which builds\nan expression or a pattern from a raw string. \nFor this you can use any technique you like such as Camlp5 (lexer + grammar),\nOcamllex + Ocamlyacc, regular expressions, etc.\nSee the Camlp5 ";;

let () =
  Camlmix.line := 1940;
  Camlmix.char := 18;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1940 "extend-ocaml-syntax.html.mlx";;
                  manual () 
let () =
  Camlmix.line := 1940;
  Camlmix.char := 31;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1940 "extend-ocaml-syntax.html.mlx";;
                               " for the details on how to define a quotation expander.\n\n\n\n";;

let () =
  Camlmix.line := 1944;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1944 "extend-ocaml-syntax.html.mlx";;
   toc_entry "comments" 
let () =
  Camlmix.line := 1944;
  Camlmix.char := 27;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1944 "extend-ocaml-syntax.html.mlx";;
                           "\n\n<p>\nEnd of lines that separate tokens and comments are eliminated by\nthe lexer. This is why nothing can be done to solve this problem\nwith extensible grammars, although it should be relatively easy to adapt\nthe lexer for this task.\n\n";;

let () =
  Camlmix.line := 1952;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1952 "extend-ocaml-syntax.html.mlx";;
   toc_entry "strings" 
let () =
  Camlmix.line := 1952;
  Camlmix.char := 26;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1952 "extend-ocaml-syntax.html.mlx";;
                          "\n\n<p>\nAdding customized delimiters for string literals cannot be done by \nextending the grammar.\n\n<p>\nOne alternative is to define a quotation expander which job is to \ntransform the contents of the quotation into a valid OCaml string.\nIn this case, instead of escaping\nthe double-quotes (";;

let () =
  Camlmix.line := 1962;
  Camlmix.char := 22;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1962 "extend-ocaml-syntax.html.mlx";;
                      ocamlcode "\"" 
let () =
  Camlmix.line := 1962;
  Camlmix.char := 40;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1962 "extend-ocaml-syntax.html.mlx";;
                                        "), we would have\nto escape the end-of-quotation delimiters (";;

let () =
  Camlmix.line := 1963;
  Camlmix.char := 46;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1963 "extend-ocaml-syntax.html.mlx";;
                                              ocamlcode ">>" 
let () =
  Camlmix.line := 1963;
  Camlmix.char := 64;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1963 "extend-ocaml-syntax.html.mlx";;
                                                                ").\nThe code which would be compiled and loaded by the preprocessor should look\nlike this (not tested):\n";;

let () =
  Camlmix.line := 1966;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1966 "extend-ocaml-syntax.html.mlx";;
   print_with ocamlpre 
let () =
  Camlmix.line := 1966;
  Camlmix.char := 26;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1966 "extend-ocaml-syntax.html.mlx";;
                          "\nlet _ =\n  (* we define a very simple quotation expander *)\n  let expander is_expr quotation_contents =\n\n    (* addition of double-quotes around the string \n       and backslashes where necessary *)\n    let s = Printf.sprintf \"%S\" quotation_contents in\n\n    (* the result is plain-text OCaml code (concrete syntax) *)\n    Quotation.ExStr s in\n\n  Quotation.add \"string\" expander;\n  (* we decide that `string' will be the default quotation expander *)\n\n  Quotation.default := \"string\"\n";;

let () =
  Camlmix.line := 1982;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1982 "extend-ocaml-syntax.html.mlx";;
   () 
let () =
  Camlmix.line := 1982;
  Camlmix.char := 9;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1982 "extend-ocaml-syntax.html.mlx";;
         "\n<p>\nNow, in a program which is preprocessed with this, the three following\nnotations are equivalent:\n";;

let () =
  Camlmix.line := 1986;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1986 "extend-ocaml-syntax.html.mlx";;
   print_with verbatim 
let () =
  Camlmix.line := 1986;
  Camlmix.char := 26;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1986 "extend-ocaml-syntax.html.mlx";;
                          "\n  <:string< I don't want to escape this: \"\"\"\"\"\"\"\"\"\" >>\n  << I don't want to escape this: \"\"\"\"\"\"\"\"\"\" >>\n  \" I don't want to escape this: \\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\" \"\n";;

let () =
  Camlmix.line := 1990;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1990 "extend-ocaml-syntax.html.mlx";;
   () 
let () =
  Camlmix.line := 1990;
  Camlmix.char := 9;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1990 "extend-ocaml-syntax.html.mlx";;
         "\n\n<p>\nThe syntax expander can also return a node of the AST, but it is\nmore complicated to implement and we lose the location \nof the quotation, which can make debugging quite unpleasant\n(again, not tested):\n";;

let () =
  Camlmix.line := 1997;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 1997 "extend-ocaml-syntax.html.mlx";;
   print_with ocamlpre 
let () =
  Camlmix.line := 1997;
  Camlmix.char := 26;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 1997 "extend-ocaml-syntax.html.mlx";;
                          "\nlet _ =\n  (* we define a very simple quotation expander *)\n  let quote_string s = \n    (* no double-quotes around the strings in AST nodes! *)\n    String.escaped s in\n\n  let loc = Token.dummy_loc (* avoid doing this whenever you can *) in\n\n  (* here the result is a pair of functions that\n     return the appropriate node of the syntax tree (abstract syntax) *)\n  let expand_expr quotation_contents =\n    let s = quote_string quotation_contents in\n    <:expr< $str:s$ >> \n\n  and expand_patt quotation_contents =\n    let s = quote_string quotation_contents in\n    <:patt< $str:s$ >> in\n    \n  let expander = Quotation.ExAst (expand_expr, expand_patt) in\n  Quotation.add \"string\" expander;\n  Quotation.default := \"string\"\n";;

let () =
  Camlmix.line := 2019;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 2019 "extend-ocaml-syntax.html.mlx";;
   () 
let () =
  Camlmix.line := 2019;
  Camlmix.char := 9;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 2019 "extend-ocaml-syntax.html.mlx";;
         "\n\n\n";;

let () =
  Camlmix.line := 2022;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 2022 "extend-ocaml-syntax.html.mlx";;
   toc_entry "infix" 
let () =
  Camlmix.line := 2022;
  Camlmix.char := 24;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 2022 "extend-ocaml-syntax.html.mlx";;
                        "\n\n<p>\nThe backquote symbol (";;

let () =
  Camlmix.line := 2025;
  Camlmix.char := 25;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 2025 "extend-ocaml-syntax.html.mlx";;
                         ocamlcode "`" 
let () =
  Camlmix.line := 2025;
  Camlmix.char := 42;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 2025 "extend-ocaml-syntax.html.mlx";;
                                          ") is already in use\nas a prefix operator for constructors of polymorphic variants and in\nthe Camlp5 extension for stream parsers.\n<p>\nOther notations could be used though.\nMaybe using ";;

let () =
  Camlmix.line := 2030;
  Camlmix.char := 15;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 2030 "extend-ocaml-syntax.html.mlx";;
               ocamlcode "&" 
let () =
  Camlmix.line := 2030;
  Camlmix.char := 32;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 2030 "extend-ocaml-syntax.html.mlx";;
                                " is not possible due to priority issues,\nbut we would have something like this:\n";;

let () =
  Camlmix.line := 2032;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 2032 "extend-ocaml-syntax.html.mlx";;
   print_with ocamlpre 
let () =
  Camlmix.line := 2032;
  Camlmix.char := 26;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 2032 "extend-ocaml-syntax.html.mlx";;
                          "\nlet add a b = (2 * a) + b\nlet c = 1 &add 2\n";;

let () =
  Camlmix.line := 2035;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 2035 "extend-ocaml-syntax.html.mlx";;
   () 
let () =
  Camlmix.line := 2035;
  Camlmix.char := 9;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 2035 "extend-ocaml-syntax.html.mlx";;
         "\n<p>\nwhich means:\n";;

let () =
  Camlmix.line := 2038;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 2038 "extend-ocaml-syntax.html.mlx";;
   print_with ocamlpre 
let () =
  Camlmix.line := 2038;
  Camlmix.char := 26;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 2038 "extend-ocaml-syntax.html.mlx";;
                          "\nlet c = add 1 2\n";;

let () =
  Camlmix.line := 2040;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 2040 "extend-ocaml-syntax.html.mlx";;
   () 
let () =
  Camlmix.line := 2040;
  Camlmix.char := 9;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 2040 "extend-ocaml-syntax.html.mlx";;
         "\n<p>\nand not:\n";;

let () =
  Camlmix.line := 2043;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 2043 "extend-ocaml-syntax.html.mlx";;
   print_with ocamlpre 
let () =
  Camlmix.line := 2043;
  Camlmix.char := 26;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 2043 "extend-ocaml-syntax.html.mlx";;
                          "\nlet c = (add 2) 1\n";;

let () =
  Camlmix.line := 2045;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 2045 "extend-ocaml-syntax.html.mlx";;
   () 
let () =
  Camlmix.line := 2045;
  Camlmix.char := 9;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 2045 "extend-ocaml-syntax.html.mlx";;
         "\n<p>\nThat makes a good exercise for the reader! I don't know if there is\nan acceptable solution, so let me know if you find one.\n<p>\nHint: we have to define an infix operator\nwhich is accepted by Camlp5 and available (or that can be overriden),\nand has a stronger precedence than function application \n(";;

let () =
  Camlmix.line := 2053;
  Camlmix.char := 4;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 2053 "extend-ocaml-syntax.html.mlx";;
    ocamlcode "\"apply\"" 
let () =
  Camlmix.line := 2053;
  Camlmix.char := 29;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 2053 "extend-ocaml-syntax.html.mlx";;
                             " level) just like ";;

let () =
  Camlmix.line := 2053;
  Camlmix.char := 49;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 2053 "extend-ocaml-syntax.html.mlx";;
                                                 ocamlcode "." 
let () =
  Camlmix.line := 2053;
  Camlmix.char := 66;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 2053 "extend-ocaml-syntax.html.mlx";;
                                                                  " or\n";;

let () =
  Camlmix.line := 2054;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 2054 "extend-ocaml-syntax.html.mlx";;
   ocamlcode "#" 
let () =
  Camlmix.line := 2054;
  Camlmix.char := 20;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 2054 "extend-ocaml-syntax.html.mlx";;
                    ".\n\n\n";;

let () =
  Camlmix.line := 2057;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 2057 "extend-ocaml-syntax.html.mlx";;
   toc_entry "selectors" 
let () =
  Camlmix.line := 2057;
  Camlmix.char := 28;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 2057 "extend-ocaml-syntax.html.mlx";;
                            "\n\n<p>\nThis problem is: how to define a function which returns the nth element \nof a tuple of any size?\n\n<p>\nUnfortunately, Camlp5 cannot help much here since it doesn't know\nthe type of the expressions it manipulates.\n<p>\nBut if we accept to specify how many fields\nthe records has, it becomes feasible.\nWe would have to define a syntax which would be close to this:\n";;

let () =
  Camlmix.line := 2070;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 2070 "extend-ocaml-syntax.html.mlx";;
   print_with ocamlpre 
let () =
  Camlmix.line := 2070;
  Camlmix.char := 26;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 2070 "extend-ocaml-syntax.html.mlx";;
                          "\nlet x = (1, \"abc\", None)\nlet third_field = x.3|3\n";;

let () =
  Camlmix.line := 2073;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 2073 "extend-ocaml-syntax.html.mlx";;
   () 
let () =
  Camlmix.line := 2073;
  Camlmix.char := 9;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 2073 "extend-ocaml-syntax.html.mlx";;
         "\n<p>\nwhich would mean:\n";;

let () =
  Camlmix.line := 2076;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 2076 "extend-ocaml-syntax.html.mlx";;
   print_with ocamlpre 
let () =
  Camlmix.line := 2076;
  Camlmix.char := 26;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 2076 "extend-ocaml-syntax.html.mlx";;
                          "\nlet x = (1, \"abc\", None)\nlet third_field = (match x with (_, _, field) -> field)\n";;

let () =
  Camlmix.line := 2079;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 2079 "extend-ocaml-syntax.html.mlx";;
   () 
let () =
  Camlmix.line := 2079;
  Camlmix.char := 9;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 2079 "extend-ocaml-syntax.html.mlx";;
         "\n<p>\nAs often, the difficulty is to find a nice syntax which\ndoes not create ambiguities and is accepted by Camlp5.\n\n";;

let () =
  Camlmix.line := 2084;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 2084 "extend-ocaml-syntax.html.mlx";;
   toc_entry "troubleshooting" 
let () =
  Camlmix.line := 2084;
  Camlmix.char := 34;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 2084 "extend-ocaml-syntax.html.mlx";;
                                  "\n\n";;

let () =
  Camlmix.line := 2086;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 2086 "extend-ocaml-syntax.html.mlx";;
   toc_entry "lists" 
let () =
  Camlmix.line := 2086;
  Camlmix.char := 24;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 2086 "extend-ocaml-syntax.html.mlx";;
                        "\n\n<p>\nIn the syntax tree, there is a node for each node of a list, and\nthere is no predefined function that will create all these \nAST nodes automatically.\n<p>\nLet's say we want to create a notation for lists without semicolons between\nthe elements. A program using this notation would look like this:\n";;

let () =
  Camlmix.line := 2095;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 2095 "extend-ocaml-syntax.html.mlx";;
   print_with (bg_ocaml ~file:"camlp5/lists/prog.ml" ~html:true) 

let () =
  Camlmix.line := 2096;
  Camlmix.char := 1;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 2096 "extend-ocaml-syntax.html.mlx";;
 "let _ = \n  let a = [| 123; 456 |] in\n  List.iter \n    (fun i -> print_int i; \n       print_newline ()) \n    @pink@(LIST 1 2 3 a.(1))@@\n";;

let () =
  Camlmix.line := 2102;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 2102 "extend-ocaml-syntax.html.mlx";;
   () 
let () =
  Camlmix.line := 2102;
  Camlmix.char := 9;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 2102 "extend-ocaml-syntax.html.mlx";;
         "\n\n<p>\nThe syntax extension is rather short, and easy if you understand the system\nof ";;

let () =
  Camlmix.line := 2106;
  Camlmix.char := 6;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 2106 "extend-ocaml-syntax.html.mlx";;
      toc_link "priorities" "levels" 
let () =
  Camlmix.line := 2106;
  Camlmix.char := 40;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 2106 "extend-ocaml-syntax.html.mlx";;
                                        ":\n\n";;

let () =
  Camlmix.line := 2108;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 2108 "extend-ocaml-syntax.html.mlx";;
   print_with (bg_ocaml ~file:"camlp5/lists/pa_lists.ml" ~html:true) 

let () =
  Camlmix.line := 2109;
  Camlmix.char := 1;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 2109 "extend-ocaml-syntax.html.mlx";;
 "@silver@let expr_list loc l =\n  List.fold_right \n    (fun head tail -> <:expr< [ $head$ :: $tail$ ] >>)\n    l\n    <:expr< [] >>\n@@\n\nEXTEND\n  Pcaml.expr: [\n    [ \"LIST\"; l = LIST0 Pcaml.expr LEVEL \".\" -> @silver@expr_list loc l@@ ]\n  ];\nEND;;\n";;

let () =
  Camlmix.line := 2121;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 2121 "extend-ocaml-syntax.html.mlx";;
   () 
let () =
  Camlmix.line := 2121;
  Camlmix.char := 9;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 2121 "extend-ocaml-syntax.html.mlx";;
         "\n\n<p>\nAs announced, we need to build the nodes of the AST that represent the\nnodes of the list. This is the purpose of the ";;

let () =
  Camlmix.line := 2125;
  Camlmix.char := 49;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 2125 "extend-ocaml-syntax.html.mlx";;
                                                 ocamlcode "expr_list" 
let () =
  Camlmix.line := 2125;
  Camlmix.char := 74;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 2125 "extend-ocaml-syntax.html.mlx";;
                                                                          "\nfunction.\n\n";;

let () =
  Camlmix.line := 2128;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 2128 "extend-ocaml-syntax.html.mlx";;
   (* Now that the sources have been updated, let's compile and run *)
command "cd camlp5/lists && make 1>&2"

let () =
  Camlmix.line := 2130;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 2130 "extend-ocaml-syntax.html.mlx";;
   "\n\n<p>\nThe output of the program is the following:\n<pre>\n$ ./prog\n";;

let () =
  Camlmix.line := 2136;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 2136 "extend-ocaml-syntax.html.mlx";;
   command "camlp5/lists/prog 2>&1" 
let () =
  Camlmix.line := 2136;
  Camlmix.char := 39;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 2136 "extend-ocaml-syntax.html.mlx";;
                                       "</pre>\n\n<p>\nYou can also download the following files for this example:\nthe ";;

let () =
  Camlmix.line := 2140;
  Camlmix.char := 7;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 2140 "extend-ocaml-syntax.html.mlx";;
       download "camlp5/lists/Makefile" 
let () =
  Camlmix.line := 2140;
  Camlmix.char := 43;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 2140 "extend-ocaml-syntax.html.mlx";;
                                           " and the program\nafter conversion to regular OCaml ";;

let () =
  Camlmix.line := 2141;
  Camlmix.char := 37;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 2141 "extend-ocaml-syntax.html.mlx";;
                                     download "camlp5/lists/prog.ppo" 
let () =
  Camlmix.line := 2141;
  Camlmix.char := 73;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 2141 "extend-ocaml-syntax.html.mlx";;
                                                                         ".\n\n\n";;

let () =
  Camlmix.line := 2144;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 2144 "extend-ocaml-syntax.html.mlx";;
   toc_entry "functions" 
let () =
  Camlmix.line := 2144;
  Camlmix.char := 28;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 2144 "extend-ocaml-syntax.html.mlx";;
                            "\n\n<p>\nFunctions as represented in the AST only take one argument.\nSo this:\n";;

let () =
  Camlmix.line := 2149;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 2149 "extend-ocaml-syntax.html.mlx";;
   print_with ocamlpre 
let () =
  Camlmix.line := 2149;
  Camlmix.char := 26;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 2149 "extend-ocaml-syntax.html.mlx";;
                          "\nlet f x y z = x + y + z\n";;

let () =
  Camlmix.line := 2151;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 2151 "extend-ocaml-syntax.html.mlx";;
   () 
let () =
  Camlmix.line := 2151;
  Camlmix.char := 9;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 2151 "extend-ocaml-syntax.html.mlx";;
         "\n<p>\nis represented in the AST as:\n";;

let () =
  Camlmix.line := 2154;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 2154 "extend-ocaml-syntax.html.mlx";;
   print_with ocamlpre 
let () =
  Camlmix.line := 2154;
  Camlmix.char := 26;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 2154 "extend-ocaml-syntax.html.mlx";;
                          "\nlet f =\n  (fun x ->\n     (fun y ->\n\t(fun z -> x + y + z)))\n";;

let () =
  Camlmix.line := 2159;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 2159 "extend-ocaml-syntax.html.mlx";;
   () 
let () =
  Camlmix.line := 2159;
  Camlmix.char := 9;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 2159 "extend-ocaml-syntax.html.mlx";;
         "\n\n<p>\nSuch definitions have to be built using higher-order functions\nsuch as ";;

let () =
  Camlmix.line := 2163;
  Camlmix.char := 11;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 2163 "extend-ocaml-syntax.html.mlx";;
           ocamlcode "List.fold_right" 
let () =
  Camlmix.line := 2163;
  Camlmix.char := 42;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 2163 "extend-ocaml-syntax.html.mlx";;
                                          " or ";;

let () =
  Camlmix.line := 2163;
  Camlmix.char := 48;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 2163 "extend-ocaml-syntax.html.mlx";;
                                                ocamlcode "List.fold_left" 
let () =
  Camlmix.line := 2163;
  Camlmix.char := 78;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 2163 "extend-ocaml-syntax.html.mlx";;
                                                                              "\n(see ";;

let () =
  Camlmix.line := 2164;
  Camlmix.char := 8;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 2164 "extend-ocaml-syntax.html.mlx";;
        toc_link "lists" "previous section" 
let () =
  Camlmix.line := 2164;
  Camlmix.char := 47;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 2164 "extend-ocaml-syntax.html.mlx";;
                                               ").\n\n\n";;

let () =
  Camlmix.line := 2167;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 2167 "extend-ocaml-syntax.html.mlx";;
   toc_entry "badloc" 
let () =
  Camlmix.line := 2167;
  Camlmix.char := 25;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 2167 "extend-ocaml-syntax.html.mlx";;
                         "\n\n<p>\nIt happens that Camlp5 returns incorrect locations in errors messages under\nsome circumstances.\nCamlp5 3.08.1 was particularly difficult to use for this reason, so if\nyou are using OCaml 3.08.1, you should upgrade your OCaml system.\n\n";;

let () =
  Camlmix.line := 2175;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 2175 "extend-ocaml-syntax.html.mlx";;
   toc_entry "loc" 
let () =
  Camlmix.line := 2175;
  Camlmix.char := 22;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 2175 "extend-ocaml-syntax.html.mlx";;
                      "\n\n<p>\nBetween the release of OCaml 3.08.2 and 3.08.3, the default identifier\nfor locations used in syntax extensions silently\nchanged from ";;

let () =
  Camlmix.line := 2180;
  Camlmix.char := 16;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 2180 "extend-ocaml-syntax.html.mlx";;
                verb "loc" 
let () =
  Camlmix.line := 2180;
  Camlmix.char := 30;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 2180 "extend-ocaml-syntax.html.mlx";;
                              " to ";;

let () =
  Camlmix.line := 2180;
  Camlmix.char := 36;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 2180 "extend-ocaml-syntax.html.mlx";;
                                    verb "_loc" 
let () =
  Camlmix.line := 2180;
  Camlmix.char := 51;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 2180 "extend-ocaml-syntax.html.mlx";;
                                                   ".\n<p>\nFor compatibility reasons, pass the ";;

let () =
  Camlmix.line := 2182;
  Camlmix.char := 39;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 2182 "extend-ocaml-syntax.html.mlx";;
                                       verb "-loc _loc" 
let () =
  Camlmix.line := 2182;
  Camlmix.char := 59;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 2182 "extend-ocaml-syntax.html.mlx";;
                                                           " option\n(or ";;

let () =
  Camlmix.line := 2183;
  Camlmix.char := 7;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 2183 "extend-ocaml-syntax.html.mlx";;
       verb "-loc loc" 
let () =
  Camlmix.line := 2183;
  Camlmix.char := 26;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 2183 "extend-ocaml-syntax.html.mlx";;
                          ") to ";;

let () =
  Camlmix.line := 2183;
  Camlmix.char := 33;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 2183 "extend-ocaml-syntax.html.mlx";;
                                 verb "camlp5o" 
let () =
  Camlmix.line := 2183;
  Camlmix.char := 51;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 2183 "extend-ocaml-syntax.html.mlx";;
                                                   " as we did in the Makefiles\nof this tutorial.\n\n";;

let () =
  Camlmix.line := 2186;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 2186 "extend-ocaml-syntax.html.mlx";;
   toc_entry "labels" 
let () =
  Camlmix.line := 2186;
  Camlmix.char := 25;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 2186 "extend-ocaml-syntax.html.mlx";;
                         "\n\n<p>\nLabels of function arguments are a special kind of node of the syntax tree\nwhich is simply represented using the ";;

let () =
  Camlmix.line := 2190;
  Camlmix.char := 41;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 2190 "extend-ocaml-syntax.html.mlx";;
                                         verb "string" 
let () =
  Camlmix.line := 2190;
  Camlmix.char := 58;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 2190 "extend-ocaml-syntax.html.mlx";;
                                                          " type\nand only include lowercase identifiers.\nInstead of writing this:\n";;

let () =
  Camlmix.line := 2193;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 2193 "extend-ocaml-syntax.html.mlx";;
   print_with bg_ocaml 

let () =
  Camlmix.line := 2194;
  Camlmix.char := 1;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 2194 "extend-ocaml-syntax.html.mlx";;
 "let label = \"x\" in\n<:expr< f ~$lid:label$ >>\n";;

let () =
  Camlmix.line := 2196;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 2196 "extend-ocaml-syntax.html.mlx";;
   () 
let () =
  Camlmix.line := 2196;
  Camlmix.char := 9;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 2196 "extend-ocaml-syntax.html.mlx";;
         "\n<p>\none should simply write that:\n";;

let () =
  Camlmix.line := 2199;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 2199 "extend-ocaml-syntax.html.mlx";;
   print_with bg_ocaml 

let () =
  Camlmix.line := 2200;
  Camlmix.char := 1;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 2200 "extend-ocaml-syntax.html.mlx";;
 "let label = \"x\" in\n<:expr< f ~$label$ >>\n";;

let () =
  Camlmix.line := 2202;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 2202 "extend-ocaml-syntax.html.mlx";;
   () 
let () =
  Camlmix.line := 2202;
  Camlmix.char := 9;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 2202 "extend-ocaml-syntax.html.mlx";;
         "\n\n";;

let () =
  Camlmix.line := 2204;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 2204 "extend-ocaml-syntax.html.mlx";;
   toc_entry "Not_found" 
let () =
  Camlmix.line := 2204;
  Camlmix.char := 28;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 2204 "extend-ocaml-syntax.html.mlx";;
                            "\n\n<p>\nIf the ";;

let () =
  Camlmix.line := 2207;
  Camlmix.char := 10;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 2207 "extend-ocaml-syntax.html.mlx";;
          verb "Not_found" 
let () =
  Camlmix.line := 2207;
  Camlmix.char := 30;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 2207 "extend-ocaml-syntax.html.mlx";;
                              " exception is raised during the preprocessing\nphase (typically while running ";;

let () =
  Camlmix.line := 2208;
  Camlmix.char := 34;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 2208 "extend-ocaml-syntax.html.mlx";;
                                  verb "camlp5o" 
let () =
  Camlmix.line := 2208;
  Camlmix.char := 52;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 2208 "extend-ocaml-syntax.html.mlx";;
                                                    " \nor starting a custom toplevel), the reason may be that\na ";;

let () =
  Camlmix.line := 2210;
  Camlmix.char := 5;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 2210 "extend-ocaml-syntax.html.mlx";;
     verb "DELETE_RULE" 
let () =
  Camlmix.line := 2210;
  Camlmix.char := 27;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 2210 "extend-ocaml-syntax.html.mlx";;
                           " statement tries to delete a rule which \ndoes not exist. Some rules may be slightly changed from one version of Camlp5\nto another or they might move to other grammar entries. \n<p>\nFor the sake of compatibility, it seems to be a good practice to catch\nand ignore any ";;

let () =
  Camlmix.line := 2215;
  Camlmix.char := 18;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 2215 "extend-ocaml-syntax.html.mlx";;
                  verb "Not_found" 
let () =
  Camlmix.line := 2215;
  Camlmix.char := 38;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 2215 "extend-ocaml-syntax.html.mlx";;
                                      " exception that might be raised\nby a ";;

let () =
  Camlmix.line := 2216;
  Camlmix.char := 8;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 2216 "extend-ocaml-syntax.html.mlx";;
        verb "DELETE_RULE" 
let () =
  Camlmix.line := 2216;
  Camlmix.char := 30;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 2216 "extend-ocaml-syntax.html.mlx";;
                              " statement, which is simply an expression.\n<p>\nFor instance, this will fail with some older versions of Camlp5:\n";;

let () =
  Camlmix.line := 2219;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 2219 "extend-ocaml-syntax.html.mlx";;
   print_with bg_ocaml 

let () =
  Camlmix.line := 2220;
  Camlmix.char := 1;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 2220 "extend-ocaml-syntax.html.mlx";;
 "DELETE_RULE Pcaml.patt: LIDENT END\n";;

let () =
  Camlmix.line := 2221;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 2221 "extend-ocaml-syntax.html.mlx";;
   () 
let () =
  Camlmix.line := 2221;
  Camlmix.char := 9;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 2221 "extend-ocaml-syntax.html.mlx";;
         "\n<p>\nBut that should be a much better compromise:\n";;

let () =
  Camlmix.line := 2224;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 2224 "extend-ocaml-syntax.html.mlx";;
   print_with bg_ocaml 

let () =
  Camlmix.line := 2225;
  Camlmix.char := 1;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 2225 "extend-ocaml-syntax.html.mlx";;
 "(try DELETE_RULE Pcaml.patt: LIDENT END\n with Not_found -> ())\n";;

let () =
  Camlmix.line := 2227;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 2227 "extend-ocaml-syntax.html.mlx";;
   () 
let () =
  Camlmix.line := 2227;
  Camlmix.char := 9;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 2227 "extend-ocaml-syntax.html.mlx";;
         "\n\n";;

let () =
  Camlmix.line := 2229;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 2229 "extend-ocaml-syntax.html.mlx";;
   camlmix_footer () 
let () =
  Camlmix.line := 2229;
  Camlmix.char := 24;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 2229 "extend-ocaml-syntax.html.mlx";;
                        "\n";;

let () =
  Camlmix.line := 2230;
  Camlmix.char := 3;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

# 2230 "extend-ocaml-syntax.html.mlx";;
   include_file "end_big_table" 
let () =
  Camlmix.line := 2230;
  Camlmix.char := 35;
  Camlmix.source := "extend-ocaml-syntax.html.mlx"
;;

let () = !Camlmix.printer 
# 2230 "extend-ocaml-syntax.html.mlx";;
                                   "\n</body>\n</html>\n";;

