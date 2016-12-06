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

# 1 "atd-biniou-intro.html.mlx";;

let () =
  Camlmix.line := 1;
  Camlmix.char := 1;
  Camlmix.source := "atd-biniou-intro.html.mlx"
;;

let () = !Camlmix.printer 
# 1 "atd-biniou-intro.html.mlx";;
 "";;

let () =
  Camlmix.line := 1;
  Camlmix.char := 3;
  Camlmix.source := "atd-biniou-intro.html.mlx"
;;

# 1 "atd-biniou-intro.html.mlx";;
   
#load "utils.cmo";;
#use "topfind";;
#require "caml2html";;
#require "mikmatch_pcre";;
#load "unmix.cmo";;
#load "print_ocaml.cmo";;
open Print_ocaml
open Printf
open Camlmix
open Utils

let () =
  Camlmix.line := 12;
  Camlmix.char := 3;
  Camlmix.source := "atd-biniou-intro.html.mlx"
;;

let () = !Camlmix.printer 
# 12 "atd-biniou-intro.html.mlx";;
   "\n";;

let () =
  Camlmix.line := 13;
  Camlmix.char := 3;
  Camlmix.source := "atd-biniou-intro.html.mlx"
;;

# 13 "atd-biniou-intro.html.mlx";;
   include_file "doctype" 
let () =
  Camlmix.line := 13;
  Camlmix.char := 29;
  Camlmix.source := "atd-biniou-intro.html.mlx"
;;

let () = !Camlmix.printer 
# 13 "atd-biniou-intro.html.mlx";;
                             "\n<html>\n<head>\n";;

let () =
  Camlmix.line := 16;
  Camlmix.char := 3;
  Camlmix.source := "atd-biniou-intro.html.mlx"
;;

# 16 "atd-biniou-intro.html.mlx";;
   title "Adjustable type definitions for data exchange" 
let () =
  Camlmix.line := 16;
  Camlmix.char := 60;
  Camlmix.source := "atd-biniou-intro.html.mlx"
;;

let () = !Camlmix.printer 
# 16 "atd-biniou-intro.html.mlx";;
                                                            "\n";;

let () =
  Camlmix.line := 17;
  Camlmix.char := 3;
  Camlmix.source := "atd-biniou-intro.html.mlx"
;;

# 17 "atd-biniou-intro.html.mlx";;
   include_file "charset" 
let () =
  Camlmix.line := 17;
  Camlmix.char := 29;
  Camlmix.source := "atd-biniou-intro.html.mlx"
;;

let () = !Camlmix.printer 
# 17 "atd-biniou-intro.html.mlx";;
                             "\n";;

let () =
  Camlmix.line := 18;
  Camlmix.char := 3;
  Camlmix.source := "atd-biniou-intro.html.mlx"
;;

# 18 "atd-biniou-intro.html.mlx";;
   include_file "stylesheet" 
let () =
  Camlmix.line := 18;
  Camlmix.char := 32;
  Camlmix.source := "atd-biniou-intro.html.mlx"
;;

let () = !Camlmix.printer 
# 18 "atd-biniou-intro.html.mlx";;
                                "\n";;

let () =
  Camlmix.line := 19;
  Camlmix.char := 3;
  Camlmix.source := "atd-biniou-intro.html.mlx"
;;

# 19 "atd-biniou-intro.html.mlx";;
   include_file "ocaml-stylesheet" 
let () =
  Camlmix.line := 19;
  Camlmix.char := 38;
  Camlmix.source := "atd-biniou-intro.html.mlx"
;;

let () = !Camlmix.printer 
# 19 "atd-biniou-intro.html.mlx";;
                                      "\n";;

let () =
  Camlmix.line := 20;
  Camlmix.char := 3;
  Camlmix.source := "atd-biniou-intro.html.mlx"
;;

# 20 "atd-biniou-intro.html.mlx";;
   include_file "icon" 
