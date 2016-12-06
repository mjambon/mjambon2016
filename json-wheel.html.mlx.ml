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

# 1 "json-wheel.html.mlx";;

let () =
  Camlmix.line := 1;
  Camlmix.char := 1;
  Camlmix.source := "json-wheel.html.mlx"
;;

let () = !Camlmix.printer 
# 1 "json-wheel.html.mlx";;
 "";;

let () =
  Camlmix.line := 1;
  Camlmix.char := 3;
  Camlmix.source := "json-wheel.html.mlx"
;;

# 1 "json-wheel.html.mlx";;
  
#load "utils.cmo";;
#use "topfind";;
#require "caml2html";;
#require "mikmatch_pcre";;
#load "unmix.cmo";;
#load "print_ocaml.cmo";;
#use "json-wheel-version.ml";;
open Print_ocaml
open Utils
open Camlmix

let () =
  Camlmix.line := 12;
  Camlmix.char := 3;
  Camlmix.source := "json-wheel.html.mlx"
;;

let () = !Camlmix.printer 
# 12 "json-wheel.html.mlx";;
   "\n";;

let () =
  Camlmix.line := 13;
  Camlmix.char := 3;
  Camlmix.source := "json-wheel.html.mlx"
;;

# 13 "json-wheel.html.mlx";;
   include_file "doctype" 
let () =
  Camlmix.line := 13;
  Camlmix.char := 29;
  Camlmix.source := "json-wheel.html.mlx"
;;

let () = !Camlmix.printer 
# 13 "json-wheel.html.mlx";;
                             "\n<html>\n<head>\n";;

let () =
  Camlmix.line := 16;
  Camlmix.char := 3;
  Camlmix.source := "json-wheel.html.mlx"
;;

# 16 "json-wheel.html.mlx";;
   title 
"json-wheel: JSON Library for OCaml"

let () =
  Camlmix.line := 18;
  Camlmix.char := 3;
  Camlmix.source := "json-wheel.html.mlx"
;;

let () = !Camlmix.printer 
# 18 "json-wheel.html.mlx";;
   "\n";;

let () =
  Camlmix.line := 19;
  Camlmix.char := 3;
  Camlmix.source := "json-wheel.html.mlx"
;;

# 19 "json-wheel.html.mlx";;
   include_file "charset" 
let () =
  Camlmix.line := 19;
  Camlmix.char := 29;
  Camlmix.source := "json-wheel.html.mlx"
;;

let () = !Camlmix.printer 
# 19 "json-wheel.html.mlx";;
                             "\n";;

let () =
  Camlmix.line := 20;
  Camlmix.char := 3;
  Camlmix.source := "json-wheel.html.mlx"
;;

# 20 "json-wheel.html.mlx";;
   include_file "stylesheet" 
let () =
  Camlmix.line := 20;
  Camlmix.char := 32;
  Camlmix.source := "json-wheel.html.mlx"
;;

let () = !Camlmix.printer 
# 20 "json-wheel.html.mlx";;
                                "\n";;

let () =
  Camlmix.line := 21;
  Camlmix.char := 3;
  Camlmix.source := "json-wheel.html.mlx"
;;

# 21 "json-wheel.html.mlx";;
   include_file "ocaml-stylesheet" 
let () =
  Camlmix.line := 21;
  Camlmix.char := 38;
  Camlmix.source := "json-wheel.html.mlx"
;;

let () = !Camlmix.printer 
# 21 "json-wheel.html.mlx";;
                                      "\n";;

let () =
  Camlmix.line := 22;
  Camlmix.char := 3;
  Camlmix.source := "json-wheel.html.mlx"
;;

# 22 "json-wheel.html.mlx";;
   include_file "icon" 
let () =
  Camlmix.line := 22;
  Camlmix.char := 26;
  Camlmix.source := "json-wheel.html.mlx"
;;

let () = !Camlmix.printer 
# 22 "json-wheel.html.mlx";;
                          "\n";;

let () =
  Camlmix.line := 23;
  Camlmix.char := 3;
  Camlmix.source := "json-wheel.html.mlx"
;;

# 23 "json-wheel.html.mlx";;
   include_file "commonlinks" 
let () =
  Camlmix.line := 23;
  Camlmix.char := 33;
  Camlmix.source := "json-wheel.html.mlx"
;;

let () = !Camlmix.printer 
# 23 "json-wheel.html.mlx";;
                                 "\n</head>\n<body>\n";;

let () =
  Camlmix.line := 26;
  Camlmix.char := 3;
  Camlmix.source := "json-wheel.html.mlx"
