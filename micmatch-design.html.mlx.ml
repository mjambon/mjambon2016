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

# 1 "micmatch-design.html.mlx";;

let () =
  Camlmix.line := 1;
  Camlmix.char := 1;
  Camlmix.source := "micmatch-design.html.mlx"
;;

let () = !Camlmix.printer 
# 1 "micmatch-design.html.mlx";;
 "";;

let () =
  Camlmix.line := 1;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-design.html.mlx"
;;

# 1 "micmatch-design.html.mlx";;
  
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
  Camlmix.source := "micmatch-design.html.mlx"
;;

let () = !Camlmix.printer 
# 11 "micmatch-design.html.mlx";;
   "\n";;

let () =
  Camlmix.line := 12;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-design.html.mlx"
;;

# 12 "micmatch-design.html.mlx";;
   include_file "doctype" 
let () =
  Camlmix.line := 12;
  Camlmix.char := 29;
  Camlmix.source := "micmatch-design.html.mlx"
;;

let () = !Camlmix.printer 
# 12 "micmatch-design.html.mlx";;
                             "\n<html>\n<head>\n";;

let () =
  Camlmix.line := 15;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-design.html.mlx"
;;

# 15 "micmatch-design.html.mlx";;
   title "Micmatch - Design Notes" 
let () =
  Camlmix.line := 15;
  Camlmix.char := 38;
  Camlmix.source := "micmatch-design.html.mlx"
;;

let () = !Camlmix.printer 
# 15 "micmatch-design.html.mlx";;
                                      "\n";;

let () =
  Camlmix.line := 16;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-design.html.mlx"
;;

# 16 "micmatch-design.html.mlx";;
   include_file "charset" 
let () =
  Camlmix.line := 16;
  Camlmix.char := 29;
  Camlmix.source := "micmatch-design.html.mlx"
;;

let () = !Camlmix.printer 
# 16 "micmatch-design.html.mlx";;
                             "\n";;

let () =
  Camlmix.line := 17;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-design.html.mlx"
;;

# 17 "micmatch-design.html.mlx";;
   include_file "stylesheet" 
let () =
  Camlmix.line := 17;
  Camlmix.char := 32;
  Camlmix.source := "micmatch-design.html.mlx"
;;

let () = !Camlmix.printer 
# 17 "micmatch-design.html.mlx";;
                                "\n";;

let () =
  Camlmix.line := 18;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-design.html.mlx"
;;

# 18 "micmatch-design.html.mlx";;
   include_file "ocaml-stylesheet" 
let () =
  Camlmix.line := 18;
  Camlmix.char := 38;
  Camlmix.source := "micmatch-design.html.mlx"
;;

let () = !Camlmix.printer 
# 18 "micmatch-design.html.mlx";;
                                      "\n";;

let () =
  Camlmix.line := 19;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-design.html.mlx"
;;

# 19 "micmatch-design.html.mlx";;
   include_file "icon" 
let () =
  Camlmix.line := 19;
  Camlmix.char := 26;
  Camlmix.source := "micmatch-design.html.mlx"
;;

let () = !Camlmix.printer 
# 19 "micmatch-design.html.mlx";;
                          "\n";;

let () =
  Camlmix.line := 20;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-design.html.mlx"
;;

# 20 "micmatch-design.html.mlx";;
   include_file "commonlinks" 
let () =
  Camlmix.line := 20;
  Camlmix.char := 33;
  Camlmix.source := "micmatch-design.html.mlx"
;;

let () = !Camlmix.printer 
# 20 "micmatch-design.html.mlx";;
                                 "\n</head>\n<body>\n";;

let () =
  Camlmix.line := 23;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-design.html.mlx"
;;

# 23 "micmatch-design.html.mlx";;
   include_file "hitcounter" 
let () =
  Camlmix.line := 23;
  Camlmix.char := 32;
  Camlmix.source := "micmatch-design.html.mlx"
;;

let () = !Camlmix.printer 
# 23 "micmatch-design.html.mlx";;
                                "\n";;

let () =
  Camlmix.line := 24;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-design.html.mlx"
;;

# 24 "micmatch-design.html.mlx";;
   include_file "start_big_table" 
