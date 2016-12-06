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

# 1 "micmatch-howto.html.mlx";;

let () =
  Camlmix.line := 1;
  Camlmix.char := 1;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 1 "micmatch-howto.html.mlx";;
 "";;

let () =
  Camlmix.line := 1;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 1 "micmatch-howto.html.mlx";;
  
#load "utils.cmo";;
#use "topfind";;
#require "caml2html";;
#require "mikmatch_pcre";;
#load "unmix.cmo";;
#load "print_ocaml.cmo";;
open Print_ocaml
open Utils
open Camlmix

let () =
  Camlmix.line := 11;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 11 "micmatch-howto.html.mlx";;
   "\n";;

let () =
  Camlmix.line := 12;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 12 "micmatch-howto.html.mlx";;
   include_file "doctype" 
let () =
  Camlmix.line := 12;
  Camlmix.char := 29;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 12 "micmatch-howto.html.mlx";;
                             "\n<html>\n<head>\n";;

let () =
  Camlmix.line := 15;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 15 "micmatch-howto.html.mlx";;
   title 
"Micmatch - Tutorial and FAQ"

let () =
  Camlmix.line := 17;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 17 "micmatch-howto.html.mlx";;
   "\n";;

let () =
  Camlmix.line := 18;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 18 "micmatch-howto.html.mlx";;
   include_file "charset" 
let () =
  Camlmix.line := 18;
  Camlmix.char := 29;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 18 "micmatch-howto.html.mlx";;
                             "\n";;

let () =
  Camlmix.line := 19;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 19 "micmatch-howto.html.mlx";;
   include_file "stylesheet" 
let () =
  Camlmix.line := 19;
  Camlmix.char := 32;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 19 "micmatch-howto.html.mlx";;
                                "\n";;

let () =
  Camlmix.line := 20;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 20 "micmatch-howto.html.mlx";;
   include_file "ocaml-stylesheet" 
let () =
  Camlmix.line := 20;
  Camlmix.char := 38;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 20 "micmatch-howto.html.mlx";;
                                      "\n";;

let () =
  Camlmix.line := 21;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 21 "micmatch-howto.html.mlx";;
   include_file "icon" 
let () =
  Camlmix.line := 21;
  Camlmix.char := 26;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 21 "micmatch-howto.html.mlx";;
                          "\n";;

let () =
  Camlmix.line := 22;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 22 "micmatch-howto.html.mlx";;
   include_file "commonlinks" 
let () =
  Camlmix.line := 22;
  Camlmix.char := 33;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 22 "micmatch-howto.html.mlx";;
                                 "\n</head>\n<body>\n";;

let () =
  Camlmix.line := 25;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 25 "micmatch-howto.html.mlx";;
   include_file "hitcounter" 
let () =
  Camlmix.line := 25;
  Camlmix.char := 32;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 25 "micmatch-howto.html.mlx";;
                                "\n";;

let () =
  Camlmix.line := 26;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 26 "micmatch-howto.html.mlx";;
   include_file "start_big_table" 
let () =
  Camlmix.line := 26;
  Camlmix.char := 37;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 26 "micmatch-howto.html.mlx";;
                                     "\n";;

let () =
  Camlmix.line := 27;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 27 "micmatch-howto.html.mlx";;
   top_menu ocaml 
let () =
  Camlmix.line := 27;
  Camlmix.char := 21;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 27 "micmatch-howto.html.mlx";;
                     "\n\n";;

let () =
  Camlmix.line := 29;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 29 "micmatch-howto.html.mlx";;
  
open Printf

let () =
  Camlmix.line := 31;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 31 "micmatch-howto.html.mlx";;
   "\n\n<h1>Micmatch Tutorial and FAQ\n";;

let () =
  Camlmix.line := 34;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 34 "micmatch-howto.html.mlx";;
   include_file "2camels" 
let () =
  Camlmix.line := 34;
  Camlmix.char := 29;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 34 "micmatch-howto.html.mlx";;
                             "</h1>\n\n\n<p>\nThis is a tutorial on how to use <a href=\"micmatch.html\">Micmatch</a> \nin practice. It covers the PCRE variant of Micmatch, which is the default.\nFor a complete but concise description of all the features that are \nsupported, see the <a href=\"micmatch-manual\">reference manual</a>.\n\n<p>\nFor a good tutorial on regexp matching (in Perl-like syntax), go to \n<a href=\"http://www.regular-expressions.info/tutorial.html\">www.regular-expressions.info</a>.\n\n";;

let () =
  Camlmix.line := 47;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 47 "micmatch-howto.html.mlx";;
   let (toc_item0, toc_item1, toc_item2, toc_entry, toc_link) = make_toc () 
let () =
  Camlmix.line := 47;
  Camlmix.char := 79;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 47 "micmatch-howto.html.mlx";;
                                                                               "\n\n<div class=toc>\n<b>Contents</b><br>\n";;

let () =
  Camlmix.line := 51;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 51 "micmatch-howto.html.mlx";;
   toc_item0 ~id:"whatfor" "What is Micmatch for?" 
let () =
  Camlmix.line := 51;
  Camlmix.char := 54;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 51 "micmatch-howto.html.mlx";;
                                                      "\n";;

let () =
  Camlmix.line := 52;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 52 "micmatch-howto.html.mlx";;
   toc_item0 ~id:"camlp4" "Is Micmatch a new language?" 
let () =
  Camlmix.line := 52;
  Camlmix.char := 59;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 52 "micmatch-howto.html.mlx";;
                                                           "\n";;

let () =
  Camlmix.line := 53;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 53 "micmatch-howto.html.mlx";;
   toc_item0 ~id:"why" 
    "What's wrong with traditional regexp libraries such as Str or PCRE?" 
let () =
  Camlmix.line := 54;
  Camlmix.char := 77;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 54 "micmatch-howto.html.mlx";;
                                                                             "\n";;

let () =
  Camlmix.line := 55;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 55 "micmatch-howto.html.mlx";;
   toc_item0 ~id:"features" "Features at a glance" 
let () =
  Camlmix.line := 55;
  Camlmix.char := 54;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 55 "micmatch-howto.html.mlx";;
                                                      "\n";;

let () =
  Camlmix.line := 56;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 56 "micmatch-howto.html.mlx";;
   toc_item0 ~id:"compile" "How to compile programs which use Micmatch" 
let () =
  Camlmix.line := 56;
  Camlmix.char := 75;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 56 "micmatch-howto.html.mlx";;
                                                                           "\n";;

let () =
  Camlmix.line := 57;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 57 "micmatch-howto.html.mlx";;
   toc_item1 ~id:"toplevel" "Interactive use" 
let () =
  Camlmix.line := 57;
  Camlmix.char := 49;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 57 "micmatch-howto.html.mlx";;
                                                 "\n";;

let () =
  Camlmix.line := 58;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 58 "micmatch-howto.html.mlx";;
   toc_item1 ~id:"standalone" "Compilation into bytecode or native code" 
let () =
  Camlmix.line := 58;
  Camlmix.char := 76;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 58 "micmatch-howto.html.mlx";;
                                                                            "\n";;

let () =
  Camlmix.line := 59;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 59 "micmatch-howto.html.mlx";;
   toc_item0 ~id:"regexps" "How to define a text pattern" 
let () =
  Camlmix.line := 59;
  Camlmix.char := 61;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 59 "micmatch-howto.html.mlx";;
                                                             "\n";;

let () =
  Camlmix.line := 60;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 60 "micmatch-howto.html.mlx";;
   toc_item1 ~id:"regexp-basics" "Basics of the syntax" 
let () =
  Camlmix.line := 60;
  Camlmix.char := 59;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 60 "micmatch-howto.html.mlx";;
                                                           "\n";;

let () =
  Camlmix.line := 61;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 61 "micmatch-howto.html.mlx";;
   toc_item1 ~id:"regexp-matching" "Matching a text pattern" 
let () =
  Camlmix.line := 61;
  Camlmix.char := 64;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 61 "micmatch-howto.html.mlx";;
                                                                "\n";;

let () =
  Camlmix.line := 62;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 62 "micmatch-howto.html.mlx";;
   toc_item0 ~id:"lines" "How to scan the lines of a file" 
let () =
  Camlmix.line := 62;
  Camlmix.char := 62;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 62 "micmatch-howto.html.mlx";;
                                                              "\n";;

let () =
  Camlmix.line := 63;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 63 "micmatch-howto.html.mlx";;
   toc_item0 ~id:"filter" "Does it just match?" 
let () =
  Camlmix.line := 63;
  Camlmix.char := 51;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 63 "micmatch-howto.html.mlx";;
                                                   "\n";;

let () =
  Camlmix.line := 64;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 64 "micmatch-howto.html.mlx";;
   toc_item0 ~id:"substrings" 
      "How to extract substrings from a matched pattern" 
let () =
  Camlmix.line := 65;
  Camlmix.char := 60;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 65 "micmatch-howto.html.mlx";;
                                                            "\n";;

let () =
  Camlmix.line := 66;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 66 "micmatch-howto.html.mlx";;
   toc_item0 ~id:"laziness" 
      "Lazy vs. greedy matching" 
let () =
  Camlmix.line := 67;
  Camlmix.char := 36;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 67 "micmatch-howto.html.mlx";;
                                    "\n";;

let () =
  Camlmix.line := 68;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 68 "micmatch-howto.html.mlx";;
   toc_item0 ~id:"conversions" 
      "Shortcuts to convert substrings to ints, floats or something else" 
let () =
  Camlmix.line := 69;
  Camlmix.char := 77;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 69 "micmatch-howto.html.mlx";;
                                                                             "\n";;

let () =
  Camlmix.line := 70;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 70 "micmatch-howto.html.mlx";;
   toc_item0 ~id:"numbers" "How to parse numbers" 
let () =
  Camlmix.line := 70;
  Camlmix.char := 53;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 70 "micmatch-howto.html.mlx";;
                                                     "\n";;

let () =
  Camlmix.line := 71;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 71 "micmatch-howto.html.mlx";;
   toc_item0 ~id:"capture-object" "Packing subgroups into a single object" 
let () =
  Camlmix.line := 71;
  Camlmix.char := 78;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 71 "micmatch-howto.html.mlx";;
                                                                              "\n";;

let () =
  Camlmix.line := 72;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 72 "micmatch-howto.html.mlx";;
   toc_item0 ~id:"locate" "How to locate a pattern in a string" 
let () =
  Camlmix.line := 72;
  Camlmix.char := 67;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 72 "micmatch-howto.html.mlx";;
                                                                   "\n";;

let () =
  Camlmix.line := 73;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 73 "micmatch-howto.html.mlx";;
   toc_item0 ~id:"case" "How to ignore the case of the characters" 
let () =
  Camlmix.line := 73;
  Camlmix.char := 70;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 73 "micmatch-howto.html.mlx";;
                                                                      "\n";;

let () =
  Camlmix.line := 74;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 74 "micmatch-howto.html.mlx";;
   toc_item0 ~id:"collect" "How to get a list of the matched substrings" 
let () =
  Camlmix.line := 74;
  Camlmix.char := 76;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 74 "micmatch-howto.html.mlx";;
                                                                            "\n";;

let () =
  Camlmix.line := 75;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 75 "micmatch-howto.html.mlx";;
   toc_item0 ~id:"replace" "How to replace specific patterns in a string" 
let () =
  Camlmix.line := 75;
  Camlmix.char := 77;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 75 "micmatch-howto.html.mlx";;
                                                                             "\n";;

let () =
  Camlmix.line := 76;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 76 "micmatch-howto.html.mlx";;
   toc_item0 ~id:"split" "How to split a string into a list of components" 
let () =
  Camlmix.line := 76;
  Camlmix.char := 78;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 76 "micmatch-howto.html.mlx";;
                                                                              "\n";;

let () =
  Camlmix.line := 77;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 77 "micmatch-howto.html.mlx";;
   toc_item0 ~id:"assertions"
      "How to test characters without consuming them" 
let () =
  Camlmix.line := 78;
  Camlmix.char := 57;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 78 "micmatch-howto.html.mlx";;
                                                         "\n";;

let () =
  Camlmix.line := 79;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 79 "micmatch-howto.html.mlx";;
   toc_item0 ~id:"arguments" "How to search for a string which
is unknown at compile-time" 
let () =
  Camlmix.line := 80;
  Camlmix.char := 31;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 80 "micmatch-howto.html.mlx";;
                               "\n";;

let () =
  Camlmix.line := 81;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 81 "micmatch-howto.html.mlx";;
   toc_item0 ~id:"include" "How to reuse named regexps in other files" 
let () =
  Camlmix.line := 81;
  Camlmix.char := 74;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 81 "micmatch-howto.html.mlx";;
                                                                          "\n";;

let () =
  Camlmix.line := 82;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 82 "micmatch-howto.html.mlx";;
   toc_item0 ~id:"encodings"
      "Does Micmatch support non-ASCII character encodings?" 