;;

# 26 "json-wheel.html.mlx";;
   include_file "hitcounter" 
let () =
  Camlmix.line := 26;
  Camlmix.char := 32;
  Camlmix.source := "json-wheel.html.mlx"
;;

let () = !Camlmix.printer 
# 26 "json-wheel.html.mlx";;
                                "\n";;

let () =
  Camlmix.line := 27;
  Camlmix.char := 3;
  Camlmix.source := "json-wheel.html.mlx"
;;

# 27 "json-wheel.html.mlx";;
   include_file "start_big_table" 
let () =
  Camlmix.line := 27;
  Camlmix.char := 37;
  Camlmix.source := "json-wheel.html.mlx"
;;

let () = !Camlmix.printer 
# 27 "json-wheel.html.mlx";;
                                     "\n";;

let () =
  Camlmix.line := 28;
  Camlmix.char := 3;
  Camlmix.source := "json-wheel.html.mlx"
;;

# 28 "json-wheel.html.mlx";;
   top_menu ocaml 
let () =
  Camlmix.line := 28;
  Camlmix.char := 21;
  Camlmix.source := "json-wheel.html.mlx"
;;

let () = !Camlmix.printer 
# 28 "json-wheel.html.mlx";;
                     "\n\n";;

let () =
  Camlmix.line := 30;
  Camlmix.char := 3;
  Camlmix.source := "json-wheel.html.mlx"
;;

# 30 "json-wheel.html.mlx";;
  
open Printf

let () =
  Camlmix.line := 32;
  Camlmix.char := 3;
  Camlmix.source := "json-wheel.html.mlx"
;;

let () = !Camlmix.printer 
# 32 "json-wheel.html.mlx";;
   "\n\n<h1>json-wheel: JSON library for OCaml\n";;

let () =
  Camlmix.line := 35;
  Camlmix.char := 3;
  Camlmix.source := "json-wheel.html.mlx"
;;

# 35 "json-wheel.html.mlx";;
   include_file "1camel" 
let () =
  Camlmix.line := 35;
  Camlmix.char := 28;
  Camlmix.source := "json-wheel.html.mlx"
;;

let () = !Camlmix.printer 
# 35 "json-wheel.html.mlx";;
                            "</h1>\n\n<p>\n<div class=\"framed\">\nJson-wheel is now deprecated. Do not use it in new projects.\nIt has been replaced by <a href=\"yojson.html\">Yojson</a>.\n</div>\n\n<h2>Introduction</h2>\n<p>\nFrom <a href=\"http://www.json.org/\">www.json.org</a>:\n<p style=\"padding-left:10%;padding-right:10%\">\n<i>\nJSON (JavaScript Object Notation) is a lightweight data-interchange format. It is easy for humans to read and write. It is easy for machines to parse and generate. It is based on a subset of the JavaScript Programming Language, Standard ECMA-262 3rd Edition - December 1999.\n</i>\n<p>\nThis implementation follows \n<a href=\"http://www.ietf.org/rfc/rfc4627.txt\">RFC 4627</a>. \nWe use key/value lists to represent JSON objects, \nand lists to represent JSON arrays. \nThe library also provides pretty-printing and \noptional support for C-style comments.\n\n\n\n<h2>Documentation</h2>\n\n<p>\n<a href=\"json-wheel-doc/index.html\">Ocamldoc-generated \ndocumentation</a> is available.\n\n<h2>Download</h2>\n\n<p>\nThis software was written by Mika Illouz and Martin Jambon, \nwith some contributions by Gerd Stolpmann.\nIt is distributed under a \n<a href=\"json-wheel-license.txt\">BSD license</a>.\nThe current version is ";;

let () =
  Camlmix.line := 73;
  Camlmix.char := 26;
  Camlmix.source := "json-wheel.html.mlx"
;;

# 73 "json-wheel.html.mlx";;
                          print_string json_wheel_version 
let () =
  Camlmix.line := 73;
  Camlmix.char := 61;
  Camlmix.source := "json-wheel.html.mlx"
;;

let () = !Camlmix.printer 
# 73 "json-wheel.html.mlx";;
                                                             "; \nsee <a href=\"json-wheel-changes.txt\">Changes</a>.\n<p>\n<table class=\"light-table\">\n<tr style=\"background-color: #ddd\">\n<td>Latest version:</td>\n";;

let () =
  Camlmix.line := 79;
  Camlmix.char := 3;
  Camlmix.source := "json-wheel.html.mlx"
;;

# 79 "json-wheel.html.mlx";;
   