let () =
  Camlmix.line := 24;
  Camlmix.char := 37;
  Camlmix.source := "micmatch-design.html.mlx"
;;

let () = !Camlmix.printer 
# 24 "micmatch-design.html.mlx";;
                                     "\n";;

let () =
  Camlmix.line := 25;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-design.html.mlx"
;;

# 25 "micmatch-design.html.mlx";;
   top_menu ocaml 
let () =
  Camlmix.line := 25;
  Camlmix.char := 21;
  Camlmix.source := "micmatch-design.html.mlx"
;;

let () = !Camlmix.printer 
# 25 "micmatch-design.html.mlx";;
                     "\n\n";;

let () =
  Camlmix.line := 27;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-design.html.mlx"
;;

# 27 "micmatch-design.html.mlx";;
  
open Printf
let link ~url contents = printf "<a href=\"%s\">%s</a>" url contents
let pcre_ocaml =
  link ~url:"http://www.ai.univie.ac.at/~markus/home/ocaml_sources.html"
let pcre =
  link ~url:"http://www.pcre.org/"

let () =
  Camlmix.line := 34;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-design.html.mlx"
;;

let () = !Camlmix.printer 
# 34 "micmatch-design.html.mlx";;
   "\n\n<h1>Micmatch - Design Notes</h1>\n\n<p>\nThis is a collection of notes concerning debatable aspects of \nthe design of the <a href=\"micmatch.html\">Micmatch system</a>.\nUse <a href=\"http://ocaml.pbwiki.com/Micmatch\">the wiki</a> if you\nwant to share your views.\n\n\n";;

let () =
  Camlmix.line := 45;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-design.html.mlx"
;;

# 45 "micmatch-design.html.mlx";;
   let (toc_item0, toc_item1, toc_item2, toc_entry, toc_link) = make_toc () 
let () =
  Camlmix.line := 45;
  Camlmix.char := 79;
  Camlmix.source := "micmatch-design.html.mlx"
;;

let () = !Camlmix.printer 
# 45 "micmatch-design.html.mlx";;
                                                                               "\n\n<div class=toc>\n<b>Contents</b><br>\n";;

let () =
  Camlmix.line := 49;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-design.html.mlx"
;;

# 49 "micmatch-design.html.mlx";;
   toc_item0 ~id:"syntax" "Syntax" 
let () =
  Camlmix.line := 49;
  Camlmix.char := 38;
  Camlmix.source := "micmatch-design.html.mlx"
;;

let () = !Camlmix.printer 
# 49 "micmatch-design.html.mlx";;
                                      "\n";;

let () =
  Camlmix.line := 50;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-design.html.mlx"
;;

# 50 "micmatch-design.html.mlx";;
   toc_item1 ~id:"general" "General syntax of regexps" 
let () =
  Camlmix.line := 50;
  Camlmix.char := 58;
  Camlmix.source := "micmatch-design.html.mlx"
;;

let () = !Camlmix.printer 
# 50 "micmatch-design.html.mlx";;
                                                          "\n";;

let () =
  Camlmix.line := 51;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-design.html.mlx"
;;

# 51 "micmatch-design.html.mlx";;
   toc_item1 ~id:"uppercase" "Uppercase keywords" 
let () =
  Camlmix.line := 51;
  Camlmix.char := 53;
  Camlmix.source := "micmatch-design.html.mlx"
;;

let () = !Camlmix.printer 
# 51 "micmatch-design.html.mlx";;
                                                     "\n";;

let () =
  Camlmix.line := 52;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-design.html.mlx"
;;

# 52 "micmatch-design.html.mlx";;
   toc_item2 ~id:"match" "\"match\" patterns" 
let () =
  Camlmix.line := 52;
  Camlmix.char := 49;
  Camlmix.source := "micmatch-design.html.mlx"
;;

let () = !Camlmix.printer 
# 52 "micmatch-design.html.mlx";;
                                                 "\n";;

let () =
  Camlmix.line := 53;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-design.html.mlx"
;;

# 53 "micmatch-design.html.mlx";;
   toc_item2 ~id:"macros" "Name of the macros" 
let () =
  Camlmix.line := 53;
  Camlmix.char := 50;
  Camlmix.source := "micmatch-design.html.mlx"