let () =
  Camlmix.line := 83;
  Camlmix.char := 64;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 83 "micmatch-howto.html.mlx";;
                                                                "\n";;

let () =
  Camlmix.line := 84;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 84 "micmatch-howto.html.mlx";;
   toc_item0 ~id:"non-regexp" "Miscellaneous non-regexp problems" 
let () =
  Camlmix.line := 84;
  Camlmix.char := 69;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 84 "micmatch-howto.html.mlx";;
                                                                     "\n</div>\n\n";;

let () =
  Camlmix.line := 87;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 87 "micmatch-howto.html.mlx";;
   toc_entry "whatfor" 
let () =
  Camlmix.line := 87;
  Camlmix.char := 26;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 87 "micmatch-howto.html.mlx";;
                          "\n\n<p>\nMicmatch is a text manipulation facility for Objective Caml.\n<p>\nMicmatch adds static support for regular expressions in the \nObjective Caml language. It means that regular expressions are made part\nof the programming language, and therefore their syntax is more natural\nand their correctness is checked during the compilation process.\n<p>\nWhat does all of this mean? It means:\n<ul>\n<li> you can easily extract the data you want from any piece of text,\n<li> the compiler tells you exactly where you made a mistake in a regular\nexpression, i.e. the text pattern that you are looking for,\n<li> you don't need to define mysterious strings of characters which are full\nof unreadable backslashes anymore,\n<li> you benefit from syntax highlighting with any OCaml-aware text editor.\n</ul>\n\n<p>\nMicmatch is not:\n<ul>\n<li> a replacement for parsers of programming languages such as \nthose that are implemented using ocamllex and ocamlyacc\n<li> a library that implements regular expression engines in itself but it\nprovides a syntaxic layer which makes them much easier and safer to use\n</ul>\n\n\n";;

let () =
  Camlmix.line := 117;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 117 "micmatch-howto.html.mlx";;
   toc_entry "camlp4" 
let () =
  Camlmix.line := 117;
  Camlmix.char := 25;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 117 "micmatch-howto.html.mlx";;
                         "\n\n<p>\nYes and no.\nYes because it introduces a new syntax that does not exist in regular\nOCaml, and no because it is just a library that is loaded \nby the OCaml preprocessor, Camlp4.\n\n<p>\nSo you are still using the <a href=\"http://caml.inria.fr\">OCaml system</a>, \nwith all its benefits.\n\n\n";;

let () =
  Camlmix.line := 130;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 130 "micmatch-howto.html.mlx";;
   toc_entry "why" 
let () =
  Camlmix.line := 130;
  Camlmix.char := 22;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 130 "micmatch-howto.html.mlx";;
                      "\n\n<p>\nRegexps are programs. They have to be compiled before they can be used.\nLike any program, we prefer them to be easy to write, easy to read, \nsafe, and fast. This is why it is better to integrate them tightly\nin the programming language we are using, which is OCaml in our case.\n\n<p>\n<table class=real-table>\n<tr>\n<th></th>\n<th>Regexp library used directly (Str or PCRE)</th>\n<th>Micmatch (using Str or PCRE internally)</th>\n</tr>\n";;

let () =
  Camlmix.line := 145;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 145 "micmatch-howto.html.mlx";;
   
let row x y z =
  printf "<tr><th>%s</th><td>%s</td><td>%s</td></tr>" x y z 

let () =
  Camlmix.line := 148;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 148 "micmatch-howto.html.mlx";;
   "\n";;

let () =
  Camlmix.line := 149;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 149 "micmatch-howto.html.mlx";;
   row "compilation into a regexp engine" 
    "at runtime only, explicit, usually not at the same place in the program \
     than where it is actually used" 
    "compile-time checks, implicit runtime compilation on program startup"

let () =
  Camlmix.line := 153;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 153 "micmatch-howto.html.mlx";;
   "\n";;

let () =
  Camlmix.line := 154;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 154 "micmatch-howto.html.mlx";;
   row "syntax highlighting"
    "just a monochrome string (under OCaml modes for emacs or vim)"
    "natural highlighting under any text-editor that highlights OCaml code \
     properly: strings, characters, keywords, \
     lowercase and uppercase identifiers"

let () =
  Camlmix.line := 159;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 159 "micmatch-howto.html.mlx";;
   "\n";;

let () =
  Camlmix.line := 160;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 160 "micmatch-howto.html.mlx";;
   row "error reporting"
    "at runtime only, does not point directly to the exact location \
     in the program"
    "at compile-time, points directly to the fragment of the regexp that \
     is problematic"

let () =
  Camlmix.line := 165;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 165 "micmatch-howto.html.mlx";;
   "\n";;

let () =
  Camlmix.line := 166;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 166 "micmatch-howto.html.mlx";;
   row "extraction of substrings from a matched pattern (capturing groups)"
    "checked at runtime only; using integer constants to refer to groups \
     is error-prone, especially when adding or removing groups from the \
     regexp"
    "only named groups which are checked at compile-time; the semantics \
     guarantees that every named group is well-defined when used in an OCaml \
     expression"

let () =
  Camlmix.line := 173;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 173 "micmatch-howto.html.mlx";;
   "\n";;

let () =
  Camlmix.line := 174;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 174 "micmatch-howto.html.mlx";;
   row "comments"
    "either outside of the regexp string or inside (PCRE only) but \
     spaces must be expressed with \\s"
    "OCaml comments can appear between any piece of the regexp"

let () =
  Camlmix.line := 178;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 178 "micmatch-howto.html.mlx";;
   "\n";;

let () =
  Camlmix.line := 179;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 179 "micmatch-howto.html.mlx";;
   row "speed"
    "state-of-the-art"
    "same! (since the same libraries are used at runtime)"

let () =
  Camlmix.line := 182;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 182 "micmatch-howto.html.mlx";;
   "\n";;

let () =
  Camlmix.line := 183;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 183 "micmatch-howto.html.mlx";;
   row "protection of special characters"
    "uses backslashes, requires a full knowledge of which character is \
     special and which one is not; backslashes must be doubled in \
     OCaml string literals"
    "string literals are used to match exactly what appears in the string; \
     operators are not mixed with characters to match"

let () =
  Camlmix.line := 189;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 189 "micmatch-howto.html.mlx";;
   "\n";;

let () =
  Camlmix.line := 190;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 190 "micmatch-howto.html.mlx";;
   row "integration in ML-style pattern-matching \
        (general-purpose destructuring of data other than strings)"
    "no"
    "yes; but unmatched cases are not detected anymore when a regexp is being \
     used in the pattern-matching"

let () =
  Camlmix.line := 195;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 195 "micmatch-howto.html.mlx";;
   "\n";;

let () =
  Camlmix.line := 196;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 196 "micmatch-howto.html.mlx";;
   row "runtime definition of regexps"
    "yes"
    "partially: gaps for sequences are accepted in regexps and are filled
     at runtime (possibly case-insensitive); \
     Str or PCRE-OCaml should be used directly in other cases"

let () =
  Camlmix.line := 201;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 201 "micmatch-howto.html.mlx";;
   "\n";;

let () =
  Camlmix.line := 202;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 202 "micmatch-howto.html.mlx";;
   row "composition of regexps (defining and using macros)"
    "do-it-yourself"
    "yes"

let () =
  Camlmix.line := 205;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 205 "micmatch-howto.html.mlx";;
   "\n</table>\n\n\n";;

let () =
  Camlmix.line := 209;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 209 "micmatch-howto.html.mlx";;
   toc_entry "features" 
let () =
  Camlmix.line := 209;
  Camlmix.char := 27;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 209 "micmatch-howto.html.mlx";;
                           "\n\n<p>\nMicmatch has the following features:\n<ul>\n<li> string-manipulation using regexp-based matching, searching and replacing\n<li> use the regexp where it appears, without penalty\n<li> static verification of the regexps\n<li> no backslashes\n<li> extended ocamllex syntax\n<li> naming and composition of regexps\n<li> named capturing groups\n<li> positional markers\n<li> lazy quantifiers\n<li> possessive quantifiers\n<li> back references\n<li> lookahead and lookbehind assertions\n<li> local case-insensitive matching\n<li> in-place conversion of capturing groups\n<li> search for user-defined sequences\n<li> speed of PCRE\n<li> safety of functional programming and static type-checking\n<li> pattern-matching (ML) and pattern-matching (string regexps) \n     finally unified\n<li> just a library for Camlp4 and OCaml\n<li> fully documented\n<li> open-source, free and distributed with a BSD license\n</ul>\n\n\n";;

let () =
  Camlmix.line := 239;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 239 "micmatch-howto.html.mlx";;
   toc_entry "compile" 
let () =
  Camlmix.line := 239;
  Camlmix.char := 26;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 239 "micmatch-howto.html.mlx";;
                          "\n\n<p>\nWe assume that you have successfully installed Micmatch \n(the normal installation requires the PCRE library which is written in C, \nthe bindings for OCaml PCRE-OCaml, \nand Findlib i.e. the <code>ocamlfind</code> command).\n\n";;

let () =
  Camlmix.line := 247;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 247 "micmatch-howto.html.mlx";;
   toc_entry "toplevel" 
let () =
  Camlmix.line := 247;
  Camlmix.char := 27;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 247 "micmatch-howto.html.mlx";;
                           "\nNow a <code>micmatch</code> command should be available. Use it as \nreplacement for the <code>ocaml</code> command either in interactive mode:\n";;

let () =
  Camlmix.line := 250;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 250 "micmatch-howto.html.mlx";;
   print_with ocamltop 
let () =
  Camlmix.line := 250;
  Camlmix.char := 26;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 250 "micmatch-howto.html.mlx";;
                          "\n$ micmatch\n        Objective Caml version 3.08.2\n\n        Camlp4 Parsing version 3.08.2\n\n# \n";;

let () =
  Camlmix.line := 257;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 257 "micmatch-howto.html.mlx";;
   () 
let () =
  Camlmix.line := 257;
  Camlmix.char := 9;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 257 "micmatch-howto.html.mlx";;
         "\n<p>\nor in scripting mode:\n";;

let () =
  Camlmix.line := 260;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 260 "micmatch-howto.html.mlx";;
   print_with verbatim 
let () =
  Camlmix.line := 260;
  Camlmix.char := 26;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 260 "micmatch-howto.html.mlx";;
                          "\n$ micmatch source_file.ml\n";;

let () =
  Camlmix.line := 262;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 262 "micmatch-howto.html.mlx";;
   () 
let () =
  Camlmix.line := 262;
  Camlmix.char := 9;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 262 "micmatch-howto.html.mlx";;
         "\n\n<p>\nIn interactive mode, it is suggested to use <code>ledit</code>,\nwhich can be installed easily from GODI. It provides a line-editing facility\nthat is not available with the default <code>ocaml</code> \nor <code>micmatch</code> commands:\n";;

let () =
  Camlmix.line := 269;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 269 "micmatch-howto.html.mlx";;
   print_with ocamltop 
let () =
  Camlmix.line := 269;
  Camlmix.char := 26;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 269 "micmatch-howto.html.mlx";;
                          "\n$ ledit micmatch\n        Objective Caml version 3.08.2\n\n        Camlp4 Parsing version 3.08.2\n\n# \n";;

let () =
  Camlmix.line := 276;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 276 "micmatch-howto.html.mlx";;
   () 
let () =
  Camlmix.line := 276;
  Camlmix.char := 9;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 276 "micmatch-howto.html.mlx";;
         "\n\n<p>\nFor even more comfort, \nyou can tell ledit to remember what you typed during your last\nsessions using this command:\n";;

let () =
  Camlmix.line := 282;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 282 "micmatch-howto.html.mlx";;
   print_with verbatim 
let () =
  Camlmix.line := 282;
  Camlmix.char := 26;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 282 "micmatch-howto.html.mlx";;
                          "\nledit -x -h some_file micmatch'\n";;

let () =
  Camlmix.line := 284;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 284 "micmatch-howto.html.mlx";;
   () 
let () =
  Camlmix.line := 284;
  Camlmix.char := 9;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 284 "micmatch-howto.html.mlx";;
         "\n<p>\nFor instance, if your command interpreter is <code>bash</code>, \nyou can place the following\nline in your <code>.bashrc</code> file:\n";;

let () =
  Camlmix.line := 289;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 289 "micmatch-howto.html.mlx";;
   print_with verbatim 
let () =
  Camlmix.line := 289;
  Camlmix.char := 26;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 289 "micmatch-howto.html.mlx";;
                          "\nalias mic='ledit -x -h ~/.micmatch_history micmatch'\n";;

let () =
  Camlmix.line := 291;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 291 "micmatch-howto.html.mlx";;
   () 