let gz = sprintf "json-wheel-%s.tar.gz" json_wheel_version
let bz2 = sprintf "json-wheel-%s.tar.bz2" json_wheel_version

let () =
  Camlmix.line := 82;
  Camlmix.char := 3;
  Camlmix.source := "json-wheel.html.mlx"
;;

let () = !Camlmix.printer 
# 82 "json-wheel.html.mlx";;
   "\n<td>";;

let () =
  Camlmix.line := 83;
  Camlmix.char := 7;
  Camlmix.source := "json-wheel.html.mlx"
;;

# 83 "json-wheel.html.mlx";;
       download "json-wheel.tar.gz" 
let () =
  Camlmix.line := 83;
  Camlmix.char := 39;
  Camlmix.source := "json-wheel.html.mlx"
;;

let () = !Camlmix.printer 
# 83 "json-wheel.html.mlx";;
                                       "</td>\n<td>";;

let () =
  Camlmix.line := 84;
  Camlmix.char := 7;
  Camlmix.source := "json-wheel.html.mlx"
;;

# 84 "json-wheel.html.mlx";;
       download "json-wheel.tar.bz2" 
let () =
  Camlmix.line := 84;
  Camlmix.char := 40;
  Camlmix.source := "json-wheel.html.mlx"
;;

let () = !Camlmix.printer 
# 84 "json-wheel.html.mlx";;
                                        "</td>\n<td>";;

let () =
  Camlmix.line := 85;
  Camlmix.char := 7;
  Camlmix.source := "json-wheel.html.mlx"
;;

# 85 "json-wheel.html.mlx";;
       download gz 
let () =
  Camlmix.line := 85;
  Camlmix.char := 22;
  Camlmix.source := "json-wheel.html.mlx"
;;

let () = !Camlmix.printer 
# 85 "json-wheel.html.mlx";;
                      "</td>\n<td>";;

let () =
  Camlmix.line := 86;
  Camlmix.char := 7;
  Camlmix.source := "json-wheel.html.mlx"
;;

# 86 "json-wheel.html.mlx";;
       download bz2 
let () =
  Camlmix.line := 86;
  Camlmix.char := 23;
  Camlmix.source := "json-wheel.html.mlx"
;;

let () = !Camlmix.printer 
# 86 "json-wheel.html.mlx";;
                       "</td>\n</tr>\n";;

let () =
  Camlmix.line := 88;
  Camlmix.char := 3;
  Camlmix.source := "json-wheel.html.mlx"
;;

# 88 "json-wheel.html.mlx";;
   
List.iter
  (fun s ->
     printf "<tr>\n<td></td><td></td><td></td>\n";
     printf "<td>";
     download (sprintf "json-wheel-%s.tar.gz" s); 
     printf "</td>\n";
     printf "<td>";
     download (sprintf "json-wheel-%s.tar.bz2" s);
     printf "</td>\n</tr>\n")
	      [ "1.0.5"; "1.0.4"; "1.0.3"; "1.0.2"; "1.0.1"; "1.0.0" ]

let () =
  Camlmix.line := 99;
  Camlmix.char := 3;
  Camlmix.source := "json-wheel.html.mlx"
;;

let () = !Camlmix.printer 
# 99 "json-wheel.html.mlx";;
   "\n</table>\n\n<p>\nWe also recommend <a href=\"json-static.html\">json-static</a> which greatly\nsimplifies the job of converting from generic JSON data to \nspecialized OCaml types (JSON objects <code>-&gt;</code> OCaml objects, etc.).\n\n\n<h2>Notes</h2>\n\n<p>\nThe JSON parser, in the default mode, conforms to the specifications \nof <a href=\"http://www.ietf.org/rfc/rfc4627.txt\">RFC 4627</a>, \nwith only some limitations due to the implementation \nof the corresponding OCaml types:\n<ul>\n<li> ints that are too large to be represented with the OCaml int type\n  cause an error. The limit depends whether it is a 32-bit or 64-bit\n  platform (see <code>min_int</code> and <code>max_int</code>).\n\n<li> floats may be represented with reduced precision as they must fit\n  into the 8 bytes of the \"double\" format.\n\n<li> The size of OCaml strings is limited to about 16MB on 32-bit\n  platforms, and much more on 64-bit platforms \n  (see <code>Sys.max_string_length</code>).\n</ul>\n\n<p>\nThe UTF-8 encoding is supported, however no attempt is made at\nchecking whether strings are actually valid UTF-8 or not. Therefore, other\nASCII-compatible encodings such as the ISO 8859 series are supported\nas well.\n\n<h2>JSON equivalents of OCaml types</h2>\n\n<p>\nJSON provides only two kinds of containers which are very flexible, \nwhile OCaml provides a greater variety of containers which \nare more specialized. Here is a suggestion on how you could convert OCaml data\nto JSON, assuming you have a choice.\n\n<p>\nThere is now a camlp4 syntax extension, \n<a href=\"json-static.html\">json-static</a>, that generates converters\nbetween OCaml and Json_type.t all by itself, using only type declarations.\nIt allows the programmer to ignore the middle column of this table:\n\n<p>\n<table class=\"real-table\" style=\"font-size:70%\">\n<tr>\n<th></th>\n<th>OCaml</th>\n<th>Json_type.t</th>\n<th>JSON</th>\n</tr>\n\n<tr>\n<th>Basic types</th>\n<td>\n";;