;;

let () = !Camlmix.printer 
# 53 "micmatch-design.html.mlx";;
                                                  "\n";;

let () =
  Camlmix.line := 54;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-design.html.mlx"
;;

# 54 "micmatch-design.html.mlx";;
   toc_item1 ~id:"options" "Type of named subgroups" 
let () =
  Camlmix.line := 54;
  Camlmix.char := 56;
  Camlmix.source := "micmatch-design.html.mlx"
;;

let () = !Camlmix.printer 
# 54 "micmatch-design.html.mlx";;
                                                        "\n\n";;

let () =
  Camlmix.line := 56;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-design.html.mlx"
;;

# 56 "micmatch-design.html.mlx";;
   toc_item0 ~id:"libraries" "Choice of regexp libraries" 
let () =
  Camlmix.line := 56;
  Camlmix.char := 61;
  Camlmix.source := "micmatch-design.html.mlx"
;;

let () = !Camlmix.printer 
# 56 "micmatch-design.html.mlx";;
                                                             "\n";;

let () =
  Camlmix.line := 57;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-design.html.mlx"
;;

# 57 "micmatch-design.html.mlx";;
   toc_item1 ~id:"diversity" "Diversity" 
let () =
  Camlmix.line := 57;
  Camlmix.char := 44;
  Camlmix.source := "micmatch-design.html.mlx"
;;

let () = !Camlmix.printer 
# 57 "micmatch-design.html.mlx";;
                                            "\n";;

let () =
  Camlmix.line := 58;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-design.html.mlx"
;;

# 58 "micmatch-design.html.mlx";;
   toc_item1 ~id:"pcre" "PCRE" 
let () =
  Camlmix.line := 58;
  Camlmix.char := 34;
  Camlmix.source := "micmatch-design.html.mlx"
;;

let () = !Camlmix.printer 
# 58 "micmatch-design.html.mlx";;
                                  "\n\n";;

let () =
  Camlmix.line := 60;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-design.html.mlx"
;;

# 60 "micmatch-design.html.mlx";;
   toc_item0 ~id:"standard" "Compatibility issues" 
let () =
  Camlmix.line := 60;
  Camlmix.char := 54;
  Camlmix.source := "micmatch-design.html.mlx"
;;

let () = !Camlmix.printer 
# 60 "micmatch-design.html.mlx";;
                                                      "\n";;

let () =
  Camlmix.line := 61;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-design.html.mlx"
;;

# 61 "micmatch-design.html.mlx";;
   toc_item1 ~id:"versions" "Versions" 
let () =
  Camlmix.line := 61;
  Camlmix.char := 42;
  Camlmix.source := "micmatch-design.html.mlx"
;;

let () = !Camlmix.printer 
# 61 "micmatch-design.html.mlx";;
                                          "\n";;

let () =
  Camlmix.line := 62;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-design.html.mlx"
;;

# 62 "micmatch-design.html.mlx";;
   toc_item1 ~id:"ocaml" "Cohabitation with other syntax extensions" 
let () =
  Camlmix.line := 62;
  Camlmix.char := 72;
  Camlmix.source := "micmatch-design.html.mlx"
;;

let () = !Camlmix.printer 
# 62 "micmatch-design.html.mlx";;
                                                                        "\n</div>\n\n";;

let () =
  Camlmix.line := 65;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-design.html.mlx"
;;

# 65 "micmatch-design.html.mlx";;
   toc_entry "syntax" 
let () =
  Camlmix.line := 65;
  Camlmix.char := 25;
  Camlmix.source := "micmatch-design.html.mlx"
;;

let () = !Camlmix.printer 
# 65 "micmatch-design.html.mlx";;
                         "\n\n";;

let () =
  Camlmix.line := 67;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-design.html.mlx"
;;

# 67 "micmatch-design.html.mlx";;
   toc_entry "general" 
let () =
  Camlmix.line := 67;
  Camlmix.char := 26;
  Camlmix.source := "micmatch-design.html.mlx"
;;