let () =
  Camlmix.line := 20;
  Camlmix.char := 26;
  Camlmix.source := "atd-biniou-intro.html.mlx"
;;

let () = !Camlmix.printer 
# 20 "atd-biniou-intro.html.mlx";;
                          "\n";;

let () =
  Camlmix.line := 21;
  Camlmix.char := 3;
  Camlmix.source := "atd-biniou-intro.html.mlx"
;;

# 21 "atd-biniou-intro.html.mlx";;
   include_file "commonlinks" 
let () =
  Camlmix.line := 21;
  Camlmix.char := 33;
  Camlmix.source := "atd-biniou-intro.html.mlx"
;;

let () = !Camlmix.printer 
# 21 "atd-biniou-intro.html.mlx";;
                                 "\n</head>\n<body>\n";;

let () =
  Camlmix.line := 24;
  Camlmix.char := 3;
  Camlmix.source := "atd-biniou-intro.html.mlx"
;;

# 24 "atd-biniou-intro.html.mlx";;
   include_file "hitcounter" 
let () =
  Camlmix.line := 24;
  Camlmix.char := 32;
  Camlmix.source := "atd-biniou-intro.html.mlx"
;;

let () = !Camlmix.printer 
# 24 "atd-biniou-intro.html.mlx";;
                                "\n";;

let () =
  Camlmix.line := 25;
  Camlmix.char := 3;
  Camlmix.source := "atd-biniou-intro.html.mlx"
;;

# 25 "atd-biniou-intro.html.mlx";;
   include_file "start_big_table" 
let () =
  Camlmix.line := 25;
  Camlmix.char := 37;
  Camlmix.source := "atd-biniou-intro.html.mlx"
;;

let () = !Camlmix.printer 
# 25 "atd-biniou-intro.html.mlx";;
                                     "\n";;

let () =
  Camlmix.line := 26;
  Camlmix.char := 3;
  Camlmix.source := "atd-biniou-intro.html.mlx"
;;

# 26 "atd-biniou-intro.html.mlx";;
   top_menu ~here:false prog 
let () =
  Camlmix.line := 26;
  Camlmix.char := 32;
  Camlmix.source := "atd-biniou-intro.html.mlx"
;;

let () = !Camlmix.printer 
# 26 "atd-biniou-intro.html.mlx";;
                                "\n<h1>Adjustable type definitions for data exchange</h1>\n<div class=longtitle>Toward harmony between data types, \nprogramming languages and data formats</div>\n\n<p>\nThe purpose of this document is to introduce a series of upcoming tools\nfor data exchange and the reasons for their existence. First published\n2010-08-01.\n\n";;

let () =
  Camlmix.line := 36;
  Camlmix.char := 3;
  Camlmix.source := "atd-biniou-intro.html.mlx"
;;

# 36 "atd-biniou-intro.html.mlx";;
   let (toc_item0, toc_item1, toc_item2, toc_entry, toc_link) = make_toc () 
let () =
  Camlmix.line := 36;
  Camlmix.char := 79;
  Camlmix.source := "atd-biniou-intro.html.mlx"
;;

let () = !Camlmix.printer 
# 36 "atd-biniou-intro.html.mlx";;
                                                                               "\n<div class=toc>\n<b>Contents</b><br>\n";;

let () =
  Camlmix.line := 39;
  Camlmix.char := 3;
  Camlmix.source := "atd-biniou-intro.html.mlx"
;;

# 39 "atd-biniou-intro.html.mlx";;
   toc_item0 ~id:"division" "Problem division" 
let () =
  Camlmix.line := 39;
  Camlmix.char := 50;
  Camlmix.source := "atd-biniou-intro.html.mlx"
;;

let () = !Camlmix.printer 
# 39 "atd-biniou-intro.html.mlx";;
                                                  "\n  ";;

let () =
  Camlmix.line := 40;
  Camlmix.char := 5;
  Camlmix.source := "atd-biniou-intro.html.mlx"