let () =
  Camlmix.line := 160;
  Camlmix.char := 3;
  Camlmix.source := "json-wheel.html.mlx"
;;

# 160 "json-wheel.html.mlx";;
   print_with ocamlpre 
let () =
  Camlmix.line := 160;
  Camlmix.char := 26;
  Camlmix.source := "json-wheel.html.mlx"
;;

let () = !Camlmix.printer 
# 160 "json-wheel.html.mlx";;
                          "\n\"abc\"\n\n1234\n\n3.14\n\n1.\n\n-1.23e12\n\ntrue\n";;

let () =
  Camlmix.line := 172;
  Camlmix.char := 3;
  Camlmix.source := "json-wheel.html.mlx"
;;

# 172 "json-wheel.html.mlx";;
   () 
let () =
  Camlmix.line := 172;
  Camlmix.char := 9;
  Camlmix.source := "json-wheel.html.mlx"
;;

let () = !Camlmix.printer 
# 172 "json-wheel.html.mlx";;
         "\n</td>\n<td>\n";;

let () =
  Camlmix.line := 175;
  Camlmix.char := 3;
  Camlmix.source := "json-wheel.html.mlx"
;;

# 175 "json-wheel.html.mlx";;
   print_with ocamlpre 
let () =
  Camlmix.line := 175;
  Camlmix.char := 26;
  Camlmix.source := "json-wheel.html.mlx"
;;

let () = !Camlmix.printer 
# 175 "json-wheel.html.mlx";;
                          "\nString \"abc\"\n\nInt 1234\n\nFloat 3.14\n\nFloat 1.\n\nFloat (-1.23e12)\n\nBool true\n";;

let () =
  Camlmix.line := 187;
  Camlmix.char := 3;
  Camlmix.source := "json-wheel.html.mlx"
;;

# 187 "json-wheel.html.mlx";;
   () 
let () =
  Camlmix.line := 187;
  Camlmix.char := 9;
  Camlmix.source := "json-wheel.html.mlx"
;;

let () = !Camlmix.printer 
# 187 "json-wheel.html.mlx";;
         "\n</td>\n<td>\n<pre>\n\"abc\"\n\n1234\n\n3.14\n\n1.0\n\n-1.23e12\n\ntrue\n</pre>\n</td>\n</tr>\n\n<tr>\n<th>Lists and arrays</th>\n<td>\n";;

let () =
  Camlmix.line := 209;
  Camlmix.char := 3;
  Camlmix.source := "json-wheel.html.mlx"
;;

# 209 "json-wheel.html.mlx";;
   print_with ocamlpre 
let () =
  Camlmix.line := 209;
  Camlmix.char := 26;
  Camlmix.source := "json-wheel.html.mlx"
;;

let () = !Camlmix.printer 
# 209 "json-wheel.html.mlx";;
                          "\n(* List *)\n[ \"Hello\"; \"World\" ]\n\n(* Array *)\n[| \"Hello\"; \"World\" |]\n";;

let () =
  Camlmix.line := 215;
  Camlmix.char := 3;
  Camlmix.source := "json-wheel.html.mlx"
;;

# 215 "json-wheel.html.mlx";;
   () 
let () =
  Camlmix.line := 215;
  Camlmix.char := 9;
  Camlmix.source := "json-wheel.html.mlx"
;;

let () = !Camlmix.printer 
# 215 "json-wheel.html.mlx";;
         "\n</td>\n<td>\n";;

let () =
  Camlmix.line := 218;
  Camlmix.char := 3;
  Camlmix.source := "json-wheel.html.mlx"
;;

# 218 "json-wheel.html.mlx";;
   print_with ocamlpre 