let () = !Camlmix.printer 
# 67 "micmatch-design.html.mlx";;
                          "\n<p>\nThe general syntax for regular expressions is based on what is already\nin use in ocamllex. Regular expressions are often not so simple, and \nrepresenting them as a compact string which is full of backslashes (\\)\nis definitely not user-friendly. With our syntax, the different tokens\nof the regexp can be highlighted by the text editor, and there is no\nneed to know a list of \"special characters\". Special characters are\nsimply not mixed with characters that we want to match.\n\n\n";;

let () =
  Camlmix.line := 78;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-design.html.mlx"
;;

# 78 "micmatch-design.html.mlx";;
   toc_entry "uppercase" 
let () =
  Camlmix.line := 78;
  Camlmix.char := 28;
  Camlmix.source := "micmatch-design.html.mlx"
;;

let () = !Camlmix.printer 
# 78 "micmatch-design.html.mlx";;
                            "\n\n<p>\nI would like to keep the current uppercase convention for\nall the newly created alphabetic keywords because it makes it clear that \nthey are part of a syntax extension, not regular identifiers of the\ncore OCaml language. This should make things easier for people\nwho don't know by heart all the keywords of either OCaml or Micmatch.\n\n";;

let () =
  Camlmix.line := 87;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-design.html.mlx"
;;

# 87 "micmatch-design.html.mlx";;
   toc_entry "match" 
let () =
  Camlmix.line := 87;
  Camlmix.char := 24;
  Camlmix.source := "micmatch-design.html.mlx"
;;

let () = !Camlmix.printer 
# 87 "micmatch-design.html.mlx";;
                        "\n\n<p>\n";;

let () =
  Camlmix.line := 90;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-design.html.mlx"
;;

# 90 "micmatch-design.html.mlx";;
   print_with ocamlpre 
let () =
  Camlmix.line := 90;
  Camlmix.char := 26;
  Camlmix.source := "micmatch-design.html.mlx"
;;

let () = !Camlmix.printer 
# 90 "micmatch-design.html.mlx";;
                          "\nmatch \"abc def\" with\n    RE graph+ as x -> x\n  | _ -> \"???\"\n";;

let () =
  Camlmix.line := 94;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-design.html.mlx"
;;

# 94 "micmatch-design.html.mlx";;
   () 
let () =
  Camlmix.line := 94;
  Camlmix.char := 9;
  Camlmix.source := "micmatch-design.html.mlx"
;;

let () = !Camlmix.printer 
# 94 "micmatch-design.html.mlx";;
         "\n<p>\nIn the previous example, it is easy to notice that <code>RE</code> is \na new keyword which introduces a section of code with a special\nsyntax. \nKeyword <code>as</code> uses lowercase characters since\nit already exists as a keyword in regular OCaml patterns and\nin ocamllex regexps with an analogous meaning.\n<p>\nHowever the sandwich form for regexp patterns sometimes looks nicer than\nthe <code>RE</code> notation. It is supported since version 0.689\nand is strictly equivalent:\n";;

let () =
  Camlmix.line := 106;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-design.html.mlx"
;;

# 106 "micmatch-design.html.mlx";;
   print_with ocamlpre 
let () =
  Camlmix.line := 106;
  Camlmix.char := 26;
  Camlmix.source := "micmatch-design.html.mlx"
;;

let () = !Camlmix.printer 
# 106 "micmatch-design.html.mlx";;
                          "\nmatch \"abc def\" with\n    / graph+ as x / -> x\n  | _ -> \"???\"\n";;

let () =
  Camlmix.line := 110;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-design.html.mlx"
;;

# 110 "micmatch-design.html.mlx";;
   () 
let () =
  Camlmix.line := 110;
  Camlmix.char := 9;
  Camlmix.source := "micmatch-design.html.mlx"
;;

let () = !Camlmix.printer 
# 110 "micmatch-design.html.mlx";;
         "\n<p>\nAnother syntax in the same style as stream parsers could have been chosen:\n";;

let () =
  Camlmix.line := 113;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-design.html.mlx"
;;

# 113 "micmatch-design.html.mlx";;
   print_with ocamlpre 
let () =
  Camlmix.line := 113;
  Camlmix.char := 26;
  Camlmix.source := "micmatch-design.html.mlx"
;;