let () =
  Camlmix.line := 291;
  Camlmix.char := 9;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 291 "micmatch-howto.html.mlx";;
         "\n<p>\nand then invoke <code>mic</code> for your\ninteractive Micmatch sessions.\n\n<p>\nNote that in OCaml programs we can usually avoid writing the <code>;;</code>\nsymbol. In interactive mode, the double semicolon is however required\nafter each phrase. In the examples we will assume that you are typing\nthe code directly into a file and thus we will omit the unnecessary\n<code>;;</code>.\n\n<p>\nNote to the users of OCaml/Camlp4 3.10 and 3.11: the package has been\nrenamed \"mikmatch\" with a \"k\" because of significant changes in the \nCamlp4 tool.\nThere is no longer a <code>micmatch</code> (or <code>mikmatch</code>) command.\nMikmatch cannot be used interactively under Camlp4 3.10, but it is possible\nagain with 3.11. The package must have been installed with Findlib; try the\nfollowing command and it should return a path:\n<pre>\n$ ocamlfind query mikmatch_pcre\n/home/martin/godi3110/lib/ocaml/site-lib/mikmatch_pcre\n</pre>\n\n<p>\nIn this case, use these directives:\n<pre>\n$ ocaml\n        Objective Caml version 3.11.0\n\n# #use \"topfind\";;\n- : unit = ()\nFindlib has been successfully loaded. Additional directives:\n  #require \"package\";;      to load a package\n  #list;;                   to list the available packages\n  #camlp4o;;                to load camlp4 (standard syntax)\n  #camlp4r;;                to load camlp4 (revised syntax)\n  #predicates \"p,q,...\";;   to set these predicates\n  Topfind.reset();;         to force that packages will be reloaded\n  #thread;;                 to enable threads\n\n- : unit = ()\n# #require \"tophide\";;\n/home/martin/godi3110/lib/ocaml/pkg-lib/tophide: added to search path\n/home/martin/godi3110/lib/ocaml/pkg-lib/tophide/tophide.cmo: loaded\n# #require \"dynlink\";;\n/home/martin/godi/lib/ocaml/std-lib/dynlink.cma: loaded\n# #camlp4o;;\n/home/martin/godi/lib/ocaml/std-lib/camlp4: added to search path\n/home/martin/godi/lib/ocaml/std-lib/camlp4/camlp4o.cma: loaded\n        Camlp4 Parsing version 3.11.0\n\n# #require \"mikmatch_pcre\";;\n/home/martin/godi3110/lib/ocaml/pkg-lib/pcre: added to search path\n/home/martin/godi3110/lib/ocaml/pkg-lib/pcre/pcre.cma: loaded\n/home/martin/godi/lib/ocaml/std-lib/unix.cma: loaded\n/home/martin/godi3110/lib/ocaml/site-lib/mikmatch_pcre: added to search path\n/home/martin/godi3110/lib/ocaml/site-lib/mikmatch_pcre/pa_mikmatch_pcre.cma: loa\nded\n/home/martin/godi3110/lib/ocaml/site-lib/mikmatch_pcre/run_mikmatch_pcre.cma: lo\naded\n</pre>\n<p>\nPhew. Dynlink and Tophide must be loaded before camlp4o, for some \nuninteresting reasons. It's probably easier to put all of these\nin a file and load it using <code>ocaml -init mikmatch.init</code>, \nand make it a script so that it can be passed to ledit (as described above).\nThe <code>mikmatch.init</code> file would be:\n<pre>\n#use \"topfind\";;\n#require \"tophide\";;\n#require \"dynlink\";;\n#camlp4o;;\n#require \"mikmatch_pcre\";;\n</pre>\n\n\n\n\n";;

let () =
  Camlmix.line := 371;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 371 "micmatch-howto.html.mlx";;
   toc_entry "standalone" 
let () =
  Camlmix.line := 371;
  Camlmix.char := 29;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 371 "micmatch-howto.html.mlx";;
                             "\n\n<p>\nPrograms using Micmatch can of course be compiled into bytecode or \nnative code like any other OCaml program that uses Camlp4 parsing. See \n<a href=\"http://ocaml-tutorial.org/compiling_ocaml_projects\">this tutorial</a>\nfor a quick start.\n\n\n\n";;

let () =
  Camlmix.line := 381;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 381 "micmatch-howto.html.mlx";;
   toc_entry "regexps" 
let () =
  Camlmix.line := 381;
  Camlmix.char := 26;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 381 "micmatch-howto.html.mlx";;
                          "\n\n<p>\nA text pattern is defined by a regular expression, also known \nas regexp or regex.\nIn Micmatch, the regexps follow a specific syntax which is relatively \neasy to learn.\n\n";;

let () =
  Camlmix.line := 389;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 389 "micmatch-howto.html.mlx";;
   toc_entry "regexp-basics" 
let () =
  Camlmix.line := 389;
  Camlmix.char := 32;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 389 "micmatch-howto.html.mlx";;
                                "\n\n<p>\nIf you want to match a character or a sequence of characters,\njust write them as an OCaml string:\n";;

let () =
  Camlmix.line := 394;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 394 "micmatch-howto.html.mlx";;
   print_with ocamlpre 
let () =
  Camlmix.line := 394;
  Camlmix.char := 26;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 394 "micmatch-howto.html.mlx";;
                          "\nRE hello = \"Hello!\" (* matches exactly the string \"Hello!\" *)\nRE hello = \"***\"    (* matches exactly three stars *)\n";;

let () =
  Camlmix.line := 397;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 397 "micmatch-howto.html.mlx";;
   () 
let () =
  Camlmix.line := 397;
  Camlmix.char := 9;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 397 "micmatch-howto.html.mlx";;
         "\n<p>\nThere is no special character to remember! All the special characters appear\noutside of the string or character literals.\n<p>\nIf you want to match one character taken from a given set of characters,\nuse the bracket notation:\n";;

let () =
  Camlmix.line := 404;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 404 "micmatch-howto.html.mlx";;
   print_with ocamlpre 
let () =
  Camlmix.line := 404;
  Camlmix.char := 26;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 404 "micmatch-howto.html.mlx";;
                          "\n(* All of the following definitions are equivalent,\n   they match one digit within the range 0-7: *)\nRE octal  = ['0'-'7']\nRE octal1 = [\"01234567\"]\nRE octal2 = ['0' '1' '2' '3' '4' '5' '6' '7']\nRE octal3 = ['0'-'4' '5'-'7']\nRE octal4 = digit # ['8' '9']  (* digit is a predefined set of characters *)\nRE octal5 = \"0\" | ['1'-'7']\nRE octal6 = ['0'-'4'] | ['5'-'7']\n";;

let () =
  Camlmix.line := 414;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 414 "micmatch-howto.html.mlx";;
   () 
let () =
  Camlmix.line := 414;
  Camlmix.char := 9;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 414 "micmatch-howto.html.mlx";;
         "\n<p>\nWe can also specify which characters should not be matched:\n";;

let () =
  Camlmix.line := 417;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 417 "micmatch-howto.html.mlx";;
   print_with ocamlpre 
let () =
  Camlmix.line := 417;
  Camlmix.char := 26;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 417 "micmatch-howto.html.mlx";;
                          "\nRE octal = ['0'-'7']       (* this matches an octal digit *)\nRE not_octal  = [^'0'-'7'] (* this matches any character but an octal digit *)\nRE not_octal' = [^ octal]  (* another way to write it *)\n";;

let () =
  Camlmix.line := 421;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 421 "micmatch-howto.html.mlx";;
   () 
let () =
  Camlmix.line := 421;
  Camlmix.char := 9;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 421 "micmatch-howto.html.mlx";;
         "\n<p>\nIf we want to match any character we use the underscore symbol:\n";;

let () =
  Camlmix.line := 424;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 424 "micmatch-howto.html.mlx";;
   print_with ocamlpre 
let () =
  Camlmix.line := 424;
  Camlmix.char := 26;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 424 "micmatch-howto.html.mlx";;
                          "\nRE paren = \"(\" _ \")\"   (* matches one character between parentheses *)\n";;

let () =
  Camlmix.line := 426;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 426 "micmatch-howto.html.mlx";;
   () 
let () =
  Camlmix.line := 426;
  Camlmix.char := 9;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 426 "micmatch-howto.html.mlx";;
         "\n\n<p>\nPatterns can be repeated:\n";;

let () =
  Camlmix.line := 430;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 430 "micmatch-howto.html.mlx";;
   print_with ocamlpre 
let () =
  Camlmix.line := 430;
  Camlmix.char := 26;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 430 "micmatch-howto.html.mlx";;
                          "\nRE anything  = _*         (* any string, as long as possible *)\nRE anything' = _* Lazy    (* any string, as short as possible *)\n\nRE opt_hello  = \"hello\"?      (* matches hello if possible, or nothing *)\nRE opt_hello' = \"hello\"? Lazy (* matches nothing if possible, or hello *)\n\nRE num = digit+        (* a non-empty sequence of digits, as long as possible;\n\t\t\t  shortcut for: digit digit* *)\nRE lazy_junk = _+ Lazy (* match one character then match any sequence\n\t\t\t  of characters and give up as early as possible *)\n\nRE at_least_one_digit = digit{1+}     (* same as digit+ *)\nRE at_least_three_digits = digit{3+}\nRE three_digits = digit{3}\nRE three_to_five_digits = digit{3-5}\nRE lazy_three_to_five_digits = digit{3-5} Lazy\n";;

let () =
  Camlmix.line := 447;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 447 "micmatch-howto.html.mlx";;
   () 
let () =
  Camlmix.line := 447;
  Camlmix.char := 9;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 447 "micmatch-howto.html.mlx";;
         "\n\n\n\n";;

let () =
  Camlmix.line := 451;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 451 "micmatch-howto.html.mlx";;
   toc_entry "regexp-matching" 
let () =
  Camlmix.line := 451;
  Camlmix.char := 34;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 451 "micmatch-howto.html.mlx";;
                                  "\n\n<p>\nMatching a string against a regexp pattern can be performed\nwith the usual <code>match ... with</code> construct, \nexcept that the\n<code>RE</code> keyword is used to introduce a regular expression.\nSay we want to test if a given string <code>s</code> matches the word \"hello\", \nin normal OCaml we would write:\n";;

let () =
  Camlmix.line := 460;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 460 "micmatch-howto.html.mlx";;
   print_with ocamlpre 
let () =
  Camlmix.line := 460;
  Camlmix.char := 26;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 460 "micmatch-howto.html.mlx";;
                          "\nmatch s with\n    \"hello\" -> true\n  | _ -> false\n";;

let () =
  Camlmix.line := 464;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 464 "micmatch-howto.html.mlx";;
   () 
let () =
  Camlmix.line := 464;
  Camlmix.char := 9;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 464 "micmatch-howto.html.mlx";;
         "\n<p>\nBut if we want to test if <code>s</code> starts with \"hello\", there is \nno way to do this with the usual pattern matching. With a regexp, it is\nas simple as this:\n";;

let () =
  Camlmix.line := 469;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 469 "micmatch-howto.html.mlx";;
   print_with ocamlpre 
let () =
  Camlmix.line := 469;
  Camlmix.char := 26;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 469 "micmatch-howto.html.mlx";;
                          "\nmatch s with\n    RE \"hello\" -> true\n  | _ -> false\n";;

let () =
  Camlmix.line := 473;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 473 "micmatch-howto.html.mlx";;
   () 
let () =
  Camlmix.line := 473;
  Camlmix.char := 9;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 473 "micmatch-howto.html.mlx";;
         "\n<p>\nNote that in both examples, the underscore character (<code>_</code>) \nis regular OCaml and means \"anything\" or in this case \"any string\", \nwhich is different from its meaning in a regular expression.\n<p>\nThe regexp must match from the beginning of the string, but the remaining,\nunmatched part of the string doesn't have to be empty.\nHave a look at this test:\n";;

let () =
  Camlmix.line := 482;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 482 "micmatch-howto.html.mlx";;
   print_with ocamltop 
let () =
  Camlmix.line := 482;
  Camlmix.char := 26;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 482 "micmatch-howto.html.mlx";;
                          "\n$ ledit micmatch\n        Objective Caml version 3.08.2\n\n        Camlp4 Parsing version 3.08.2\n\n# match \"hello world\" with\n    \"hello\" -> true\n  | _ -> false;;\n- : bool = false\n# match \"hello world\" with\n    RE \"hello\" -> true\n  | _ -> false;;\n- : bool = true\n# match \"world hello\" with\n    RE \"hello\" -> true\n  | _ -> false;;\n- : bool = false\n";;

let () =
  Camlmix.line := 500;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 500 "micmatch-howto.html.mlx";;
   () 
let () =
  Camlmix.line := 500;
  Camlmix.char := 9;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 500 "micmatch-howto.html.mlx";;
         "\n\n<p>\nIt is important to know that the matching process will try any possible\ncombination until the pattern is matched. However,\nthe combinations are tried from left to right, and\nrepeats are either greedy (the longest match is tried first) or \nlazy (the shortest match is tried first).\nThe greedy behavior is the default, laziness is triggered by the presence\nof the <code>Lazy</code> keyword.\n\n<p>\nMore possibilities are offered by Micmatch, such as the extraction of\nsubgroups or positions in the matched string, and various \nconstructs for searching and replacing patterns conveniently.\n\n<p>\nSometimes, the structure of the string to match is known in advance,\nand we just need to extract some substrings.\nThe <code>let</code> constructs can be used directly with a regexp pattern.\nAnd since <code>let RE ... = ...</code> doesn't look nice in this\nsituation, the sandwich\nnotation (<code>/ ... /</code>) has been introduced.\nThe version of the OCaml compiler that was used to compile the program\ncan be decomposed quite easily:\n";;