let () =
  Camlmix.line := 218;
  Camlmix.char := 26;
  Camlmix.source := "json-wheel.html.mlx"
;;

let () = !Camlmix.printer 
# 218 "json-wheel.html.mlx";;
                          "\nArray [ String \"Hello\";\n\tString \"World\" ]\n";;

let () =
  Camlmix.line := 221;
  Camlmix.char := 3;
  Camlmix.source := "json-wheel.html.mlx"
;;

# 221 "json-wheel.html.mlx";;
   () 
let () =
  Camlmix.line := 221;
  Camlmix.char := 9;
  Camlmix.source := "json-wheel.html.mlx"
;;

let () = !Camlmix.printer 
# 221 "json-wheel.html.mlx";;
         "\n</td>\n<td>\n<pre>\n[ \"Hello\", \"World\" ]\n</pre>\n</td>\n</tr>\n\n<tr>\n<th>Tuples</th>\n<td>\n";;

let () =
  Camlmix.line := 233;
  Camlmix.char := 3;
  Camlmix.source := "json-wheel.html.mlx"
;;

# 233 "json-wheel.html.mlx";;
   print_with ocamlpre 
let () =
  Camlmix.line := 233;
  Camlmix.char := 26;
  Camlmix.source := "json-wheel.html.mlx"
;;

let () = !Camlmix.printer 
# 233 "json-wheel.html.mlx";;
                          "\n(\"abc\", 1234)\n";;

let () =
  Camlmix.line := 235;
  Camlmix.char := 3;
  Camlmix.source := "json-wheel.html.mlx"
;;

# 235 "json-wheel.html.mlx";;
   () 
let () =
  Camlmix.line := 235;
  Camlmix.char := 9;
  Camlmix.source := "json-wheel.html.mlx"
;;

let () = !Camlmix.printer 
# 235 "json-wheel.html.mlx";;
         "\n</td>\n<td>\n";;

let () =
  Camlmix.line := 238;
  Camlmix.char := 3;
  Camlmix.source := "json-wheel.html.mlx"
;;

# 238 "json-wheel.html.mlx";;
   print_with ocamlpre 
let () =
  Camlmix.line := 238;
  Camlmix.char := 26;
  Camlmix.source := "json-wheel.html.mlx"
;;

let () = !Camlmix.printer 
# 238 "json-wheel.html.mlx";;
                          "\nArray [ String \"abc\"; Int 1234 ]\n";;

let () =
  Camlmix.line := 240;
  Camlmix.char := 3;
  Camlmix.source := "json-wheel.html.mlx"
;;

# 240 "json-wheel.html.mlx";;
   () 
let () =
  Camlmix.line := 240;
  Camlmix.char := 9;
  Camlmix.source := "json-wheel.html.mlx"
;;

let () = !Camlmix.printer 
# 240 "json-wheel.html.mlx";;
         "\n</td>\n<td>\n<pre>\n[ \"abc\", 1234 ]\n</pre>\n</td>\n</tr>\n\n<tr>\n<th>Records, objects</th>\n<td>\n";;

let () =
  Camlmix.line := 252;
  Camlmix.char := 3;
  Camlmix.source := "json-wheel.html.mlx"
;;

# 252 "json-wheel.html.mlx";;
   print_with ocamlpre 
let () =
  Camlmix.line := 252;
  Camlmix.char := 26;
  Camlmix.source := "json-wheel.html.mlx"
;;

let () = !Camlmix.printer 
# 252 "json-wheel.html.mlx";;
                          "\n(* Record *)\n{ x = 0; \n  y = 1; \n  show = true }\n\n(* Object *)\nobject \n  method x = 0 \n  method y = 1 \n  method show = true \nend\n";;

let () =
  Camlmix.line := 264;
  Camlmix.char := 3;
  Camlmix.source := "json-wheel.html.mlx"
;;

# 264 "json-wheel.html.mlx";;
   () 
let () =
  Camlmix.line := 264;
  Camlmix.char := 9;
  Camlmix.source := "json-wheel.html.mlx"
;;

let () = !Camlmix.printer 
# 264 "json-wheel.html.mlx";;
         "\n</td>\n<td>\n";;

let () =
  Camlmix.line := 267;
  Camlmix.char := 3;
  Camlmix.source := "json-wheel.html.mlx"
;;

# 267 "json-wheel.html.mlx";;
   print_with ocamlpre 
let () =
  Camlmix.line := 267;
  Camlmix.char := 26;
  Camlmix.source := "json-wheel.html.mlx"
;;