;;

# 40 "atd-biniou-intro.html.mlx";;
     toc_item1 ~id:"types" "Ideal types and actuals types" 
let () =
  Camlmix.line := 40;
  Camlmix.char := 62;
  Camlmix.source := "atd-biniou-intro.html.mlx"
;;

let () = !Camlmix.printer 
# 40 "atd-biniou-intro.html.mlx";;
                                                              "\n  ";;

let () =
  Camlmix.line := 41;
  Camlmix.char := 5;
  Camlmix.source := "atd-biniou-intro.html.mlx"
;;

# 41 "atd-biniou-intro.html.mlx";;
     toc_item1 ~id:"languages" "Accomodating multiple programming languages" 
let () =
  Camlmix.line := 41;
  Camlmix.char := 80;
  Camlmix.source := "atd-biniou-intro.html.mlx"
;;

let () = !Camlmix.printer 
# 41 "atd-biniou-intro.html.mlx";;
                                                                                "\n  ";;

let () =
  Camlmix.line := 42;
  Camlmix.char := 5;
  Camlmix.source := "atd-biniou-intro.html.mlx"
;;

# 42 "atd-biniou-intro.html.mlx";;
     toc_item1 ~id:"formats" "Accomodating multiple data formats" 
let () =
  Camlmix.line := 42;
  Camlmix.char := 69;
  Camlmix.source := "atd-biniou-intro.html.mlx"
;;

let () = !Camlmix.printer 
# 42 "atd-biniou-intro.html.mlx";;
                                                                     "\n";;

let () =
  Camlmix.line := 43;
  Camlmix.char := 3;
  Camlmix.source := "atd-biniou-intro.html.mlx"
;;

# 43 "atd-biniou-intro.html.mlx";;
   toc_item0 ~id:"tools" "Tools" 
let () =
  Camlmix.line := 43;
  Camlmix.char := 36;
  Camlmix.source := "atd-biniou-intro.html.mlx"
;;

let () = !Camlmix.printer 
# 43 "atd-biniou-intro.html.mlx";;
                                    "\n  ";;

let () =
  Camlmix.line := 44;
  Camlmix.char := 5;
  Camlmix.source := "atd-biniou-intro.html.mlx"
;;

# 44 "atd-biniou-intro.html.mlx";;
     toc_item1 ~id:"atd" "ATD" 
let () =
  Camlmix.line := 44;
  Camlmix.char := 34;
  Camlmix.source := "atd-biniou-intro.html.mlx"
;;

let () = !Camlmix.printer 
# 44 "atd-biniou-intro.html.mlx";;
                                  "\n  ";;

let () =
  Camlmix.line := 45;
  Camlmix.char := 5;
  Camlmix.source := "atd-biniou-intro.html.mlx"
;;

# 45 "atd-biniou-intro.html.mlx";;
     toc_item1 ~id:"yojson" "Yojson" 
let () =
  Camlmix.line := 45;
  Camlmix.char := 40;
  Camlmix.source := "atd-biniou-intro.html.mlx"
;;

let () = !Camlmix.printer 
# 45 "atd-biniou-intro.html.mlx";;
                                        "\n  ";;

let () =
  Camlmix.line := 46;
  Camlmix.char := 5;
  Camlmix.source := "atd-biniou-intro.html.mlx"
;;

# 46 "atd-biniou-intro.html.mlx";;
     toc_item1 ~id:"biniou" "Biniou" 
let () =
  Camlmix.line := 46;
  Camlmix.char := 40;
  Camlmix.source := "atd-biniou-intro.html.mlx"
;;

let () = !Camlmix.printer 
# 46 "atd-biniou-intro.html.mlx";;
                                        "\n  ";;

let () =
  Camlmix.line := 47;
  Camlmix.char := 5;
  Camlmix.source := "atd-biniou-intro.html.mlx"
;;