let () = !Camlmix.printer 
# 113 "micmatch-design.html.mlx";;
                          "\nmatch \"abc def\" with\n    [/ graph+ as x /] -> x\n  | _ -> \"???\"\n";;

let () =
  Camlmix.line := 117;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-design.html.mlx"
;;

# 117 "micmatch-design.html.mlx";;
   () 
let () =
  Camlmix.line := 117;
  Camlmix.char := 9;
  Camlmix.source := "micmatch-design.html.mlx"
;;

let () = !Camlmix.printer 
# 117 "micmatch-design.html.mlx";;
         "\n<p>\nAdvantages of / ... / : easier to type; lighter for short regexps.<br>\nAdvantages of [/ ... /] : easier to read, especially with a text-editor which\ndetects matching brackets (but we can always add parentheses \nto make things clear); avoids the use of parentheses in some rare cases;\nmore consistent with the existing OCaml syntax and other syntax extensions.\n<p>\nQuestion: what do people prefer? If you have a preference, please let me know.\nWe might switch to the [/ ... /] notation but we can't keep both because \nputting a space between the [ and the / would have a different meaning, which\nwould be disastrous for code readability.\n\n";;

let () =
  Camlmix.line := 130;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-design.html.mlx"
;;

# 130 "micmatch-design.html.mlx";;
   toc_entry "macros" 
let () =
  Camlmix.line := 130;
  Camlmix.char := 25;
  Camlmix.source := "micmatch-design.html.mlx"
;;

let () = !Camlmix.printer 
# 130 "micmatch-design.html.mlx";;
                         "\n<p>\nThe various \"macros\" which are available in the PCRE variant of\nMicmatch all use uppercase characters. Maybe this looks not very\nbeautiful for syntaxic constructs which are much more subtle than\nC macros, but once again it avoids confusion for the new users and\nhas few chances to interfere with other library functions:\n";;

let () =
  Camlmix.line := 137;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-design.html.mlx"
;;

# 137 "micmatch-design.html.mlx";;
   print_with ocamltop 
let () =
  Camlmix.line := 137;
  Camlmix.char := 26;
  Camlmix.source := "micmatch-design.html.mlx"
;;

let () = !Camlmix.printer 
# 137 "micmatch-design.html.mlx";;
                          "\n# let split_list = SPLIT space* \",\" space* (* SPLIT keyword *) ;;\nval split_list : ?full:bool -> ?pos:int -> string -> string list = <fun>\n# split_list \"a, b, cde\";;\n- : string list = [\"a\"; \"b\"; \"cde\"]\n# Pcre.split (* good, lowercase split is not a keyword *);;\n- : ?iflags:Pcre.irflag ->\n    ?flags:Pcre.rflag list ->\n    ?rex:Pcre.regexp ->\n    ?pat:string ->\n    ?pos:int -> ?max:int -> ?callout:Pcre.callout -> string -> string\n    list\n= <fun>\n";;

let () =
  Camlmix.line := 150;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-design.html.mlx"
;;

# 150 "micmatch-design.html.mlx";;
   () 
let () =
  Camlmix.line := 150;
  Camlmix.char := 9;
  Camlmix.source := "micmatch-design.html.mlx"
;;

let () = !Camlmix.printer 
# 150 "micmatch-design.html.mlx";;
         "\n\n<p>\nFinally, the <code>Lazy</code> and <code>Possessive</code> annotations\nthat can be found in regexps play the role of keyword withing regexps\nbut technically are not keywords since you can use them normally outside\nof regexps. So the <code>Lazy</code> module of the standard library of OCaml\ncan still be used without any problem.\n\n\n";;

let () =
  Camlmix.line := 160;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-design.html.mlx"
;;

# 160 "micmatch-design.html.mlx";;
   toc_entry "options" 
let () =
  Camlmix.line := 160;
  Camlmix.char := 26;
  Camlmix.source := "micmatch-design.html.mlx"
;;

let () = !Camlmix.printer 
# 160 "micmatch-design.html.mlx";;
                          "\n<p>\nIn ocamllex patterns, if a binding does not appear on each side of an\nalternative (";;

let () =
  Camlmix.line := 163;
  Camlmix.char := 16;
  Camlmix.source := "micmatch-design.html.mlx"
;;