let () = !Camlmix.printer 
# 267 "json-wheel.html.mlx";;
                          "\nObject [ \"x\", Int 0; \n\t \"y\", Int 1; \n\t \"show\", Bool true ]\n";;

let () =
  Camlmix.line := 271;
  Camlmix.char := 3;
  Camlmix.source := "json-wheel.html.mlx"
;;

# 271 "json-wheel.html.mlx";;
   () 
let () =
  Camlmix.line := 271;
  Camlmix.char := 9;
  Camlmix.source := "json-wheel.html.mlx"
;;

let () = !Camlmix.printer 
# 271 "json-wheel.html.mlx";;
         "\n</td>\n<td>\n<pre>\n{ \"x\": 0,\n  \"y\": 1,\n  \"show\": true }\n</pre>\n</td>\n</tr>\n\n<tr>\n<th>Hash tables, association lists, maps</th>\n<td>\n";;

let () =
  Camlmix.line := 285;
  Camlmix.char := 3;
  Camlmix.source := "json-wheel.html.mlx"
;;

# 285 "json-wheel.html.mlx";;
   print_with ocamlpre 
let () =
  Camlmix.line := 285;
  Camlmix.char := 26;
  Camlmix.source := "json-wheel.html.mlx"
;;

let () = !Camlmix.printer 
# 285 "json-wheel.html.mlx";;
                          "\n(* Association list *)\n[ \"x\", 0; \n  \"y\", 1 ]\n";;

let () =
  Camlmix.line := 289;
  Camlmix.char := 3;
  Camlmix.source := "json-wheel.html.mlx"
;;

# 289 "json-wheel.html.mlx";;
   () 
let () =
  Camlmix.line := 289;
  Camlmix.char := 9;
  Camlmix.source := "json-wheel.html.mlx"
;;

let () = !Camlmix.printer 
# 289 "json-wheel.html.mlx";;
         "\n</td>\n<td>\n";;

let () =
  Camlmix.line := 292;
  Camlmix.char := 3;
  Camlmix.source := "json-wheel.html.mlx"
;;

# 292 "json-wheel.html.mlx";;
   print_with ocamlpre 
let () =
  Camlmix.line := 292;
  Camlmix.char := 26;
  Camlmix.source := "json-wheel.html.mlx"
;;

let () = !Camlmix.printer 
# 292 "json-wheel.html.mlx";;
                          "\nObject [ \"x\", Int 0; \n\t \"y\", Int 1 ]\n";;

let () =
  Camlmix.line := 295;
  Camlmix.char := 3;
  Camlmix.source := "json-wheel.html.mlx"
;;

# 295 "json-wheel.html.mlx";;
   () 
let () =
  Camlmix.line := 295;
  Camlmix.char := 9;
  Camlmix.source := "json-wheel.html.mlx"
;;

let () = !Camlmix.printer 
# 295 "json-wheel.html.mlx";;
         "\n</td>\n<td>\n<pre>\n{ \"x\": 0,\n  \"y\": 1 }\n</pre>\n</td>\n</tr>\n<tr>\n\n<th>Options</th>\n<td>\n";;

let () =
  Camlmix.line := 308;
  Camlmix.char := 3;
  Camlmix.source := "json-wheel.html.mlx"
;;

# 308 "json-wheel.html.mlx";;
   print_with ocamlpre 
let () =
  Camlmix.line := 308;
  Camlmix.char := 26;
  Camlmix.source := "json-wheel.html.mlx"
;;

let () = !Camlmix.printer 
# 308 "json-wheel.html.mlx";;
                          "\nNone\n\nSome \"abc\"\n";;

let () =
  Camlmix.line := 312;
  Camlmix.char := 3;
  Camlmix.source := "json-wheel.html.mlx"
;;

# 312 "json-wheel.html.mlx";;
   () 
let () =
  Camlmix.line := 312;
  Camlmix.char := 9;
  Camlmix.source := "json-wheel.html.mlx"
;;

let () = !Camlmix.printer 
# 312 "json-wheel.html.mlx";;
         "\n</td>\n<td>\n";;

let () =
  Camlmix.line := 315;
  Camlmix.char := 3;
  Camlmix.source := "json-wheel.html.mlx"
;;

# 315 "json-wheel.html.mlx";;
   print_with ocamlpre 
let () =
  Camlmix.line := 315;
  Camlmix.char := 26;
  Camlmix.source := "json-wheel.html.mlx"
;;

let () = !Camlmix.printer 
# 315 "json-wheel.html.mlx";;
                          "\nNull\n\nString \"abc\"\n";;