# 47 "atd-biniou-intro.html.mlx";;
     toc_item1 ~id:"atdgen" "Atdgen" 
let () =
  Camlmix.line := 47;
  Camlmix.char := 40;
  Camlmix.source := "atd-biniou-intro.html.mlx"
;;

let () = !Camlmix.printer 
# 47 "atd-biniou-intro.html.mlx";;
                                        "\n</div>\n\n";;

let () =
  Camlmix.line := 50;
  Camlmix.char := 3;
  Camlmix.source := "atd-biniou-intro.html.mlx"
;;

# 50 "atd-biniou-intro.html.mlx";;
   toc_entry "division" 
let () =
  Camlmix.line := 50;
  Camlmix.char := 27;
  Camlmix.source := "atd-biniou-intro.html.mlx"
;;

let () = !Camlmix.printer 
# 50 "atd-biniou-intro.html.mlx";;
                           "\n\n<p>\nExperience shows that the problem of exchanging, storing and evolving data\nwould benefit from being split into independent subproblems.\n\n<p>\nAlthough data usually have one canonical way of being thought of,\na variety of technical constraints call for a variety\nof data formats and implementations.\n\n<p>\nThe first problem is therefore to come up with a common language \nfor describing data types without relying on features that are \nspecific to a particular programming language or data format.\n\n<p>\nThe second problem is to allow any programming language to join the\nparty without having to redefine and reimplement the tools for \ndescribing the data types.\n\n<p>\nThe third problem is to allow different serialization formats to \nbe used to represent the same data.\n\n<p>\nInstead of pushing for a supposedly best combination of programming language\nand data format, we acknowledge that real-world data will be\nrepresented in different ways by different tools no matter what.\n<!-- We are going to present various features of existing data,\nprogramming languages and data formats and how they can all live in harmony\nwithout sacrifices. -->\n\n\n";;

let () =
  Camlmix.line := 84;
  Camlmix.char := 3;
  Camlmix.source := "atd-biniou-intro.html.mlx"
;;

# 84 "atd-biniou-intro.html.mlx";;
   toc_entry "types" 
let () =
  Camlmix.line := 84;
  Camlmix.char := 24;
  Camlmix.source := "atd-biniou-intro.html.mlx"
;;

let () = !Camlmix.printer 
# 84 "atd-biniou-intro.html.mlx";;
                        "\n\n<p>\nAfter a little bit of thinking and not so much tweaking,\nall data can be described using:\n<ul>\n<li> bool: a type containing two values, usually called true and false,\n<li> int: a type representing integers exactly;\n<li> float: a type representing real numbers (approximately);\n<li> string: a type representing a finite sequence of bytes;\n<li> product types: tuples and records/structs;\n<li> sum types: variants with 0 or 1 argument, or tagged unions;\n<li> list types: sequences of items of a given type;\n<li> option types: 0 or 1 element of a given type;\n<li> parametrized types, also known as generics or templates;\n<li> unit type: type of just one value, useful when using parametrized types;\n<li> abstract types: types defined elsewhere but known to the code generators\nor interpreters;\n<li> inheritance of record fields or variants.\n</ul>\n\n<p>\nThese are the core features allowed by the\nATD syntax (ATD = \"Adjustable Type Definitions\").\nIn practice, each programming language may have a choice of different\nrepresentations of a particular ATD type. The idea here is to allow annotations\nin the ATD file that can be used to specify language-specific options.\n\n\n";;

let () =
  Camlmix.line := 113;
  Camlmix.char := 3;
  Camlmix.source := "atd-biniou-intro.html.mlx"
;;

# 113 "atd-biniou-intro.html.mlx";;
   toc_entry "languages" 
let () =
  Camlmix.line := 113;
  Camlmix.char := 28;
  Camlmix.source := "atd-biniou-intro.html.mlx"
;;