# 163 "micmatch-design.html.mlx";;
                ocamlcode "|" 
let () =
  Camlmix.line := 163;
  Camlmix.char := 33;
  Camlmix.source := "micmatch-design.html.mlx"
;;

let () = !Camlmix.printer 
# 163 "micmatch-design.html.mlx";;
                                 "), \nthen the identifier is associated with a value of\ntype string option. In the following, the identifier\n<code>greeting</code> can have 3 possible values: \n";;

let () =
  Camlmix.line := 167;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-design.html.mlx"
;;

# 167 "micmatch-design.html.mlx";;
   ocamlcode "Some \"Hello\"" 
let () =
  Camlmix.line := 167;
  Camlmix.char := 33;
  Camlmix.source := "micmatch-design.html.mlx"
;;

let () = !Camlmix.printer 
# 167 "micmatch-design.html.mlx";;
                                 ", ";;

let () =
  Camlmix.line := 167;
  Camlmix.char := 37;
  Camlmix.source := "micmatch-design.html.mlx"
;;

# 167 "micmatch-design.html.mlx";;
                                     ocamlcode "Some \"hello\"" 
let () =
  Camlmix.line := 167;
  Camlmix.char := 67;
  Camlmix.source := "micmatch-design.html.mlx"
;;

let () = !Camlmix.printer 
# 167 "micmatch-design.html.mlx";;
                                                                   " or\n";;

let () =
  Camlmix.line := 168;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-design.html.mlx"
;;

# 168 "micmatch-design.html.mlx";;
   ocamlcode "None" 
let () =
  Camlmix.line := 168;
  Camlmix.char := 23;
  Camlmix.source := "micmatch-design.html.mlx"
;;

let () = !Camlmix.printer 
# 168 "micmatch-design.html.mlx";;
                       ":\n";;

let () =
  Camlmix.line := 169;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-design.html.mlx"
;;

# 169 "micmatch-design.html.mlx";;
   print_with ocamlpre 
let () =
  Camlmix.line := 169;
  Camlmix.char := 26;
  Camlmix.source := "micmatch-design.html.mlx"
;;

let () = !Camlmix.printer 
# 169 "micmatch-design.html.mlx";;
                          "\n['H''h']\"ello\" as greeting | \"\"    { greeting }\n";;

let () =
  Camlmix.line := 171;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-design.html.mlx"
;;

# 171 "micmatch-design.html.mlx";;
   () 
let () =
  Camlmix.line := 171;
  Camlmix.char := 9;
  Camlmix.source := "micmatch-design.html.mlx"
;;

let () = !Camlmix.printer 
# 171 "micmatch-design.html.mlx";;
         "\n<p>\nIn Micmatch, this is an invalid pattern since each binding must\noccur on both sides of an alternative. This follows the behavior of\nthe regular pattern-matching of OCaml. It is not a real problem since\nin this case the empty string ";;

let () =
  Camlmix.line := 176;
  Camlmix.char := 33;
  Camlmix.source := "micmatch-design.html.mlx"
;;

# 176 "micmatch-design.html.mlx";;
                                 ocamlcode "\"\"" 
let () =
  Camlmix.line := 176;
  Camlmix.char := 53;
  Camlmix.source := "micmatch-design.html.mlx"
;;

let () = !Camlmix.printer 
# 176 "micmatch-design.html.mlx";;
                                                     " is equivalent to \n";;

let () =
  Camlmix.line := 177;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-design.html.mlx"
;;

# 177 "micmatch-design.html.mlx";;
   ocamlcode "None" 
let () =
  Camlmix.line := 177;
  Camlmix.char := 23;
  Camlmix.source := "micmatch-design.html.mlx"
;;

let () = !Camlmix.printer 
# 177 "micmatch-design.html.mlx";;
                       " (matching the empty string always succeeds):\n";;

let () =
  Camlmix.line := 178;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-design.html.mlx"
;;

# 178 "micmatch-design.html.mlx";;
   print_with ocamlpre 
let () =
  Camlmix.line := 178;
  Camlmix.char := 26;
  Camlmix.source := "micmatch-design.html.mlx"
;;