let () =
  Camlmix.line := 525;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 525 "micmatch-howto.html.mlx";;
   print_with ocamltop 
let () =
  Camlmix.line := 525;
  Camlmix.char := 26;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 525 "micmatch-howto.html.mlx";;
                          "\n# Sys.ocaml_version;;\n- : string = \"3.08.3\"\n# RE num = digit+;;\n# let / (num as major : int) \n        \".\" (num as minor : int) \n\n        (\".\" (num as patchlevel := fun s -> Some (int_of_string s)) \n        | (\"\" as patchlevel = None))\n\n        (\"+\" (_* as additional_info := fun s -> Some s) \n        | (\"\" as additional_info = None))\n\n        eos / = Sys.ocaml_version\n;;\nval additional_info : string option = None\nval major : int = 3\nval minor : int = 8\nval patchlevel : int option = Some 3\n";;

let () =
  Camlmix.line := 544;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 544 "micmatch-howto.html.mlx";;
   () 
let () =
  Camlmix.line := 544;
  Camlmix.char := 9;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 544 "micmatch-howto.html.mlx";;
         "\n\n<p>\nThe sandwich notation can be used in <code>match</code> cases as well.\nWhether to use it or not is just a matter of taste.\n\n<p>\nSee also ";;

let () =
  Camlmix.line := 551;
  Camlmix.char := 12;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 551 "micmatch-howto.html.mlx";;
            toc_link "numbers" "how to parse numbers" 
let () =
  Camlmix.line := 551;
  Camlmix.char := 57;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 551 "micmatch-howto.html.mlx";;
                                                         ".\n\n";;

let () =
  Camlmix.line := 553;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 553 "micmatch-howto.html.mlx";;
   toc_entry "lines" 
let () =
  Camlmix.line := 553;
  Camlmix.char := 24;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 553 "micmatch-howto.html.mlx";;
                        "\n\n<p>\nThe function <code>Micmatch.Text.iter_lines_of_file</code> allows an iteration\nover the lines of a file. Similarly, \n<code>Micmatch.Text.iter_lines_of_channel</code> can be used to scan an open\nfile, such as the standard input <code>stdin</code>.\nIn the following example, we reprint input with line numbers at the beginning\nof each line:\n";;

let () =
  Camlmix.line := 562;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 562 "micmatch-howto.html.mlx";;
   print_with ocamlpre 
let () =
  Camlmix.line := 562;
  Camlmix.char := 26;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 562 "micmatch-howto.html.mlx";;
                          "\n(* file line_numbering.ml *)\nopen Printf\nopen Micmatch\n\nlet () = \n  let n = ref 0 in\n  Text.iter_lines_of_channel\n    (fun s -> \n       incr n;\n       printf \"%3i: %s\\n%!\" !n s)\n    stdin\n";;

let () =
  Camlmix.line := 574;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 574 "micmatch-howto.html.mlx";;
   () 
let () =
  Camlmix.line := 574;
  Camlmix.char := 9;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 574 "micmatch-howto.html.mlx";;
         "\n<p>\nResult, with the source file itself as input:\n";;

let () =
  Camlmix.line := 577;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 577 "micmatch-howto.html.mlx";;
   print_with verbatim 
let () =
  Camlmix.line := 577;
  Camlmix.char := 26;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 577 "micmatch-howto.html.mlx";;
                          "\n$ micmatch line_numbering.ml < line_numbering.ml\n  1: (* file line_numbering.ml *)\n  2: open Printf\n  3: open Micmatch\n  4: \n  5: let () = \n  6:   let n = ref 0 in\n  7:   Text.iter_lines_of_channel\n  8:     (fun s -> \n  9:        incr n;\n 10:        printf \"%3i: %s\\n%!\" !n s)\n 11:     stdin\n";;

let () =
  Camlmix.line := 590;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 590 "micmatch-howto.html.mlx";;
   () 
let () =
  Camlmix.line := 590;
  Camlmix.char := 9;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 590 "micmatch-howto.html.mlx";;
         "\n\n";;

let () =
  Camlmix.line := 592;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 592 "micmatch-howto.html.mlx";;
   toc_entry "filter" 
let () =
  Camlmix.line := 592;
  Camlmix.char := 25;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 592 "micmatch-howto.html.mlx";;
                         "\n\n<p>\nThe ";;

let () =
  Camlmix.line := 595;
  Camlmix.char := 7;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 595 "micmatch-howto.html.mlx";;
       verb "FILTER" 
let () =
  Camlmix.line := 595;
  Camlmix.char := 24;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 595 "micmatch-howto.html.mlx";;
                        " macro allows you to define a function that\ntakes one string and returns ";;

let () =
  Camlmix.line := 596;
  Camlmix.char := 32;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 596 "micmatch-howto.html.mlx";;
                                verb "true" 
let () =
  Camlmix.line := 596;
  Camlmix.char := 47;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 596 "micmatch-howto.html.mlx";;
                                               " or ";;

let () =
  Camlmix.line := 596;
  Camlmix.char := 53;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 596 "micmatch-howto.html.mlx";;
                                                     verb "false" 
let () =
  Camlmix.line := 596;
  Camlmix.char := 69;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 596 "micmatch-howto.html.mlx";;
                                                                     "\nwhether the string matches the regexp or not. For instance, it can be\nused to select strings from a list:\n";;

let () =
  Camlmix.line := 599;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 599 "micmatch-howto.html.mlx";;
   print_with ocamlpre 
let () =
  Camlmix.line := 599;
  Camlmix.char := 26;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 599 "micmatch-howto.html.mlx";;
                          "\n# List.filter (FILTER int eos) [ \"-123\"; \"a\"; \"0\"; \"-1.2\" ];;\n- : string list = [\"-123\"; \"0\"]\n";;

let () =
  Camlmix.line := 602;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 602 "micmatch-howto.html.mlx";;
   () 
let () =
  Camlmix.line := 602;
  Camlmix.char := 9;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 602 "micmatch-howto.html.mlx";;
         "\n\n<p>\n";;

let () =
  Camlmix.line := 605;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 605 "micmatch-howto.html.mlx";;
   verb "FILTER" 
let () =
  Camlmix.line := 605;
  Camlmix.char := 20;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 605 "micmatch-howto.html.mlx";;
                    " is mostly useful when passed to a function that expects\na predicate. For example the ";;

let () =
  Camlmix.line := 606;
  Camlmix.char := 32;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 606 "micmatch-howto.html.mlx";;
                                verb "Micmatch.Glob" 
let () =
  Camlmix.line := 606;
  Camlmix.char := 56;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 606 "micmatch-howto.html.mlx";;
                                                        " module offers\nfunctions for listing files and selecting file paths.\nAn equivalent of the shell expression ";;

let () =
  Camlmix.line := 608;
  Camlmix.char := 41;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 608 "micmatch-howto.html.mlx";;
                                         verb "ls /home/martin/.*/*.conf" 
let () =
  Camlmix.line := 608;
  Camlmix.char := 77;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 608 "micmatch-howto.html.mlx";;
                                                                             "\nwould be:\n";;

let () =
  Camlmix.line := 610;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 610 "micmatch-howto.html.mlx";;
   print_with ocamlpre 
let () =
  Camlmix.line := 610;
  Camlmix.char := 26;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 610 "micmatch-howto.html.mlx";;
                          "\n# open Micmatch;;\n# Glob.list ~root:\"/home/martin\" [ FILTER \".\"; FILTER _* \".conf\" eos ];;\n- : string list = [\".gnupg/gpg.conf\"; \".mplayer/gui.conf\"]\n";;

let () =
  Camlmix.line := 614;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 614 "micmatch-howto.html.mlx";;
   () 
let () =
  Camlmix.line := 614;
  Camlmix.char := 9;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 614 "micmatch-howto.html.mlx";;
         "\n\n\n\n";;

let () =
  Camlmix.line := 618;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 618 "micmatch-howto.html.mlx";;
   toc_entry "substrings" 
let () =
  Camlmix.line := 618;
  Camlmix.char := 29;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 618 "micmatch-howto.html.mlx";;
                             "\n\n<p>\nThe <code>as</code> keyword is used to give a name to a part of \na pattern. When the whole pattern matches, the substring\nwhich is matched by our named subpattern becomes available directly\nunder this name.\nIn the following example, we extract the contents of the parentheses:\n";;

let () =
  Camlmix.line := 626;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 626 "micmatch-howto.html.mlx";;
   print_with ocamlpre 
let () =
  Camlmix.line := 626;
  Camlmix.char := 26;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 626 "micmatch-howto.html.mlx";;
                          "\nmatch \"acbde (result), blabla...\" with\n    RE _* \"(\" (_* as x) \")\" -> print_endline x\n  | _ -> print_endline \"Failed\"\n";;

let () =
  Camlmix.line := 630;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 630 "micmatch-howto.html.mlx";;
   () 
let () =
  Camlmix.line := 630;
  Camlmix.char := 9;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 630 "micmatch-howto.html.mlx";;
         "\n<p>\nPlease note that the regular expression that we just used will not work\nas intended when the string contains several pairs of parentheses, because\nthe matching engine is greedy by default. It means that \nthe repetitions (<code>*</code>) \nare made as long as possible before trying to match the\nrest of the pattern, an possibly giving up one character and retrying\n(backtracking). The opposite behavior, the lazy one, is to advance \nin the pattern as soon as possible. We can rewrite our example using\nlazy repetitions and a more challenging subject string:\n";;

let () =
  Camlmix.line := 641;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 641 "micmatch-howto.html.mlx";;
   print_with ocamlpre 
let () =
  Camlmix.line := 641;
  Camlmix.char := 26;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 641 "micmatch-howto.html.mlx";;
                          "\nmatch \"acbde (result), bla(bla)...\" with\n    RE _* Lazy \"(\" (_* Lazy as x) \")\" -> print_endline x\n  | _ -> print_endline \"Failed\"\n";;

let () =
  Camlmix.line := 645;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 645 "micmatch-howto.html.mlx";;
   () 
let () =
  Camlmix.line := 645;
  Camlmix.char := 9;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 645 "micmatch-howto.html.mlx";;
         "\n<p>\nIn that new case, <code>result</code> \nis still correctly extracted and displayed.\n<p>\nExercise: what would be the result if this string \n(";;

let () =
  Camlmix.line := 651;
  Camlmix.char := 4;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 651 "micmatch-howto.html.mlx";;
    print_with ocamlcode 
let () =
  Camlmix.line := 651;
  Camlmix.char := 28;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 651 "micmatch-howto.html.mlx";;
                            "\"acbde (result), bla(bla)...\"";;

let () =
  Camlmix.line := 651;
  Camlmix.char := 59;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 651 "micmatch-howto.html.mlx";;
                                                           () 
let () =
  Camlmix.line := 651;
  Camlmix.char := 65;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 651 "micmatch-howto.html.mlx";;
                                                                 ") is matched\nusing our first regexp, the greedy one?\n\n<p>\nSee ";;

let () =
  Camlmix.line := 655;
  Camlmix.char := 7;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 655 "micmatch-howto.html.mlx";;
       toc_link "laziness" "the section on laziness" 
let () =
  Camlmix.line := 655;
  Camlmix.char := 56;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 655 "micmatch-howto.html.mlx";;
                                                        " for more information.\n\n\n\n";;

let () =
  Camlmix.line := 659;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 659 "micmatch-howto.html.mlx";;
   toc_entry "laziness" 
let () =
  Camlmix.line := 659;
  Camlmix.char := 27;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 659 "micmatch-howto.html.mlx";;
                           "\n\n<p>\nThere are two ways of matching a repeated pattern <b>pat</b> within a regexp:\n<ul>\n<li> the greedy way: repeat the pattern <b>pat</b>\nas many times as possible before trying to match the rest of the regexp,\nand then give up one repetition of <b>pat</b> and retry, and so on.\nThis is the default.\n<li> the lazy or impatient way: try to advance in the regexp first, \nand only if it fails, try to match one more occurence of <b>pat</b>\nand continue.\n</ul>\n\n<p>\nIt is just a question of order in which the matching engine proceeds:\nif there is only one way of matching a given string with a given pattern,\nthen the result will not be affected by the lazy or greedy behavior \nfor matching repeated subpatterns.\n\n<p>\nOften, the lazy behavior in regexps is described as \"shortest match\".\nThis is misleading since introducing lazy behavior may well lead to \na larger matched substring. Consider the following where being\nimpatient finally leads to a longer substring:\n";;