let () = !Camlmix.printer 
# 113 "atd-biniou-intro.html.mlx";;
                            "\n\n<p>\nAlthough the syntax of ATD is strongly based on the syntax of OCaml type\ndefinitions, and although the current tools using ATD are implemented\nin OCaml, the target languages can be really anything.\nOCaml shines when it comes to processing code and produce more code.\nThe language of the input code here is ATD but the output can be anything:\nOCaml code, Java code, JSON, HTML documentation, etc.\n\n<p>\nIt is of course possible to reimplement the tools of the <code>atd</code>\npackage in another programming language at a reasonable cost, that is maybe\na few weeks to months of work for a clean job,\nbut this is not expected to happen anytime soon.\nUsing the <code>atd</code> library for building code generators\nfor other languages than OCaml makes perfect sense and is something\nOCaml is suited for.\nTo date at MyLife we have been using the following tools all based on ATD \ntype specifications:\n<ul>\n<li> OCaml readers and writers for JSON generated using \n<a href=\"#atdgen\"><code>atdgen</code></a> and using  \n<a href=\"#yojson\"><code>yojson</code></a> for runtime support,\n<li> Java readers and writers for JSON.\n<li> and a few other validation tools and code generators used privately.\n</ul>\n\n\n";;

let () =
  Camlmix.line := 142;
  Camlmix.char := 3;
  Camlmix.source := "atd-biniou-intro.html.mlx"
;;

# 142 "atd-biniou-intro.html.mlx";;
   toc_entry "formats" 
let () =
  Camlmix.line := 142;
  Camlmix.char := 26;
  Camlmix.source := "atd-biniou-intro.html.mlx"
;;

let () = !Camlmix.printer 
# 142 "atd-biniou-intro.html.mlx";;
                          "\n\n<p>\nA variety of data formats (JSON, XML, etc.) can be used and data\ntypes can be specified using ATD.\nThe ATD syntax allows for annotations in various places which\nmake it possible to adjust the basic ATD type definition to the idioms\nof the target language.\n\n<!--\n<p>\nAlthough this has not been implemented, one can imagine that \nvarious conventions to map ATD record types and variant types to XML.\nA code generator producing XML readers and writers would use\none specific convention by default, by the presence of annotations\ncould override the default convention.\n-->\n\n";;

let () =
  Camlmix.line := 160;
  Camlmix.char := 3;
  Camlmix.source := "atd-biniou-intro.html.mlx"
;;

# 160 "atd-biniou-intro.html.mlx";;
   toc_entry "tools" 
let () =
  Camlmix.line := 160;
  Camlmix.char := 24;
  Camlmix.source := "atd-biniou-intro.html.mlx"
;;

let () = !Camlmix.printer 
# 160 "atd-biniou-intro.html.mlx";;
                        "\n\n<p>\nSeveral tools that make the ATD language relevant will be released\naround the same time.\nThis is a list of features that these tools offer.\n\n";;

let () =
  Camlmix.line := 167;
  Camlmix.char := 3;
  Camlmix.source := "atd-biniou-intro.html.mlx"
;;

# 167 "atd-biniou-intro.html.mlx";;
   toc_entry "atd" 
let () =
  Camlmix.line := 167;
  Camlmix.char := 22;
  Camlmix.source := "atd-biniou-intro.html.mlx"
;;

let () = !Camlmix.printer 
# 167 "atd-biniou-intro.html.mlx";;
                      "\n\n<p>\n<code>atd</code>\nis the OCaml library providing a parser for the ATD language\nand various utilities. ATD stands for Adjustable Type Definitions\nin reference to its main property of supporting annotations\nthat allow a good fit with a variety of data formats.\n\n";;

let () =
  Camlmix.line := 176;
  Camlmix.char := 3;
  Camlmix.source := "atd-biniou-intro.html.mlx"
;;

# 176 "atd-biniou-intro.html.mlx";;
   print_with ocamlpre 