let () =
  Camlmix.line := 319;
  Camlmix.char := 3;
  Camlmix.source := "json-wheel.html.mlx"
;;

# 319 "json-wheel.html.mlx";;
   () 
let () =
  Camlmix.line := 319;
  Camlmix.char := 9;
  Camlmix.source := "json-wheel.html.mlx"
;;

let () = !Camlmix.printer 
# 319 "json-wheel.html.mlx";;
         "\n</td>\n<td>\n<pre>\nnull\n\n\"abc\"\n</pre>\n</td>\n</tr>\n\n<tr>\n<th>Sum types (other than options)</th>\n<td>\n";;

let () =
  Camlmix.line := 333;
  Camlmix.char := 3;
  Camlmix.source := "json-wheel.html.mlx"
;;

# 333 "json-wheel.html.mlx";;
   print_with ocamlpre 
let () =
  Camlmix.line := 333;
  Camlmix.char := 26;
  Camlmix.source := "json-wheel.html.mlx"
;;

let () = !Camlmix.printer 
# 333 "json-wheel.html.mlx";;
                          "\n(* No argument *)\nA\n\n`A\n\n(* One argument *)\nB \"abc\"\n\n`B \"abc\"\n\n(* One argument of type tuple *)\nCoord (123, 456)\n\n`Coord (123, 456)\n\n(* Several arguments *)\nCoord2 (123, 456)\n";;

let () =
  Camlmix.line := 351;
  Camlmix.char := 3;
  Camlmix.source := "json-wheel.html.mlx"
;;

# 351 "json-wheel.html.mlx";;
   () 
let () =
  Camlmix.line := 351;
  Camlmix.char := 9;
  Camlmix.source := "json-wheel.html.mlx"
;;

let () = !Camlmix.printer 
# 351 "json-wheel.html.mlx";;
         "\n</td>\n<td>\n";;

let () =
  Camlmix.line := 354;
  Camlmix.char := 3;
  Camlmix.source := "json-wheel.html.mlx"
;;

# 354 "json-wheel.html.mlx";;
   print_with ocamlpre 
let () =
  Camlmix.line := 354;
  Camlmix.char := 26;
  Camlmix.source := "json-wheel.html.mlx"
;;

let () = !Camlmix.printer 
# 354 "json-wheel.html.mlx";;
                          "\n(* No argument *)\nString \"A\"\n\n(* One argument *)\nArray [ String \"B\",\n\tString \"abc\" ]\n\n(* One argument of type tuple *)\nArray [ String \"Coord\", \n\tArray [ Int 123,\n\t\tInt 456 ] ]\n\n(* Several arguments *)\nArray [ String \"Coord2\", \n\tInt 123, \n\tInt 456 ]\n";;

let () =
  Camlmix.line := 371;
  Camlmix.char := 3;
  Camlmix.source := "json-wheel.html.mlx"
;;

# 371 "json-wheel.html.mlx";;
   () 
let () =
  Camlmix.line := 371;
  Camlmix.char := 9;
  Camlmix.source := "json-wheel.html.mlx"
;;

let () = !Camlmix.printer 
# 371 "json-wheel.html.mlx";;
         "\n</td>\n<td>\n<pre>\n/* No argument */\n\"A\"\n\n/* One argument */\n[ \"B\", \"abc\" ]\n\n/* One argument of type tuple */\n[ \"Coord\", [ 123, 456 ] ]\n\n/* Several arguments */\n[ \"Coord2\", 123, 456 ]\n</pre>\n</td>\n</tr>\n\n</table>\n\n\n<h2>JSON vs. <span style=\"text-decoration: line-through\">Freddy</span> XML</h2>\n\n<p>\nThe XML to JSON mapping which is proposed by \n<a href=\"http://jsonml.org/\">JsonML</a> is a good illustration of \nthe flexibility of JSON.\n</p>\n\n<h2>Simple examples</h2>\n\n<p>\nOn the OCaml side, here are two examples of the typical operations that\nyou would perform:\n";;

let () =
  Camlmix.line := 406;
  Camlmix.char := 3;
  Camlmix.source := "json-wheel.html.mlx"
;;

# 406 "json-wheel.html.mlx";;
   print_with ocamlpre 
let () =
  Camlmix.line := 406;
  Camlmix.char := 26;
  Camlmix.source := "json-wheel.html.mlx"
;;