let () =
  Camlmix.line := 684;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 684 "micmatch-howto.html.mlx";;
   print_with ocamltop 
let () =
  Camlmix.line := 684;
  Camlmix.char := 26;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 684 "micmatch-howto.html.mlx";;
                          "\n# let / \"a\"?      (\"b\" | \"abc\") as x / = \"abc\";;\nval x : string = \"ab\"\n# let / \"a\"? Lazy (\"b\" | \"abc\") as x / = \"abc\";;\nval x : string = \"abc\"\n";;

let () =
  Camlmix.line := 689;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 689 "micmatch-howto.html.mlx";;
   () 
let () =
  Camlmix.line := 689;
  Camlmix.char := 9;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 689 "micmatch-howto.html.mlx";;
         "\n\n<p>\nAll you have is to understand this example...\nRemember that the matching engine:\n<ul>\n<li> proceeds always from left to right,\n<li> tries alternatives from left to right,\n<li> by default is greedy,\n<li> can be made lazy by placing <code>Lazy</code> after \na quantifier (<code>?</code>, <code>*</code>, <code>+</code> or \n<code>{</code>...<code>}</code>)\n</ul>\n\n\n";;

let () =
  Camlmix.line := 704;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 704 "micmatch-howto.html.mlx";;
   toc_entry "conversions" 
let () =
  Camlmix.line := 704;
  Camlmix.char := 30;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 704 "micmatch-howto.html.mlx";;
                              "\n\n<p>\nIn-place conversions of the substrings can be performed, using either\nthe predefined converters <code>int</code>, <code>float</code> or\n<code>option</code> or custom converters:\n";;

let () =
  Camlmix.line := 710;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 710 "micmatch-howto.html.mlx";;
   print_with ocamlpre 
let () =
  Camlmix.line := 710;
  Camlmix.char := 26;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 710 "micmatch-howto.html.mlx";;
                          "\nmatch \"123/456\" with\n    RE (digit+ as x : int) \"/\" (digit+ as y : int) -> x, y\n  | _ -> 0, 0\n";;

let () =
  Camlmix.line := 714;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 714 "micmatch-howto.html.mlx";;
   () 
let () =
  Camlmix.line := 714;
  Camlmix.char := 9;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 714 "micmatch-howto.html.mlx";;
         "\n<p>\nwhich is equivalent to:\n";;

let () =
  Camlmix.line := 717;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 717 "micmatch-howto.html.mlx";;
   print_with ocamlpre 
let () =
  Camlmix.line := 717;
  Camlmix.char := 26;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 717 "micmatch-howto.html.mlx";;
                          "\nmatch \"123/456\" with\n    RE (digit+ as sx) \"/\" (digit+ as sy) -> int_of_string sx, int_of_string sy\n  | _ -> 0, 0\n";;

let () =
  Camlmix.line := 721;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 721 "micmatch-howto.html.mlx";;
   () 
let () =
  Camlmix.line := 721;
  Camlmix.char := 9;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 721 "micmatch-howto.html.mlx";;
         "\n<p>\nHowever the notation is useful when used in more complex patterns:\n";;

let () =
  Camlmix.line := 724;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 724 "micmatch-howto.html.mlx";;
   print_with ocamlpre 
let () =
  Camlmix.line := 724;
  Camlmix.char := 26;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 724 "micmatch-howto.html.mlx";;
                          "\nmatch 123, 45, \"6789\" with\n    i, _, (RE digit+ as j : int) \n  | j, i, _ -> i * j + 1\n";;

let () =
  Camlmix.line := 728;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 728 "micmatch-howto.html.mlx";;
   () 
let () =
  Camlmix.line := 728;
  Camlmix.char := 9;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 728 "micmatch-howto.html.mlx";;
         "\n\n<p>\nAlso, a matched substring can be converted to anything with a user-defined\nfunction or simply set to an arbitrary value.\nIn practice, we might want to \nextract some tokens that have different meanings but appear in \nthe same context:\n";;

let () =
  Camlmix.line := 736;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 736 "micmatch-howto.html.mlx";;
   print_with ocamltop 
let () =
  Camlmix.line := 736;
  Camlmix.char := 26;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 736 "micmatch-howto.html.mlx";;
                          "\n# open Micmatch;;\n# let get_tokens s = \n  let f =\n    MAP \n      (\"+\" as x = `Plus)\n    | (\"-\" as x = `Minus)\n    | (\"/\" as x = `Div)\n    | (\"*\" as x = `Mul)\n    | (digit+ as x := fun s -> `Int (int_of_string s))\n    | (alpha [alpha digit]+ as x := fun s -> `Ident s) -> x in\n  Text.map \n    (function (* removes the inter-token spaces *)\n\t `Text (RE space*) -> raise Text.Skip\n       | `Text _ -> invalid_arg \"get_tokens\"\n       | token -> token)\n    (f s)\n;;\nval get_tokens :\n  string ->\n  [> `Div\n   | `Ident of string\n   | `Int of int\n   | `Minus\n   | `Mul\n   | `Plus\n   | `Text of string ]\n  list = <fun>\n# get_tokens \"a1 + b3 / 45\";;\n- : [> `Div\n     | `Ident of string\n     | `Int of int\n     | `Minus\n     | `Mul\n     | `Plus\n     | `Text of string ]\n    list\n= [`Ident \"a1\"; `Plus; `Ident \"b3\"; `Div; `Int 45]\n";;

let () =
  Camlmix.line := 774;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 774 "micmatch-howto.html.mlx";;
   () 
let () =
  Camlmix.line := 774;
  Camlmix.char := 9;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 774 "micmatch-howto.html.mlx";;
         "\n<p>\nNote that in general ocamllex is better suited for this kind of job\n(more elegant and faster).\n\n\n";;

let () =
  Camlmix.line := 780;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 780 "micmatch-howto.html.mlx";;
   toc_entry "numbers" 
let () =
  Camlmix.line := 780;
  Camlmix.char := 26;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 780 "micmatch-howto.html.mlx";;
                          "\n\n<p>\nThere are two predefined regexps named ";;

let () =
  Camlmix.line := 783;
  Camlmix.char := 42;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 783 "micmatch-howto.html.mlx";;
                                          verb "int" 
let () =
  Camlmix.line := 783;
  Camlmix.char := 56;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 783 "micmatch-howto.html.mlx";;
                                                        " \nand ";;

let () =
  Camlmix.line := 784;
  Camlmix.char := 7;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 784 "micmatch-howto.html.mlx";;
       verb "float" 
let () =
  Camlmix.line := 784;
  Camlmix.char := 23;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 784 "micmatch-howto.html.mlx";;
                       " which will work in a vast majority of cases\nfor parsing integers and floating point numbers (yellow in the example).\n\n<p>\nIn parallel, ";;

let () =
  Camlmix.line := 788;
  Camlmix.char := 16;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 788 "micmatch-howto.html.mlx";;
                toc_link "conversions" "converters" 
let () =
  Camlmix.line := 788;
  Camlmix.char := 55;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 788 "micmatch-howto.html.mlx";;
                                                       "\nfrom strings to OCaml ints and floats exist (grey in the example), \nso extracting the first \nfloat from a line of text can be done like this:\n";;

let () =
  Camlmix.line := 792;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 792 "micmatch-howto.html.mlx";;
   print_with ocamltop 
let () =
  Camlmix.line := 792;
  Camlmix.char := 26;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 792 "micmatch-howto.html.mlx";;
                          "\n# let search_float = SEARCH_FIRST @yellow@float@@ as x @silver@: float@@ -> x ;;\nval search_float : ?share:bool -> ?pos:int -> string -> float = <fun>\n# search_float \"bla bla -1.234e12 bla\";;\n- : float = -1.234e+12\n";;

let () =
  Camlmix.line := 797;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 797 "micmatch-howto.html.mlx";;
   () 
let () =
  Camlmix.line := 797;
  Camlmix.char := 9;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 797 "micmatch-howto.html.mlx";;
         "\n\n<p>\nA line of numbers can be easily parsed using ";;

let () =
  Camlmix.line := 800;
  Camlmix.char := 48;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 800 "micmatch-howto.html.mlx";;
                                                verb "COLLECT" 
let () =
  Camlmix.line := 800;
  Camlmix.char := 66;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 800 "micmatch-howto.html.mlx";;
                                                                  ":\n";;

let () =
  Camlmix.line := 801;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 801 "micmatch-howto.html.mlx";;
   print_with ocamltop 
let () =
  Camlmix.line := 801;
  Camlmix.char := 26;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 801 "micmatch-howto.html.mlx";;
                          "\n# let get_numbers = COLLECT float as x : float -> x ;;\nval get_numbers : ?pos:int -> string -> float list = <fun>\n# get_numbers \"1.2   83  nan  -inf 5e-10\";;\n- : float list = [1.2; 83.; nan; neg_infinity; 5e-10]\n";;

let () =
  Camlmix.line := 806;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 806 "micmatch-howto.html.mlx";;
   () 
let () =
  Camlmix.line := 806;
  Camlmix.char := 9;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 806 "micmatch-howto.html.mlx";;
         "\n\n<p>\nReading all the numbers from each line of a given file can be done this way:\n";;

let () =
  Camlmix.line := 810;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 810 "micmatch-howto.html.mlx";;
   print_with ocamltop 
let () =
  Camlmix.line := 810;
  Camlmix.char := 26;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 810 "micmatch-howto.html.mlx";;
                          "\n# open Micmatch;;                          \n# let read_file = Text.map_lines_of_file (COLLECT float as x : float -> x);;\nval read_file : string -> float list list = <fun>\n";;

let () =
  Camlmix.line := 814;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 814 "micmatch-howto.html.mlx";;
   () 
let () =
  Camlmix.line := 814;
  Camlmix.char := 9;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 814 "micmatch-howto.html.mlx";;
         "\n\n<p>\nIf you want to extract numbers from some text which contains not only\nnumbers, our ";;

let () =
  Camlmix.line := 818;
  Camlmix.char := 16;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 818 "micmatch-howto.html.mlx";;
                verb "get_numbers" 
let () =
  Camlmix.line := 818;
  Camlmix.char := 38;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 818 "micmatch-howto.html.mlx";;
                                      " function may recognize pieces of\nwords as numbers:\n";;

let () =
  Camlmix.line := 820;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 820 "micmatch-howto.html.mlx";;
   print_with ocamltop 
let () =
  Camlmix.line := 820;
  Camlmix.char := 26;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 820 "micmatch-howto.html.mlx";;
                          "\n# let get_numbers = COLLECT float as x : float -> x ;;\nval get_numbers : ?pos:int -> string -> float list = <fun>\n# get_numbers \"time = 1.2 nanoseconds, speed2=+4.5295E3\";;              \n- : float list = [1.2; nan; 2.; 4529.5]\n";;

let () =
  Camlmix.line := 825;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 825 "micmatch-howto.html.mlx";;
   () 
let () =
  Camlmix.line := 825;
  Camlmix.char := 9;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 825 "micmatch-howto.html.mlx";;
         "\n<p>\nThis kind of problems may be solved using negative assertions (pink):\n";;

let () =
  Camlmix.line := 828;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 828 "micmatch-howto.html.mlx";;
   print_with ocamltop 
let () =
  Camlmix.line := 828;
  Camlmix.char := 26;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 828 "micmatch-howto.html.mlx";;
                          "\n# let get_only_numbers = \n    COLLECT @pink@< Not alnum . >@@ (float as x : float) @pink@< . Not alnum >@@ -> x ;;\nval get_only_numbers : ?pos:int -> string -> float list = <fun>\n# get_only_numbers \"time = 1.2 nanoseconds, speed2=+4.5295E3\";;\n- : float list = [1.2; 4529.5]\n";;

let () =
  Camlmix.line := 834;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 834 "micmatch-howto.html.mlx";;
   () 
let () =
  Camlmix.line := 834;
  Camlmix.char := 9;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 834 "micmatch-howto.html.mlx";;
         "\n\n<p>\nFor fun, let's look at the Perl-compatible \nregexp that is produced and used internally:\n";;

let () =
  Camlmix.line := 839;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 839 "micmatch-howto.html.mlx";;
   print_with ocamltop 
let () =
  Camlmix.line := 839;
  Camlmix.char := 26;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 839 "micmatch-howto.html.mlx";;
                          "\n# let src = RE_PCRE < Not alnum . > (float as x : float) < . Not alnum > in\n  print_endline (fst src);;\n(?<![0-9A-Za-z])([+\\-]?(?:(?:[0-9]+(?:\\.[0-9]*)?|\\.[0-9]+)(?:[Ee][+\\-]?[0-9]+)?|\n(?:[Nn][Aa][Nn]|[Ii][Nn][Ff])))(?![0-9A-Za-z])\n";;

let () =
  Camlmix.line := 844;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 844 "micmatch-howto.html.mlx";;
   () 
let () =
  Camlmix.line := 844;
  Camlmix.char := 9;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 844 "micmatch-howto.html.mlx";;
         "\n\n";;