let () =
  Camlmix.line := 176;
  Camlmix.char := 26;
  Camlmix.source := "atd-biniou-intro.html.mlx"
;;

let () = !Camlmix.printer 
# 176 "atd-biniou-intro.html.mlx";;
                          "\n(* This is an ATD file *)\n\ntype 'a tree = [ Node of ('a tree * 'a tree) | Leaf of 'a ]\n\ntype record = {\n  name : string;\n    (* Required field *)\n\n  ~friends : string list <ocaml repr=\"array\">;\n    (*\n      Optional field with a default value, by default the empty list.\n\n      <ocaml repr=\"array\"> is an annotation for the OCaml code generators\n      that only them need to interpret.\n    *)\n\n  ?descr : string option;\n    (* Optional field without a default value. *)\n\n  tree : int tree;\n}\n";;

let () =
  Camlmix.line := 198;
  Camlmix.char := 3;
  Camlmix.source := "atd-biniou-intro.html.mlx"
;;

# 198 "atd-biniou-intro.html.mlx";;
   () 
let () =
  Camlmix.line := 198;
  Camlmix.char := 9;
  Camlmix.source := "atd-biniou-intro.html.mlx"
;;

let () = !Camlmix.printer 
# 198 "atd-biniou-intro.html.mlx";;
         "\n\n<p>\nThe <code>atd</code> package provides:\n<ul>\n<li> Parser for the ATD syntax, consisting in\n     <a href=\"#types\">type definitions</a>.\n<li> Expander of inherited fields or variants.\n<li> Monomorphizer, useful for producing optimized code or \n     for mapping to languages that do not support parametrized types.\n<li> Simple indentation utility.\n<li> Annotation processing utilities.\n<li> Pretty-printer of ATD definitions.\n<li> <code>atdcat</code>, a program that reads type definitions, optionally\napplies inheritance or monomorphization, and prints them back.\n</ul>\n\n<p>\nAn interesting use of ATD annotations is that <code>&lt;doc text=...&gt;</code>\nnodes can be used to specify comments applicable to the generated code.\nSuch comments can be interpreted by the code generators\nconverted into ocamldoc-compliant or javadoc-compliant\ncomments, allowing the production of quality\nHTML documentation.\n\n\n";;

let () =
  Camlmix.line := 224;
  Camlmix.char := 3;
  Camlmix.source := "atd-biniou-intro.html.mlx"
;;

# 224 "atd-biniou-intro.html.mlx";;
   toc_entry "yojson" 
let () =
  Camlmix.line := 224;
  Camlmix.char := 25;
  Camlmix.source := "atd-biniou-intro.html.mlx"
;;

let () = !Camlmix.printer 
# 224 "atd-biniou-intro.html.mlx";;
                         "\n\n<p>\n<a href=\"yojson.html\">Yojson</a> is an optimized parser/printer \nand pretty-printer for <a href=\"http://json.org/\">JSON</a>.\nIt addresses a few limitations of \n<a href=\"/json-wheel.html\"><code>json-wheel</code></a>\nand provides a number of low-level runtime functions \non which code generated by \n<code>atdgen</code> hooks up.\n\n<p>\nThe main differences with <code>json-wheel</code> are:\n<ul>\n<li> Uses polymorphic variants for the JSON tree type,\nwhich reduces interpackage dependencies\nand makes extensions easier.\n<li> By default tolerates convenient non-standard JSON features: NaNs,\ninfinities, root atoms, unquoted field names.\n<li> Optional, extended syntax for tuples and variants.\n</ul>\n\n";;

let () =
  Camlmix.line := 246;
  Camlmix.char := 3;
  Camlmix.source := "atd-biniou-intro.html.mlx"
;;

# 246 "atd-biniou-intro.html.mlx";;
   toc_entry "biniou" 
let () =
  Camlmix.line := 246;
  Camlmix.char := 25;
  Camlmix.source := "atd-biniou-intro.html.mlx"
;;