let () = !Camlmix.printer 
# 406 "json-wheel.html.mlx";;
                          "\n(* Program that builds a JSON object and saves it into a file *)\nopen Json_type\n\nlet obj = Object [ \"x\", Int 1;\n\t\t   \"y\", Int 2 ]\nlet _ = Json_io.save_json \"point.js\" obj\n";;

let () =
  Camlmix.line := 413;
  Camlmix.char := 3;
  Camlmix.source := "json-wheel.html.mlx"
;;

# 413 "json-wheel.html.mlx";;
   () 
let () =
  Camlmix.line := 413;
  Camlmix.char := 9;
  Camlmix.source := "json-wheel.html.mlx"
;;

let () = !Camlmix.printer 
# 413 "json-wheel.html.mlx";;
         "\n\n";;

let () =
  Camlmix.line := 415;
  Camlmix.char := 3;
  Camlmix.source := "json-wheel.html.mlx"
;;

# 415 "json-wheel.html.mlx";;
   print_with ocamlpre 
let () =
  Camlmix.line := 415;
  Camlmix.char := 26;
  Camlmix.source := "json-wheel.html.mlx"
;;

let () = !Camlmix.printer 
# 415 "json-wheel.html.mlx";;
                          "\n(* Program that reads a JSON object from a file and converts it\n   into a specialized type. \n   Uses file \"point.js\" created by the previous example. *)\nopen Json_type\nopen Json_type.Browse\n\nlet json_obj = Json_io.load_json \"point.js\"\nlet tbl = make_table (objekt json_obj)\nlet x = int (field tbl \"x\")\nlet y = int (field tbl \"y\")\nlet _ = Printf.printf \"x = %i\\ny = %i\\n\" x y\n";;

let () =
  Camlmix.line := 427;
  Camlmix.char := 3;
  Camlmix.source := "json-wheel.html.mlx"
;;

# 427 "json-wheel.html.mlx";;
   () 
let () =
  Camlmix.line := 427;
  Camlmix.char := 9;
  Camlmix.source := "json-wheel.html.mlx"
;;

let () = !Camlmix.printer 
# 427 "json-wheel.html.mlx";;
         "\n\n<p>\nMaybe you are using JSON to communicate between a web page and a HTTP server\nthat serves JSON data. There are two options for reading pure JSON data:\n<ul>\n<li> Use <code>eval</code>, after adding parentheses around the JSON code: <code>eval('(' + responseText + ')')</code>,\n<li> or use a proper JSON parser for JavaScript, \nwhich is considered more secure, \nbut really you are requesting stuff only from your own server anyway.\n</ul>\n<p>\nRead more about this at <a href=\"http://www.json.org/js.html\">json.org</a>.\n\n<p>\nNow, one of the most exciting features of asynchronous HTTP requests from\nJavaScript (or \"AJAX\" if you like the term), is to request information \nfrom other websites than your own and include it in your pages. \nWell, this is disabled by \nthe web browsers... probably just to annoy programmers, since you can emulate \nthe same functionality, with unfortunately even less safety.\nThe principle is the following: \n<ol>\n<li> The client-side javascript creates a URL that should return the data that\nwe need from a server.\n<li> Then it inserts a script element, e.g.\n<code>&lt;script type=\"text/javascript\" src=\"http://example.com/query?x=123&amp;y=true\" /&gt;</code> anywhere in the document.\n<li> You guessed it, the server must serve real javascript code that will\nbe magically downloaded and executed (if not already cached by the browser).\nNormally it would be a simple callback performed on JSON data.\n</ol>\n<p>\nFor more information, visit the\n<a href=\"http://developer.yahoo.com/common/json.html\">Yahoo! Web Services page \non JSON</a>.\n\n\n";;

let () =
  Camlmix.line := 464;
  Camlmix.char := 3;
  Camlmix.source := "json-wheel.html.mlx"
;;

# 464 "json-wheel.html.mlx";;
   camlmix_footer ~years:"2006, 2009" () 
let () =
  Camlmix.line := 464;
  Camlmix.char := 44;
  Camlmix.source := "json-wheel.html.mlx"
;;

let () = !Camlmix.printer 
# 464 "json-wheel.html.mlx";;
                                            "\n";;

let () =
  Camlmix.line := 465;
  Camlmix.char := 3;
  Camlmix.source := "json-wheel.html.mlx"
;;

# 465 "json-wheel.html.mlx";;
   include_file "end_big_table" 
let () =
  Camlmix.line := 465;
  Camlmix.char := 35;
  Camlmix.source := "json-wheel.html.mlx"
;;

let () = !Camlmix.printer 
# 465 "json-wheel.html.mlx";;
                                   "\n</body>\n</html>\n";;