let () =
  Camlmix.line := 846;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 846 "micmatch-howto.html.mlx";;
   toc_entry "capture-object" 
let () =
  Camlmix.line := 846;
  Camlmix.char := 33;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 846 "micmatch-howto.html.mlx";;
                                 "\n\n<p>\nThe ";;

let () =
  Camlmix.line := 849;
  Camlmix.char := 7;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 849 "micmatch-howto.html.mlx";;
       verb "CAPTURE" 
let () =
  Camlmix.line := 849;
  Camlmix.char := 25;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 849 "micmatch-howto.html.mlx";;
                         " macro allows to automatically pack \nthe matched subgroups into a single object (see also ";;

let () =
  Camlmix.line := 850;
  Camlmix.char := 56;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 850 "micmatch-howto.html.mlx";;
                                                        verb "COLLECTOBJ" 
let () =
  Camlmix.line := 850;
  Camlmix.char := 77;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 850 "micmatch-howto.html.mlx";;
                                                                             "):\n";;

let () =
  Camlmix.line := 851;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 851 "micmatch-howto.html.mlx";;
   print_with ocamlpre 
let () =
  Camlmix.line := 851;
  Camlmix.char := 26;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 851 "micmatch-howto.html.mlx";;
                          "\n# RE pair = \"(\" space* (int as x : int) space* \",\"\n                space* (int as y : int) space* \")\";;   \n# let opt = (CAPTURE pair) \"(12, 23)\";;\nval opt : < x : int; y : int > option = Some <obj>\n# match opt with\n    None -> ()\n  | Some obj -> Printf.printf \"x=%i y=%i\\n\" obj#x obj#y;;    \nx=12 y=23\n- : unit = ()\n";;

let () =
  Camlmix.line := 861;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 861 "micmatch-howto.html.mlx";;
   () 
let () =
  Camlmix.line := 861;
  Camlmix.char := 9;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 861 "micmatch-howto.html.mlx";;
         "\n\n\n\n";;

let () =
  Camlmix.line := 865;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 865 "micmatch-howto.html.mlx";;
   toc_entry "locate" 
let () =
  Camlmix.line := 865;
  Camlmix.char := 25;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 865 "micmatch-howto.html.mlx";;
                         "\n\n<p>\n<code>SEARCH</code> can be used to locate all the occurrences of a given\npattern in a string. The positions are recorded using positional markers,\nintroduced by the <code>%</code> symbol. The following program\nlooks for any appearance of arrows in the string read from the standard input:\n";;

let () =
  Camlmix.line := 872;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 872 "micmatch-howto.html.mlx";;
   print_with ocamlpre 
let () =
  Camlmix.line := 872;
  Camlmix.char := 26;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 872 "micmatch-howto.html.mlx";;
                          "\n(* file locate_arrows.ml *)\nopen Printf\nopen Micmatch\n\nlet locate_arrows = \n  SEARCH %pos1 \"->\" %pos2 -> \n    printf \"Found one arrow (characters %i-%i)\\n\" pos1 (pos2 - 1)\n\nlet () = \n  let s = Text.channel_contents stdin in\n  locate_arrows s\n";;

let () =
  Camlmix.line := 884;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 884 "micmatch-howto.html.mlx";;
   () 
let () =
  Camlmix.line := 884;
  Camlmix.char := 9;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 884 "micmatch-howto.html.mlx";;
         "\n<p>\nResult, when applied to the source code itself:\n";;

let () =
  Camlmix.line := 887;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 887 "micmatch-howto.html.mlx";;
   print_with verbatim 
let () =
  Camlmix.line := 887;
  Camlmix.char := 26;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 887 "micmatch-howto.html.mlx";;
                          "\n$ micmatch locate_arrows.ml < locate_arrows.ml\nFound one arrow (characters 92-93)\nFound one arrow (characters 102-103)\n";;

let () =
  Camlmix.line := 891;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 891 "micmatch-howto.html.mlx";;
   () 
let () =
  Camlmix.line := 891;
  Camlmix.char := 9;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 891 "micmatch-howto.html.mlx";;
         "\n\n<p>\nThe positional markers can appear anywhere in the regular expression.\nIn the following example, we locate the contents of HTML tags, i.e. \nthe text contained within <code>&lt;</code> or \n<code>&lt;/</code> and <code>&gt;</code>:\n";;

let () =
  Camlmix.line := 898;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 898 "micmatch-howto.html.mlx";;
   print_with ocamlpre 
let () =
  Camlmix.line := 898;
  Camlmix.char := 26;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 898 "micmatch-howto.html.mlx";;
                          "\n(* file locate_tags.ml *)\nopen Printf\nopen Micmatch\n\nlet locate_tags = \n  SEARCH \"<\" \"/\"? %tag_start (_* Lazy as tag_contents) %tag_end \">\" -> \n    printf \"Tag %S, characters %i-%i\\n\" tag_contents tag_start (tag_end - 1)\n\nlet () = \n  let s = Text.channel_contents stdin in\n  locate_tags s\n";;

let () =
  Camlmix.line := 910;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 910 "micmatch-howto.html.mlx";;
   () 
let () =
  Camlmix.line := 910;
  Camlmix.char := 9;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 910 "micmatch-howto.html.mlx";;
         "\nResult:\n";;

let () =
  Camlmix.line := 912;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 912 "micmatch-howto.html.mlx";;
   print_with verbatim 
let () =
  Camlmix.line := 912;
  Camlmix.char := 26;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 912 "micmatch-howto.html.mlx";;
                          "\n$ micmatch locate_tags.ml < some_page.html\nTag \"html\", characters 1-4\nTag \"head\", characters 8-11\nTag \"title\", characters 15-19\nTag \"title\", characters 52-56\n...\n";;

let () =
  Camlmix.line := 919;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 919 "micmatch-howto.html.mlx";;
   () 
let () =
  Camlmix.line := 919;
  Camlmix.char := 9;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 919 "micmatch-howto.html.mlx";;
         "\n\n\n\n";;

let () =
  Camlmix.line := 923;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 923 "micmatch-howto.html.mlx";;
   toc_entry "case" 
let () =
  Camlmix.line := 923;
  Camlmix.char := 23;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 923 "micmatch-howto.html.mlx";;
                       "\n\n<p>\nUse the postfix <code>~</code> operator:\n";;

let () =
  Camlmix.line := 927;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 927 "micmatch-howto.html.mlx";;
   print_with ocamlpre 
let () =
  Camlmix.line := 927;
  Camlmix.char := 26;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 927 "micmatch-howto.html.mlx";;
                          "\nmatch \"OCaml\" with\n    RE \"ocaml\"~ -> print_endline \"Success\"\n  | _ -> print_endline \"Failure\"\n";;

let () =
  Camlmix.line := 931;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 931 "micmatch-howto.html.mlx";;
   () 
let () =
  Camlmix.line := 931;
  Camlmix.char := 9;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 931 "micmatch-howto.html.mlx";;
         "\n<p>\nThe case can be ignored only locally. In our example, we can specify\nthat the first letter has to be an big L but ignore the case of the rest:\n";;

let () =
  Camlmix.line := 935;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 935 "micmatch-howto.html.mlx";;
   print_with ocamlpre 
let () =
  Camlmix.line := 935;
  Camlmix.char := 26;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 935 "micmatch-howto.html.mlx";;
                          "\nmatch \"OCaml\" with (* \"oCaml\" doesn't work here *)\n    RE \"O\" \"caml\"~ -> print_endline \"Success\"\n  | _ -> print_endline \"Failure\"\n";;

let () =
  Camlmix.line := 939;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 939 "micmatch-howto.html.mlx";;
   () 
let () =
  Camlmix.line := 939;
  Camlmix.char := 9;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 939 "micmatch-howto.html.mlx";;
         "\n\n";;

let () =
  Camlmix.line := 941;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 941 "micmatch-howto.html.mlx";;
   toc_entry "collect" 
let () =
  Camlmix.line := 941;
  Camlmix.char := 26;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 941 "micmatch-howto.html.mlx";;
                          "\n\n<p>\nThe ";;

let () =
  Camlmix.line := 944;
  Camlmix.char := 7;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 944 "micmatch-howto.html.mlx";;
       verb "COLLECT" 
let () =
  Camlmix.line := 944;
  Camlmix.char := 25;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 944 "micmatch-howto.html.mlx";;
                         " macro lets you do this:\n";;

let () =
  Camlmix.line := 945;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 945 "micmatch-howto.html.mlx";;
   print_with ocamltop 
let () =
  Camlmix.line := 945;
  Camlmix.char := 26;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 945 "micmatch-howto.html.mlx";;
                          "\n# let list_words = COLLECT (upper | lower)+ as x -> x;;\nval list_words : ?pos:int -> string -> string list = <fun>\n# list_words \"Objective Caml, version 3.08.3\";;\n- : string list = [\"Objective\"; \"Caml\"; \"version\"]\n";;

let () =
  Camlmix.line := 950;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 950 "micmatch-howto.html.mlx";;
   () 
let () =
  Camlmix.line := 950;
  Camlmix.char := 9;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 950 "micmatch-howto.html.mlx";;
         "\n\n<p>\n";;

let () =
  Camlmix.line := 953;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 953 "micmatch-howto.html.mlx";;
   verb "COLLECT" 
let () =
  Camlmix.line := 953;
  Camlmix.char := 21;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 953 "micmatch-howto.html.mlx";;
                     " creates a function that can actually return a list of\nany type. For instance, if we want to extract the pairs of numbers\nfrom a piece of text, we would do this:\n";;

let () =
  Camlmix.line := 956;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 956 "micmatch-howto.html.mlx";;
   print_with ocamltop 
let () =
  Camlmix.line := 956;
  Camlmix.char := 26;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 956 "micmatch-howto.html.mlx";;
                          "\n# let get_int_pairs = \n    COLLECT \"(\" space* (digit+ as x : int) space* \",\"\n                space* (digit+ as y : int) space* \")\" ->\n       (x, y);;\nval get_int_pairs : ?pos:int -> string -> (int * int) list = <fun>\n# get_int_pairs \"(123,456): (a,2) ( 5, 34) (0, 0)\";;\n- : (int * int) list = [(123, 456); (5, 34); (0, 0)]\n";;

let () =
  Camlmix.line := 964;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 964 "micmatch-howto.html.mlx";;
   () 
let () =
  Camlmix.line := 964;
  Camlmix.char := 9;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 964 "micmatch-howto.html.mlx";;
         "\n\n<p>\n";;

let () =
  Camlmix.line := 967;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 967 "micmatch-howto.html.mlx";;
   verb "COLLECTOBJ" 
let () =
  Camlmix.line := 967;
  Camlmix.char := 24;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 967 "micmatch-howto.html.mlx";;
                        ", a variant of ";;

let () =
  Camlmix.line := 967;
  Camlmix.char := 41;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 967 "micmatch-howto.html.mlx";;
                                         verb "COLLECT" 
let () =
  Camlmix.line := 967;
  Camlmix.char := 59;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 967 "micmatch-howto.html.mlx";;
                                                           ", directly builds\nan object with methods that allow access to the captured subgroups.\n";;

let () =
  Camlmix.line := 969;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 969 "micmatch-howto.html.mlx";;
   print_with ocamltop 
let () =
  Camlmix.line := 969;
  Camlmix.char := 26;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 969 "micmatch-howto.html.mlx";;
                          "\n# RE pair = \"(\" space* (digit+ as x : int) space* \",\"\n                space* (digit+ as y : int) space* \")\";;\n# let get_objlist = COLLECTOBJ pair;;\nval get_objlist : ?pos:int -> string -> < x : int; y : int > list = <fun>\n# let objlist = get_objlist \"(123,456): (a,2) ( 5, 34) (0, 0)\";;\nval objlist : < x : int; y : int > list = [<obj>; <obj>; <obj>]\n# List.iter (fun o -> Printf.printf \"x=%i, y=%i\\n\" o#x o#y) objlist;;\nx=123, y=456\nx=5, y=34\nx=0, y=0\n- : unit = ()\n";;

let () =
  Camlmix.line := 981;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 981 "micmatch-howto.html.mlx";;
   () 
let () =
  Camlmix.line := 981;
  Camlmix.char := 9;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 981 "micmatch-howto.html.mlx";;
         "\n\n<p>\nIn the example above, ";;

let () =
  Camlmix.line := 984;
  Camlmix.char := 25;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 984 "micmatch-howto.html.mlx";;
                         verb "COLLECTOBJ pair" 
let () =
  Camlmix.line := 984;
  Camlmix.char := 51;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 984 "micmatch-howto.html.mlx";;
                                                   " is really just a shortcut\nfor:\n";;

let () =
  Camlmix.line := 986;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 986 "micmatch-howto.html.mlx";;
   print_with ocamlpre 
let () =
  Camlmix.line := 986;
  Camlmix.char := 26;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 986 "micmatch-howto.html.mlx";;
                          "\nCOLLECT pair -> object \n                  method x = x\n                  method y = y\n                end\n";;