let () = !Camlmix.printer 
# 178 "micmatch-design.html.mlx";;
                          "\nmatch read_line () with\n    RE ['H''h']\"ello\" as greeting | (\"\" as greeting) -> greeting\n";;

let () =
  Camlmix.line := 181;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-design.html.mlx"
;;

# 181 "micmatch-design.html.mlx";;
   () 
let () =
  Camlmix.line := 181;
  Camlmix.char := 9;
  Camlmix.source := "micmatch-design.html.mlx"
;;

let () = !Camlmix.printer 
# 181 "micmatch-design.html.mlx";;
         "\n<p>\nWhich would be preferably written as:\n";;

let () =
  Camlmix.line := 184;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-design.html.mlx"
;;

# 184 "micmatch-design.html.mlx";;
   print_with ocamlpre 
let () =
  Camlmix.line := 184;
  Camlmix.char := 26;
  Camlmix.source := "micmatch-design.html.mlx"
;;

let () = !Camlmix.printer 
# 184 "micmatch-design.html.mlx";;
                          "\nmatch read_line () with\n    RE (['H''h']\"ello\" | \"\") as greeting -> greeting\n";;

let () =
  Camlmix.line := 187;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-design.html.mlx"
;;

# 187 "micmatch-design.html.mlx";;
   () 
let () =
  Camlmix.line := 187;
  Camlmix.char := 9;
  Camlmix.source := "micmatch-design.html.mlx"
;;

let () = !Camlmix.printer 
# 187 "micmatch-design.html.mlx";;
         "\n<p>\nOr just:\n";;

let () =
  Camlmix.line := 190;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-design.html.mlx"
;;

# 190 "micmatch-design.html.mlx";;
   print_with ocamlpre 
let () =
  Camlmix.line := 190;
  Camlmix.char := 26;
  Camlmix.source := "micmatch-design.html.mlx"
;;

let () = !Camlmix.printer 
# 190 "micmatch-design.html.mlx";;
                          "\nmatch read_line () with\n    RE (['H''h']\"ello\")? as greeting -> greeting\n";;

let () =
  Camlmix.line := 193;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-design.html.mlx"
;;

# 193 "micmatch-design.html.mlx";;
   () 
let () =
  Camlmix.line := 193;
  Camlmix.char := 9;
  Camlmix.source := "micmatch-design.html.mlx"
;;

let () = !Camlmix.printer 
# 193 "micmatch-design.html.mlx";;
         "\n\n\n\n";;

let () =
  Camlmix.line := 197;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-design.html.mlx"
;;

# 197 "micmatch-design.html.mlx";;
   toc_entry "libraries" 
let () =
  Camlmix.line := 197;
  Camlmix.char := 28;
  Camlmix.source := "micmatch-design.html.mlx"
;;

let () = !Camlmix.printer 
# 197 "micmatch-design.html.mlx";;
                            "\n\n";;

let () =
  Camlmix.line := 199;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-design.html.mlx"
;;

# 199 "micmatch-design.html.mlx";;
   toc_entry "diversity" 
let () =
  Camlmix.line := 199;
  Camlmix.char := 28;
  Camlmix.source := "micmatch-design.html.mlx"
;;

let () = !Camlmix.printer 
# 199 "micmatch-design.html.mlx";;
                            "\n<p>\nCurrently, support is provided for 2 regexp libraries: Str and PCRE.\nFirst, it shows that other libraries could be used in the future with a\nminimum of efforts since a large part of the implementation of Micmatch\nis already shared between the 2 variants.\nSecond, it shows that Micmatch is just a layer over existing\nregexp libraries.\n\n";;

let () =
  Camlmix.line := 208;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-design.html.mlx"
;;

# 208 "micmatch-design.html.mlx";;
   toc_entry "pcre" 
let () =
  Camlmix.line := 208;
  Camlmix.char := 23;
  Camlmix.source := "micmatch-design.html.mlx"
;;

let () = !Camlmix.printer 
# 208 "micmatch-design.html.mlx";;
                       "\n<p>\n";;

let () =
  Camlmix.line := 210;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-design.html.mlx"
;;

# 210 "micmatch-design.html.mlx";;
   pcre "PCRE" 
let () =
  Camlmix.line := 210;
  Camlmix.char := 18;
  Camlmix.source := "micmatch-design.html.mlx"