let () = !Camlmix.printer 
# 246 "atd-biniou-intro.html.mlx";;
                         "\n\n<p>\n<a href=\"biniou.html\">Biniou</a> (pronounced \"be new\")\nis a new binary format vastly equivalent to JSON since it has the\nfollowing properties:\n<ul>\n<li> all data can be visualized in pretty-printed JSON-like text\nform without a type definition (except\nfor field names and variant names);\n<li> record fields can be omitted if the data consumer knows the default value;\n<li> unknown record field names can be ignored by the data consumer;\n<li> the order of record fields does not matter;\n<li> the order in which record fields or variants are defined \nin type definitions does not matter;\n<li> new record fields can be freely added to type definitions\nby the data producers ahead of the consumers;\n<li> new variants can be freely added to type definitions \nby the data consumers ahead of the producers.\n</ul>\n\n<p>\nField names and variant names are represented using 31-bit hashes like\nmethod names and polymorphic variants in OCaml.\n\n<p>\nStrings have no encoding requirement and are stored without any escaping.\n\n<p>\nArrays of records can be represented using a specific representation \ncalled tables. A table does not repeat field information shared\nby all its records, resulting in space gains.\n\n\n<p>\nBiniou data typically take 25-30% less space than their JSON equivalent.\n<code>biniou</code> is the OCaml package that provides optimized readers,\nwriters and pretty-printers for the biniou format.\nThe library also provides the runtime functions used by the code \ngenerated by <a href=\"#atdgen\"><code>atdgen</code></a>,\nas well as the buffer types used by <code>yojson</code>.\n\n\n";;

let () =
  Camlmix.line := 289;
  Camlmix.char := 3;
  Camlmix.source := "atd-biniou-intro.html.mlx"
;;

# 289 "atd-biniou-intro.html.mlx";;
   toc_entry "atdgen" 
let () =
  Camlmix.line := 289;
  Camlmix.char := 25;
  Camlmix.source := "atd-biniou-intro.html.mlx"
;;

let () = !Camlmix.printer 
# 289 "atd-biniou-intro.html.mlx";;
                         "\n\n<p>\n<a href=\"/atdgen\"><code>atdgen</code></a> \nis a program that generates optimized OCaml code\nfor reading and writing either biniou or JSON data.\nGenerated code directly converts\nbetween byte buffers and the desired OCaml representation without\ngoing through a generic tree like \n<a href=\"json-static.html\">json-static</a> does.\n\n<p>\nBenchmarks performed on an amd64-Linux machine for combined reading\nand writing show that:\n<ul>\n<li> <code>atdgen-json</code> produces code that is 3 times faster than \njson-static but 4 times slower than <code>atdgen-biniou</code>.\n<li> Code generated by <code>atdgen-biniou</code> is 2-3 times slower than\nOCaml's Marshal.\n</ul>\n\n\n";;

let () =
  Camlmix.line := 311;
  Camlmix.char := 3;
  Camlmix.source := "atd-biniou-intro.html.mlx"
;;

# 311 "atd-biniou-intro.html.mlx";;
   camlmix_footer ~years:"2010" () 
let () =
  Camlmix.line := 311;
  Camlmix.char := 38;
  Camlmix.source := "atd-biniou-intro.html.mlx"
;;

let () = !Camlmix.printer 
# 311 "atd-biniou-intro.html.mlx";;
                                      "\n";;

let () =
  Camlmix.line := 312;
  Camlmix.char := 3;
  Camlmix.source := "atd-biniou-intro.html.mlx"
;;

# 312 "atd-biniou-intro.html.mlx";;
   include_file "end_big_table" 
let () =
  Camlmix.line := 312;
  Camlmix.char := 35;
  Camlmix.source := "atd-biniou-intro.html.mlx"
;;

let () = !Camlmix.printer 
# 312 "atd-biniou-intro.html.mlx";;
                                   "\n</body>\n</html>\n";;