let () =
  Camlmix.line := 991;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 991 "micmatch-howto.html.mlx";;
   () 
let () =
  Camlmix.line := 991;
  Camlmix.char := 9;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 991 "micmatch-howto.html.mlx";;
         "\n\n\n";;

let () =
  Camlmix.line := 994;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 994 "micmatch-howto.html.mlx";;
   toc_entry "replace" 
let () =
  Camlmix.line := 994;
  Camlmix.char := 26;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 994 "micmatch-howto.html.mlx";;
                          "\n\n<p>\nLet's say we want to remove all the comments from a file where comments\nstart with any occurrence of <code>#</code> and end at the end of the line.\nFor this purpose, we will use the <code>REPLACE</code> construct.\nWe need to specify the regex which matches a comment, and the expression which\nwill serve as a replacement text. Here we will specify the pattern that \nmatches a comment and replace it with the empty string. There we go:\n";;

let () =
  Camlmix.line := 1003;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 1003 "micmatch-howto.html.mlx";;
   print_with ocamlpre 
let () =
  Camlmix.line := 1003;
  Camlmix.char := 26;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 1003 "micmatch-howto.html.mlx";;
                          "\nlet remove_comments = REPLACE \"#\" _* Lazy eol -> \"\"\n";;

let () =
  Camlmix.line := 1005;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 1005 "micmatch-howto.html.mlx";;
   () 
let () =
  Camlmix.line := 1005;
  Camlmix.char := 9;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 1005 "micmatch-howto.html.mlx";;
         "\n<p>\nWe defined a function <code>remove_comments</code> that removes the\ncomments from a given string. You may notice that we use the \npredefined <code>eol</code> pattern. <code>eol</code> does not match any \ncharacter: it is an assertion which matches before newline characters and at\nthe end of the string. Thus, the newline characters are preserved.\n";;

let () =
  Camlmix.line := 1012;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 1012 "micmatch-howto.html.mlx";;
   print_with ocamltop 
let () =
  Camlmix.line := 1012;
  Camlmix.char := 26;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 1012 "micmatch-howto.html.mlx";;
                          "\n$ ledit micmatch\n        Objective Caml version 3.08.2\n\n        Camlp4 Parsing version 3.08.2\n\n# let remove_comments = REPLACE \"#\" _* Lazy eol -> \"\";;\nval remove_comments : ?pos:int -> string -> string = <fun>\n# remove_comments \"Hello # comment\\nWorld # another comment\";;\n- : string = \"Hello \\nWorld \"\n";;

let () =
  Camlmix.line := 1022;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 1022 "micmatch-howto.html.mlx";;
   () 
let () =
  Camlmix.line := 1022;
  Camlmix.char := 9;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 1022 "micmatch-howto.html.mlx";;
         "\n<p>\nIt works!\nSee also <code>REPLACE_FIRST</code>. It does the same, except that it \nreplaces at most one occurrence of the pattern, the first one.\n<p>\nAlso, you may have noticed the option <code>pos</code> argument in the type\nof <code>remove_comments</code>. You can use it to specify where the search\nfor the pattern should start. The default is of course 0, i.e. the beginning\nof the string.\n\n";;

let () =
  Camlmix.line := 1033;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 1033 "micmatch-howto.html.mlx";;
   toc_entry "split" 
let () =
  Camlmix.line := 1033;
  Camlmix.char := 24;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 1033 "micmatch-howto.html.mlx";;
                        "\n\n<p>\nThe ";;

let () =
  Camlmix.line := 1036;
  Camlmix.char := 7;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 1036 "micmatch-howto.html.mlx";;
       verb "SPLIT" 
let () =
  Camlmix.line := 1036;
  Camlmix.char := 23;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 1036 "micmatch-howto.html.mlx";;
                       " macro creates a function which removes the\ngiven pattern from a given string:\n";;

let () =
  Camlmix.line := 1038;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 1038 "micmatch-howto.html.mlx";;
   print_with ocamltop 
let () =
  Camlmix.line := 1038;
  Camlmix.char := 26;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 1038 "micmatch-howto.html.mlx";;
                          "\n$ ledit micmatch\n        Objective Caml version 3.08.3\n\n        Camlp4 Parsing version 3.08.3\n\n# (SPLIT space* [\",;\"] space* ) \"a, b, c ; 1, zz;\";;\n- : string list = [\"a\"; \"b\"; \"c\"; \"1\"; \"zz\"]\n";;

let () =
  Camlmix.line := 1046;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 1046 "micmatch-howto.html.mlx";;
   () 
let () =
  Camlmix.line := 1046;
  Camlmix.char := 9;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 1046 "micmatch-howto.html.mlx";;
         "\n\n<p>\nA function is created from the given regexp: we can name it and see\nthat it accepts two optional arguments:\n";;

let () =
  Camlmix.line := 1051;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 1051 "micmatch-howto.html.mlx";;
   print_with ocamltop 
let () =
  Camlmix.line := 1051;
  Camlmix.char := 26;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 1051 "micmatch-howto.html.mlx";;
                          "\n# let split = SPLIT space* [\",;\"] space*;;\nval split : ?full:bool -> ?pos:int -> string -> string list = <fun>\n";;

let () =
  Camlmix.line := 1054;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 1054 "micmatch-howto.html.mlx";;
   () 
let () =
  Camlmix.line := 1054;
  Camlmix.char := 9;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 1054 "micmatch-howto.html.mlx";;
         "\n\n<p>\nThe ";;

let () =
  Camlmix.line := 1057;
  Camlmix.char := 7;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 1057 "micmatch-howto.html.mlx";;
       verb "full" 
let () =
  Camlmix.line := 1057;
  Camlmix.char := 22;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 1057 "micmatch-howto.html.mlx";;
                      " option is false by default. When true, it\nconsiders the regexp as a separator between substrings even if the first or\nthe last one is empty:\n";;

let () =
  Camlmix.line := 1060;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 1060 "micmatch-howto.html.mlx";;
   print_with ocamltop 
let () =
  Camlmix.line := 1060;
  Camlmix.char := 26;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 1060 "micmatch-howto.html.mlx";;
                          "\n# split ~full:true \"a, b, c ; 1, zz;\";;\n- : string list = [\"a\"; \"b\"; \"c\"; \"1\"; \"zz\"; \"\"]\n# split ~full:false \"a, b, c ; 1, zz;\";;\n- : string list = [\"a\"; \"b\"; \"c\"; \"1\"; \"zz\"]\n";;

let () =
  Camlmix.line := 1065;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 1065 "micmatch-howto.html.mlx";;
   () 
let () =
  Camlmix.line := 1065;
  Camlmix.char := 9;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 1065 "micmatch-howto.html.mlx";;
         "\n\n<p>\nThe ";;

let () =
  Camlmix.line := 1068;
  Camlmix.char := 7;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 1068 "micmatch-howto.html.mlx";;
       verb "pos" 
let () =
  Camlmix.line := 1068;
  Camlmix.char := 21;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 1068 "micmatch-howto.html.mlx";;
                     " option tells where to start to scan the string:\n";;

let () =
  Camlmix.line := 1069;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 1069 "micmatch-howto.html.mlx";;
   print_with ocamltop 
let () =
  Camlmix.line := 1069;
  Camlmix.char := 26;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 1069 "micmatch-howto.html.mlx";;
                          "\n# split ~pos:5 \"a, b, c ; 1, zz;\";;     \n- : string list = [\" c\"; \"1\"; \"zz\"]\n";;

let () =
  Camlmix.line := 1072;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 1072 "micmatch-howto.html.mlx";;
   () 
let () =
  Camlmix.line := 1072;
  Camlmix.char := 9;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 1072 "micmatch-howto.html.mlx";;
         "\n\n\n";;

let () =
  Camlmix.line := 1075;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 1075 "micmatch-howto.html.mlx";;
   toc_entry "assertions" 
let () =
  Camlmix.line := 1075;
  Camlmix.char := 29;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 1075 "micmatch-howto.html.mlx";;
                             "\n\n<p>\nThese are called zero-width assertions and can be used to insert additional\ntests within a given regular expression. For instance, a word can be defined\nusing one of the following expressions:\n";;

let () =
  Camlmix.line := 1081;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 1081 "micmatch-howto.html.mlx";;
   print_with ocamlpre 
let () =
  Camlmix.line := 1081;
  Camlmix.char := 26;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 1081 "micmatch-howto.html.mlx";;
                          "\n           (* no letter before *) (* the word itself *) (* no letter after *)\nRE word  =    < Not alpha . >            alpha+           < . Not alpha >\nRE word' =    < Not alpha . >            alpha+              <Not alpha>\n";;

let () =
  Camlmix.line := 1085;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 1085 "micmatch-howto.html.mlx";;
   () 
let () =
  Camlmix.line := 1085;
  Camlmix.char := 9;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 1085 "micmatch-howto.html.mlx";;
         "\n<p>\nOf course <code>Not</code> indicates that a given regular expression\nshould not match (negative assertion).\n<p>\nAssertions can also be used in searching for overlapping patterns in \na string. If we want to extract all possible subsequences\nof 3 consecutive letters in a string, we will define the following\nfunction:\n";;

let () =
  Camlmix.line := 1094;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 1094 "micmatch-howto.html.mlx";;
   print_with ocamlpre 
let () =
  Camlmix.line := 1094;
  Camlmix.char := 26;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 1094 "micmatch-howto.html.mlx";;
                          "\nRE triplet = <alpha{3} as x>\nlet print_triplets_of_letters = SEARCH triplet -> print_endline x\n";;

let () =
  Camlmix.line := 1097;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 1097 "micmatch-howto.html.mlx";;
   () 
let () =
  Camlmix.line := 1097;
  Camlmix.char := 9;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 1097 "micmatch-howto.html.mlx";;
         "\n<p>\nCheck the result:\n";;

let () =
  Camlmix.line := 1100;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 1100 "micmatch-howto.html.mlx";;
   print_with ocamltop 
let () =
  Camlmix.line := 1100;
  Camlmix.char := 26;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 1100 "micmatch-howto.html.mlx";;
                          "\n# RE triplet = <alpha{3} as x> ;;\n# let print_triplets_of_letters = SEARCH triplet -> print_endline x;;\nval print_triplets_of_letters : ?pos:int -> string -> unit = <fun>\n# print_triplets_of_letters \"Hello World!\";;\nHel\nell\nllo\nWor\norl\nrld\n- : unit = ()\n";;

let () =
  Camlmix.line := 1112;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 1112 "micmatch-howto.html.mlx";;
   () 
let () =
  Camlmix.line := 1112;
  Camlmix.char := 9;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 1112 "micmatch-howto.html.mlx";;
         "\n\n<p>\nOK, now you may be wondering \"Why do we have to use assertions at all?\".\nWell, if you don't define your pattern as an assertion, \nthe substrings that match the pattern do not overlap.\nWith the same pattern as in the previous example \nbut not defined as a lookahead assertion, we get these results:\n";;

let () =
  Camlmix.line := 1120;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 1120 "micmatch-howto.html.mlx";;
   print_with ocamltop 
let () =
  Camlmix.line := 1120;
  Camlmix.char := 26;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 1120 "micmatch-howto.html.mlx";;
                          "\n# (SEARCH alpha{3} as x -> print_endline x) \"Hello World!\";;\nHel\nWor\n- : unit = ()\n# (SEARCH alpha{3} as x -> print_endline x) ~pos:2 \"Hello World!\";;\nllo\nWor\n- : unit = ()\n";;

let () =
  Camlmix.line := 1129;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 1129 "micmatch-howto.html.mlx";;
   () 
let () =
  Camlmix.line := 1129;
  Camlmix.char := 9;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 1129 "micmatch-howto.html.mlx";;
         "\n\n\n\n";;

let () =
  Camlmix.line := 1133;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 1133 "micmatch-howto.html.mlx";;
   toc_entry "arguments" 
let () =
  Camlmix.line := 1133;
  Camlmix.char := 28;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 1133 "micmatch-howto.html.mlx";;
                            "\n\n<p>\nThis is achieved by placing the given string expression\nin the regexp, preceded by the ";;

let () =
  Camlmix.line := 1137;
  Camlmix.char := 34;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 1137 "micmatch-howto.html.mlx";;
                                  ocamlcode "@" 
let () =
  Camlmix.line := 1137;
  Camlmix.char := 51;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 1137 "micmatch-howto.html.mlx";;
                                                   " symbol.\nIt means that at the place where it appears in the regexp, this \nstring will be matched literally:\n\n";;

let () =
  Camlmix.line := 1141;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 1141 "micmatch-howto.html.mlx";;
   print_with ocamltop 