;;

let () = !Camlmix.printer 
# 210 "micmatch-design.html.mlx";;
                  " is a popular library which provides many useful and\ndocumented features.\nThere was an existing interface for OCaml (";;

let () =
  Camlmix.line := 212;
  Camlmix.char := 46;
  Camlmix.source := "micmatch-design.html.mlx"
;;

# 212 "micmatch-design.html.mlx";;
                                              pcre_ocaml "PCRE-OCaml" 
let () =
  Camlmix.line := 212;
  Camlmix.char := 73;
  Camlmix.source := "micmatch-design.html.mlx"
;;

let () = !Camlmix.printer 
# 212 "micmatch-design.html.mlx";;
                                                                         ")\nso this why a variant of Micmatch which uses PCRE has been implemented\nand is now preferred over the other one.\n\n\n";;

let () =
  Camlmix.line := 217;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-design.html.mlx"
;;

# 217 "micmatch-design.html.mlx";;
   toc_entry "standard" 
let () =
  Camlmix.line := 217;
  Camlmix.char := 27;
  Camlmix.source := "micmatch-design.html.mlx"
;;

let () = !Camlmix.printer 
# 217 "micmatch-design.html.mlx";;
                           "\n\n\n";;

let () =
  Camlmix.line := 220;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-design.html.mlx"
;;

# 220 "micmatch-design.html.mlx";;
   toc_entry "versions" 
let () =
  Camlmix.line := 220;
  Camlmix.char := 27;
  Camlmix.source := "micmatch-design.html.mlx"
;;

let () = !Camlmix.printer 
# 220 "micmatch-design.html.mlx";;
                           "\n<p>\nMicmatch has been used with great satisfaction (at least) by its author,\nfor reading various data files in \n<a href=\"http://wikiomics.org/wiki/Bioinformatics\">bioinformatics</a>\n(writing parsers for these files does not take more time than\nunderstanding their format).\n\n<p>\nThus, the version 1.0 of Micmatch will be released soon, hopefully,\nand should not be much different from the current version.\nSubsequent versions (1.x) will remain backward compatible \nwith the specifications of the reference manual 1.0.\n\n";;

let () =
  Camlmix.line := 234;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-design.html.mlx"
;;

# 234 "micmatch-design.html.mlx";;
   toc_entry "ocaml" 
let () =
  Camlmix.line := 234;
  Camlmix.char := 24;
  Camlmix.source := "micmatch-design.html.mlx"
;;

let () = !Camlmix.printer 
# 234 "micmatch-design.html.mlx";;
                        "\n<p>\nMicmatch is implemented as a syntax extension of Objective Caml using\nthe Camlp4 technology. It can be used with the regular syntax\nof OCaml and in theory also with the revised syntax although it has\nnot been tested.\n\n<p>\nIn theory it should play well with other syntax extensions as long as\nthey don't redefine the <code>match ... with</code>, \n<code>try ... with</code> and <code>function ... -&gt;</code>\nconstructs since they are overwritten by Micmatch.\n\n<p>\nIn the worst case when there would be an incompatibility between Micmatch\nand another syntax extension, it is still possible to isolate the\nMicmatch-dependent code in a separate file and preprocess only this\nfile with Micmatch.\n\n";;

let () =
  Camlmix.line := 253;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-design.html.mlx"
;;

# 253 "micmatch-design.html.mlx";;
   camlmix_footer () 
let () =
  Camlmix.line := 253;
  Camlmix.char := 24;
  Camlmix.source := "micmatch-design.html.mlx"
;;

let () = !Camlmix.printer 
# 253 "micmatch-design.html.mlx";;
                        "\n";;

let () =
  Camlmix.line := 254;
  Camlmix.char := 3;
  Camlmix.source := "micmatch-design.html.mlx"
;;

# 254 "micmatch-design.html.mlx";;
   include_file "end_big_table" 
let () =
  Camlmix.line := 254;
  Camlmix.char := 35;
  Camlmix.source := "micmatch-design.html.mlx"
;;

let () = !Camlmix.printer 
# 254 "micmatch-design.html.mlx";;
                                   "\n</body>\n</html>\n";;