let () =
  Camlmix.line := 1141;
  Camlmix.char := 26;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 1141 "micmatch-howto.html.mlx";;
                          "\n# let text = \"name=Max age=27 hobby=programming\";;\nval text : string = \"name=Max age=27 hobby=programming\"\n# let get_field x = SEARCH_FIRST @x \"=\" (alnum* as y) -> y;;\nval get_field : string -> ?share:bool -> ?pos:int -> string -> string = <fun>\n# get_field \"age\" text;;\n- : string = \"27\"\n# get_field \"name\" text;;\n- : string = \"Max\"\n";;

let () =
  Camlmix.line := 1150;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 1150 "micmatch-howto.html.mlx";;
   () 
let () =
  Camlmix.line := 1150;
  Camlmix.char := 9;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 1150 "micmatch-howto.html.mlx";;
         "\n\n\n";;

let () =
  Camlmix.line := 1153;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 1153 "micmatch-howto.html.mlx";;
   toc_entry "include" 
let () =
  Camlmix.line := 1153;
  Camlmix.char := 26;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 1153 "micmatch-howto.html.mlx";;
                          "\n\n<p>\nThe standard pa_macro syntax extension provides an ";;

let () =
  Camlmix.line := 1156;
  Camlmix.char := 54;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 1156 "micmatch-howto.html.mlx";;
                                                      verb "INCLUDE" 
let () =
  Camlmix.line := 1156;
  Camlmix.char := 72;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 1156 "micmatch-howto.html.mlx";;
                                                                        "\ninstruction which is similar to ";;

let () =
  Camlmix.line := 1157;
  Camlmix.char := 35;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 1157 "micmatch-howto.html.mlx";;
                                   verb "#include" 
let () =
  Camlmix.line := 1157;
  Camlmix.char := 54;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 1157 "micmatch-howto.html.mlx";;
                                                      " for ";;

let () =
  Camlmix.line := 1157;
  Camlmix.char := 61;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 1157 "micmatch-howto.html.mlx";;
                                                             verb "cpp" 
let () =
  Camlmix.line := 1157;
  Camlmix.char := 75;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 1157 "micmatch-howto.html.mlx";;
                                                                           ". \nIt parses the included file using the current grammar, \nso it is possible to use it to store Micmatch\nregexps:\n";;

let () =
  Camlmix.line := 1161;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 1161 "micmatch-howto.html.mlx";;
   print_with ocamltop 
let () =
  Camlmix.line := 1161;
  Camlmix.char := 26;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 1161 "micmatch-howto.html.mlx";;
                          "\n$ cat regexps.mml \nRE pdb_id = digit alnum{3}\n$ micmatch pa_macro.cmo\n        Objective Caml version 3.08.4\n\n        Camlp4 Parsing version 3.08.4\n\n# INCLUDE \"regexps.mml\";;\n# let / \"pdb\" (pdb_id as id) \".ent\" eos / = \"pdb2pel.ent\";; \nval id : string = \"2pel\"\n";;

let () =
  Camlmix.line := 1172;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 1172 "micmatch-howto.html.mlx";;
   () 
let () =
  Camlmix.line := 1172;
  Camlmix.char := 9;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 1172 "micmatch-howto.html.mlx";;
         "\n\n\n";;

let () =
  Camlmix.line := 1175;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 1175 "micmatch-howto.html.mlx";;
   toc_entry "encodings" 
let () =
  Camlmix.line := 1175;
  Camlmix.char := 28;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 1175 "micmatch-howto.html.mlx";;
                            "\n\n<p>\nYes, with some limitations.\nA char in OCaml and in Micmatch is simply a <b>byte</b> \n(8 bits of information).\nThere is no specific support for multibyte encodings such as UTFs,\nevery single byte being treated independently.\n\n<p>\nIf either your text-editor or the text you want to parse \nuses an encoding which is not ASCII or Latin1,\nthe simplest way to make things work is to avoid\nthe square brackets for denoting alternatives between bytes.\nInstead of ";;

let () =
  Camlmix.line := 1189;
  Camlmix.char := 14;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 1189 "micmatch-howto.html.mlx";;
              ocamlcode "[\"abc\"]" 
let () =
  Camlmix.line := 1189;
  Camlmix.char := 39;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 1189 "micmatch-howto.html.mlx";;
                                       ", write\n";;

let () =
  Camlmix.line := 1190;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 1190 "micmatch-howto.html.mlx";;
   print_with ocamlcode 
let () =
  Camlmix.line := 1190;
  Camlmix.char := 27;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 1190 "micmatch-howto.html.mlx";;
                           "(\"a\" | \"b\" | \"c\")";;

let () =
  Camlmix.line := 1190;
  Camlmix.char := 46;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 1190 "micmatch-howto.html.mlx";;
                                              () 
let () =
  Camlmix.line := 1190;
  Camlmix.char := 52;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 1190 "micmatch-howto.html.mlx";;
                                                    " \nunless you know what you are doing.\nAlso, avoid using the ";;

let () =
  Camlmix.line := 1192;
  Camlmix.char := 25;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 1192 "micmatch-howto.html.mlx";;
                         ocamlcode "~" 
let () =
  Camlmix.line := 1192;
  Camlmix.char := 42;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 1192 "micmatch-howto.html.mlx";;
                                          " operator.\n\n\n\n";;

let () =
  Camlmix.line := 1196;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 1196 "micmatch-howto.html.mlx";;
   toc_entry "non-regexp" 
let () =
  Camlmix.line := 1196;
  Camlmix.char := 29;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 1196 "micmatch-howto.html.mlx";;
                             "\n\n<p>\nMicmatch can be used for a variety of string-related problems \nthat do not strictly require the use of regexps. In many cases, the\nefficiency is suboptimal but the code is often simpler and safer\nthan using traditional methods.\n\n<p>\nAn ";;

let () =
  Camlmix.line := 1205;
  Camlmix.char := 6;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 1205 "micmatch-howto.html.mlx";;
      verb "explode" 
let () =
  Camlmix.line := 1205;
  Camlmix.char := 24;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 1205 "micmatch-howto.html.mlx";;
                        " function that converts a string into a list of \ncharacters:\n";;

let () =
  Camlmix.line := 1207;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 1207 "micmatch-howto.html.mlx";;
   print_with ocamltop 
let () =
  Camlmix.line := 1207;
  Camlmix.char := 26;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 1207 "micmatch-howto.html.mlx";;
                          "\n# let explode = COLLECT _ as x -> x.[0];;\n# explode \"Hello, World!\";;\n- : char list =\n['H'; 'e'; 'l'; 'l'; 'o'; ','; ' '; 'W'; 'o'; 'r'; 'l'; 'd'; '!']\n";;

let () =
  Camlmix.line := 1212;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 1212 "micmatch-howto.html.mlx";;
   () 
let () =
  Camlmix.line := 1212;
  Camlmix.char := 9;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 1212 "micmatch-howto.html.mlx";;
         "\n\n<p>\nA function that splits a string into fragments of at most 3 characters:\n";;

let () =
  Camlmix.line := 1216;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 1216 "micmatch-howto.html.mlx";;
   print_with ocamltop 
let () =
  Camlmix.line := 1216;
  Camlmix.char := 26;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 1216 "micmatch-howto.html.mlx";;
                          "\n# let cut3 = COLLECT _{1-3} as x -> x;;\nval cut3 : ?pos:int -> string -> string list = <fun>\n# cut3 \"Hello, World!\";;\n- : string list = [\"Hel\"; \"lo,\"; \" Wo\"; \"rld\"; \"!\"]\n";;

let () =
  Camlmix.line := 1221;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 1221 "micmatch-howto.html.mlx";;
   () 
let () =
  Camlmix.line := 1221;
  Camlmix.char := 9;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 1221 "micmatch-howto.html.mlx";;
         "\n\n<p>\nA function that removes everything that starts with a \n";;

let () =
  Camlmix.line := 1225;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 1225 "micmatch-howto.html.mlx";;
   ocamlcode "'#'" 
let () =
  Camlmix.line := 1225;
  Camlmix.char := 22;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 1225 "micmatch-howto.html.mlx";;
                      " character:\n";;

let () =
  Camlmix.line := 1226;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 1226 "micmatch-howto.html.mlx";;
   print_with ocamltop 
let () =
  Camlmix.line := 1226;
  Camlmix.char := 26;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 1226 "micmatch-howto.html.mlx";;
                          "\n# let uncomment = function / [^'#']* as s / -> s;;\nval uncomment : string -> string = <fun>\n# uncomment \"1 + 1   # = 3?\";;\n- : string = \"1 + 1   \"\n";;

let () =
  Camlmix.line := 1231;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 1231 "micmatch-howto.html.mlx";;
   () 
let () =
  Camlmix.line := 1231;
  Camlmix.char := 9;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 1231 "micmatch-howto.html.mlx";;
         "\n\n<p>\nA function that counts the number of occurrences of a given word in\na text:\n";;

let () =
  Camlmix.line := 1236;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 1236 "micmatch-howto.html.mlx";;
   print_with ocamltop 
let () =
  Camlmix.line := 1236;
  Camlmix.char := 26;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 1236 "micmatch-howto.html.mlx";;
                          "\n# let count_abc s =\n    let n = ref 0 in\n    (SEARCH \"abc\" -> incr n) s;\n    !n;;\nval count_abc : string -> int = <fun>\n# count_abc \"xabcdjkfmabcdefabcrt\";;\n- : int = 3\n";;

let () =
  Camlmix.line := 1244;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 1244 "micmatch-howto.html.mlx";;
   () 
let () =
  Camlmix.line := 1244;
  Camlmix.char := 9;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 1244 "micmatch-howto.html.mlx";;
         "\n\n<p>\n... or, if creating a list for nothing is not a problem for you:\n";;

let () =
  Camlmix.line := 1248;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 1248 "micmatch-howto.html.mlx";;
   print_with ocamltop 
let () =
  Camlmix.line := 1248;
  Camlmix.char := 26;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 1248 "micmatch-howto.html.mlx";;
                          "\n# let count_abc2 s = List.length ((COLLECT \"abc\" -> ()) s);;\nval count_abc2 : string -> int = <fun>\n# count_abc2 \"xabcdjkfmabcdefabcrt\";;\n- : int = 3\n";;

let () =
  Camlmix.line := 1253;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 1253 "micmatch-howto.html.mlx";;
   () 
let () =
  Camlmix.line := 1253;
  Camlmix.char := 9;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 1253 "micmatch-howto.html.mlx";;
         "\n\n<p>\nIf the text to search is not known in advance, then you can do this:\n";;

let () =
  Camlmix.line := 1257;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 1257 "micmatch-howto.html.mlx";;
   print_with ocamltop 
let () =
  Camlmix.line := 1257;
  Camlmix.char := 26;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 1257 "micmatch-howto.html.mlx";;
                          "\n# let count word s =\n    let n = ref 0 in\n    (SEARCH @word -> incr n) s;\n    !n;;\nval count : string -> string -> int = <fun>\n# count \"abc\" \"xabcdjkfmabcdefabcrt\";;\n- : int = 3\n";;

let () =
  Camlmix.line := 1265;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 1265 "micmatch-howto.html.mlx";;
   () 
let () =
  Camlmix.line := 1265;
  Camlmix.char := 9;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 1265 "micmatch-howto.html.mlx";;
         "\n\n<p>\nA function which locates a given substring:\n";;

let () =
  Camlmix.line := 1269;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 1269 "micmatch-howto.html.mlx";;
   print_with ocamltop 
let () =
  Camlmix.line := 1269;
  Camlmix.char := 26;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 1269 "micmatch-howto.html.mlx";;
                          "\n# let locate ~subs = COLLECT %start @subs %stop -> (start, stop);;\nval locate : subs:string -> ?pos:int -> string -> (int * int) list = <fun>\n# locate ~subs:\"xy\" \"xyz; xxyxy\";;\n- : (int * int) list = [(0, 2); (6, 8); (8, 10)]\n# locate ~subs:\"xx\" \"xxxxx\";;\n- : (int * int) list = [(0, 2); (2, 4)]\n# locate ~subs:\"\" \"1234\";;\n- : (int * int) list = [(0, 0); (1, 1); (2, 2); (3, 3); (4, 4)]\n";;

let () =
  Camlmix.line := 1278;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 1278 "micmatch-howto.html.mlx";;
   () 
let () =
  Camlmix.line := 1278;
  Camlmix.char := 9;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 1278 "micmatch-howto.html.mlx";;
         "\n\n\n\n";;

let () =
  Camlmix.line := 1282;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 1282 "micmatch-howto.html.mlx";;
   camlmix_footer () 
let () =
  Camlmix.line := 1282;
  Camlmix.char := 24;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 1282 "micmatch-howto.html.mlx";;
                        "\n";;

let () =
  Camlmix.line := 1283;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

# 1283 "micmatch-howto.html.mlx";;
   include_file "end_big_table" 
let () =
  Camlmix.line := 1283;
  Camlmix.char := 35;
  Camlmix.source := "micmatch-howto.html.mlx"
;;

let () = !Camlmix.printer 
# 1283 "micmatch-howto.html.mlx";;
                                   "\n</body>\n</html>\n";;

