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

# 1 "json-static.html.mlx";;

let () =
  Camlmix.line := 1;
  Camlmix.char := 1;
  Camlmix.source := "json-static.html.mlx"
;;

let () = !Camlmix.printer 
# 1 "json-static.html.mlx";;
 "";;

let () =
  Camlmix.line := 1;
  Camlmix.char := 3;
  Camlmix.source := "json-static.html.mlx"
;;

# 1 "json-static.html.mlx";;
  
#load "utils.cmo";;
#use "topfind";;
#require "caml2html";;
#require "mikmatch_pcre";;
#load "unmix.cmo";;
#load "print_ocaml.cmo";;
#use "json-static-version.ml";;
open Print_ocaml
open Utils
open Camlmix

let () =
  Camlmix.line := 12;
  Camlmix.char := 3;
  Camlmix.source := "json-static.html.mlx"
;;

let () = !Camlmix.printer 
# 12 "json-static.html.mlx";;
   "\n";;

let () =
  Camlmix.line := 13;
  Camlmix.char := 3;
  Camlmix.source := "json-static.html.mlx"
;;

# 13 "json-static.html.mlx";;
   include_file "doctype" 
let () =
  Camlmix.line := 13;
  Camlmix.char := 29;
  Camlmix.source := "json-static.html.mlx"
;;

let () = !Camlmix.printer 
# 13 "json-static.html.mlx";;
                             "\n<html>\n<head>\n";;

let () =
  Camlmix.line := 16;
  Camlmix.char := 3;
  Camlmix.source := "json-static.html.mlx"
;;

# 16 "json-static.html.mlx";;
   title 
"json-static: JSON validator and converter for OCaml"

let () =
  Camlmix.line := 18;
  Camlmix.char := 3;
  Camlmix.source := "json-static.html.mlx"
;;

let () = !Camlmix.printer 
# 18 "json-static.html.mlx";;
   "\n";;

let () =
  Camlmix.line := 19;
  Camlmix.char := 3;
  Camlmix.source := "json-static.html.mlx"
;;

# 19 "json-static.html.mlx";;
   include_file "charset" 
let () =
  Camlmix.line := 19;
  Camlmix.char := 29;
  Camlmix.source := "json-static.html.mlx"
;;

let () = !Camlmix.printer 
# 19 "json-static.html.mlx";;
                             "\n";;

let () =
  Camlmix.line := 20;
  Camlmix.char := 3;
  Camlmix.source := "json-static.html.mlx"
;;

# 20 "json-static.html.mlx";;
   include_file "stylesheet" 
let () =
  Camlmix.line := 20;
  Camlmix.char := 32;
  Camlmix.source := "json-static.html.mlx"
;;

let () = !Camlmix.printer 
# 20 "json-static.html.mlx";;
                                "\n";;

let () =
  Camlmix.line := 21;
  Camlmix.char := 3;
  Camlmix.source := "json-static.html.mlx"
;;

# 21 "json-static.html.mlx";;
   include_file "ocaml-stylesheet" 
let () =
  Camlmix.line := 21;
  Camlmix.char := 38;
  Camlmix.source := "json-static.html.mlx"
;;

let () = !Camlmix.printer 
# 21 "json-static.html.mlx";;
                                      "\n";;

let () =
  Camlmix.line := 22;
  Camlmix.char := 3;
  Camlmix.source := "json-static.html.mlx"
;;

# 22 "json-static.html.mlx";;
   include_file "icon" 
let () =
  Camlmix.line := 22;
  Camlmix.char := 26;
  Camlmix.source := "json-static.html.mlx"
;;

let () = !Camlmix.printer 
# 22 "json-static.html.mlx";;
                          "\n";;

let () =
  Camlmix.line := 23;
  Camlmix.char := 3;
  Camlmix.source := "json-static.html.mlx"
;;

# 23 "json-static.html.mlx";;
   include_file "commonlinks" 
let () =
  Camlmix.line := 23;
  Camlmix.char := 33;
  Camlmix.source := "json-static.html.mlx"
;;

let () = !Camlmix.printer 
# 23 "json-static.html.mlx";;
                                 "\n</head>\n<body>\n";;

let () =
  Camlmix.line := 26;
  Camlmix.char := 3;
  Camlmix.source := "json-static.html.mlx"
;;

# 26 "json-static.html.mlx";;
   include_file "hitcounter" 
let () =
  Camlmix.line := 26;
  Camlmix.char := 32;
  Camlmix.source := "json-static.html.mlx"
;;

let () = !Camlmix.printer 
# 26 "json-static.html.mlx";;
                                "\n";;

let () =
  Camlmix.line := 27;
  Camlmix.char := 3;
  Camlmix.source := "json-static.html.mlx"
;;

# 27 "json-static.html.mlx";;
   include_file "start_big_table" 
let () =
  Camlmix.line := 27;
  Camlmix.char := 37;
  Camlmix.source := "json-static.html.mlx"
;;

let () = !Camlmix.printer 
# 27 "json-static.html.mlx";;
                                     "\n";;

let () =
  Camlmix.line := 28;
  Camlmix.char := 3;
  Camlmix.source := "json-static.html.mlx"
;;

# 28 "json-static.html.mlx";;
   top_menu ocaml 
let () =
  Camlmix.line := 28;
  Camlmix.char := 21;
  Camlmix.source := "json-static.html.mlx"
;;

let () = !Camlmix.printer 
# 28 "json-static.html.mlx";;
                     "\n\n";;

let () =
  Camlmix.line := 30;
  Camlmix.char := 3;
  Camlmix.source := "json-static.html.mlx"
;;

# 30 "json-static.html.mlx";;
  
open Printf

let () =
  Camlmix.line := 32;
  Camlmix.char := 3;
  Camlmix.source := "json-static.html.mlx"
;;

let () = !Camlmix.printer 
# 32 "json-static.html.mlx";;
   "\n\n<h1>json-static: JSON validator and converter for OCaml\n";;

let () =
  Camlmix.line := 35;
  Camlmix.char := 3;
  Camlmix.source := "json-static.html.mlx"
;;

# 35 "json-static.html.mlx";;
   include_file "2camels" 
let () =
  Camlmix.line := 35;
  Camlmix.char := 29;
  Camlmix.source := "json-static.html.mlx"
;;

let () = !Camlmix.printer 
# 35 "json-static.html.mlx";;
                             "</h1>\n\n<p>\n<div class=\"framed\">\nJson-static is now deprecated. Do not use it in new projects.\nIt has been replaced by <a href=\"/atdgen\">Atdgen</a>.\n</div>\n\n<h2>Introduction</h2>\n<p>\njson-static is a tool for converting parsed \n<a href=\"http://json.org/\">JSON</a> data with \nan unchecked structure\ninto specialized OCaml types and vice-versa.\nIt is a complement to\nthe <a href=\"json-wheel.html\">json-wheel library</a> which provides\na parser and a (pretty-) printer.\n\n<p>\nBy reading a type definition, the preprocessor inserts\ncode that converts between OCaml types (lists, arrays, tuples,\nobjects, polymorphic variants, ...) and untyped JSON data.\nThose type definitions are written in a syntax which is very close\nto regular OCaml type definitions.\n\n<p>\nWhy? OCaml is statically typed (unlike Perl, Python, Ruby, PHP or JavaScript). \nIt means that no type checking \noccurs at runtime, because it's all done at compile-time. It allows the \nprograms to be faster and less memory consuming, as well as safer since\nsimple bugs such as ";;

let () =
  Camlmix.line := 65;
  Camlmix.char := 23;
  Camlmix.source := "json-static.html.mlx"
;;

# 65 "json-static.html.mlx";;
                       ocamlcode "if some_rare_event then 2 + \"2\" " 
let () =
  Camlmix.line := 65;
  Camlmix.char := 73;
  Camlmix.source := "json-static.html.mlx"
;;

let () = !Camlmix.printer 
# 65 "json-static.html.mlx";;
                                                                         "\nwill be detected at the time of developing the program rather than when\n";;

let () =
  Camlmix.line := 67;
  Camlmix.char := 3;
  Camlmix.source := "json-static.html.mlx"
;;

# 67 "json-static.html.mlx";;
   ocamlcode "some_rare_event" 
let () =
  Camlmix.line := 67;
  Camlmix.char := 34;
  Camlmix.source := "json-static.html.mlx"
;;

let () = !Camlmix.printer 
# 67 "json-static.html.mlx";;
                                  " happens, which may well crash \na space shuttle. Now, this seems to be a problem for reading JSON data since \nan OCaml record or object has field labels which must be known at compile-time.\nUsing only the core OCaml language, \nyou can load JSON data as a single type, but not specialized types\nsuch as records, lists, etc. That is inconvenient since most of the time\nyou would manually write code that does the conversion, \nand returns an error if the\nformat of the data isn't right. Well, this is precisely what \nthe json-static syntax extension\nprovides: when specifying the expected type of a JSON document, \nconverter functions from/to that type are created by the preprocessor.\nThe function that converts from generic JSON to the specific type\nis also a validator, since the conversion will fail if the structure\nof the JSON data doesn't comply to the expected format.\n\n<p>\nThe big difference with dynamically-typed languages such as those\nmentioned above\nis that once the JSON\ndata is converted (and validated), it is guaranteed that every bit of the\nprogram which uses data of that type will read it safely, e.g. \nit cannot attempt to read a misspelled field name or a string instead of an int\nbecause that would trigger a compilation error. In other words, you cannot \nforget to use the validator.\n\n<p>\nThis syntax extension can be loaded like any other package\nand is compatible with other syntax extensions and libraries.\n\n\n<h2>Documentation</h2>\n\n<p>\nInstallation instructions, documentation\nand examples are given in \nthe <a href=\"json-static-readme.txt\">README</a> file.\n\n<h2>A realistic example: Yahoo! Image Search</h2>\n\n<p>\nView the <a href=\"yahoo.ml.html\">colorized source code</a>\nor save the script <code><a href=\"yahoo.ml\">yahoo.ml</a></code>.\nIt's all explained inside.\n\n<h2>Another cool example: del.icio.us popularity query</h2>\n\n<p>\nThis is an <a href=\"ocaml.html#ocamlscript\">ocamlscript</a> \n<a href=\"scripts/delicious.html\">script that queries del.icio.us</a> and\nshows how many times a given URL was bookmarked regardless of the tags\nas well as for each tag.\n\n<h3>How it works:</h3>\n\n<p>\nThe special type definition is what defines the structure of the JSON data \nas returned by del.icio.us. For example, see what \n<a href=\"http://badges.del.icio.us/feeds/json/url/data?hash=ff90821feeb2b02a33a6f9fc8e5f3fcd\">a query to del.icio.us for\nhttp://www.google.com/</a> returns.\n";;

let () =
  Camlmix.line := 127;
  Camlmix.char := 3;
  Camlmix.source := "json-static.html.mlx"
;;

# 127 "json-static.html.mlx";;
   print_with ocamlpre 
let () =
  Camlmix.line := 127;
  Camlmix.char := 26;
  Camlmix.source := "json-static.html.mlx"
;;

let () = !Camlmix.printer 
# 127 "json-static.html.mlx";;
                          "\ntype json results = \n    < hash: string;\n      top_tags: (string * int) assoc;\n      url: string;\n      total_posts: int > list\n";;

let () =
  Camlmix.line := 133;
  Camlmix.char := 3;
  Camlmix.source := "json-static.html.mlx"
;;

# 133 "json-static.html.mlx";;
   () 
let () =
  Camlmix.line := 133;
  Camlmix.char := 9;
  Camlmix.source := "json-static.html.mlx"
;;

let () = !Camlmix.printer 
# 133 "json-static.html.mlx";;
         "\n<p>\nFor those who don't speak OCaml: this is a list of objects with \nfour methods/fields (hash, top_tags, url, total_posts). \n";;

let () =
  Camlmix.line := 137;
  Camlmix.char := 3;
  Camlmix.source := "json-static.html.mlx"
;;

# 137 "json-static.html.mlx";;
   ocamlcode "(string * int) assoc" 
let () =
  Camlmix.line := 137;
  Camlmix.char := 39;
  Camlmix.source := "json-static.html.mlx"
;;

let () = !Camlmix.printer 
# 137 "json-static.html.mlx";;
                                       " maps to the OCaml type\n";;

let () =
  Camlmix.line := 138;
  Camlmix.char := 3;
  Camlmix.source := "json-static.html.mlx"
;;

# 138 "json-static.html.mlx";;
   ocamlcode "(string * int) list" 
let () =
  Camlmix.line := 138;
  Camlmix.char := 38;
  Camlmix.source := "json-static.html.mlx"
;;

let () = !Camlmix.printer 
# 138 "json-static.html.mlx";;
                                      ", but using ";;

let () =
  Camlmix.line := 138;
  Camlmix.char := 52;
  Camlmix.source := "json-static.html.mlx"
;;

# 138 "json-static.html.mlx";;
                                                    ocamlcode "assoc" 
let () =
  Camlmix.line := 138;
  Camlmix.char := 73;
  Camlmix.source := "json-static.html.mlx"
;;

let () = !Camlmix.printer 
# 138 "json-static.html.mlx";;
                                                                         " \nspecifies that it derives from a JSON object rather than a JSON array of arrays\nof two elements.\n\n<p>\nThe following functions are automatically generated and can be used in the\nrest of the program:\n";;

let () =
  Camlmix.line := 145;
  Camlmix.char := 3;
  Camlmix.source := "json-static.html.mlx"
;;

# 145 "json-static.html.mlx";;
   print_with ocamlpre 
let () =
  Camlmix.line := 145;
  Camlmix.char := 26;
  Camlmix.source := "json-static.html.mlx"
;;

let () = !Camlmix.printer 
# 145 "json-static.html.mlx";;
                          "\nval json_of_results : results -> Json_type.t\nval results_of_json : Json_type.t -> results\n";;

let () =
  Camlmix.line := 148;
  Camlmix.char := 3;
  Camlmix.source := "json-static.html.mlx"
;;

# 148 "json-static.html.mlx";;
   () 
let () =
  Camlmix.line := 148;
  Camlmix.char := 9;
  Camlmix.source := "json-static.html.mlx"
;;

let () = !Camlmix.printer 
# 148 "json-static.html.mlx";;
         "\n<p>\nThese functions convert between generic JSON data and the \n";;

let () =
  Camlmix.line := 151;
  Camlmix.char := 3;
  Camlmix.source := "json-static.html.mlx"
;;

# 151 "json-static.html.mlx";;
   ocamlcode "results" 
let () =
  Camlmix.line := 151;
  Camlmix.char := 26;
  Camlmix.source := "json-static.html.mlx"
;;

let () = !Camlmix.printer 
# 151 "json-static.html.mlx";;
                          " type. ";;

let () =
  Camlmix.line := 151;
  Camlmix.char := 35;
  Camlmix.source := "json-static.html.mlx"
;;

# 151 "json-static.html.mlx";;
                                   ocamlcode "json_of_results" 
let () =
  Camlmix.line := 151;
  Camlmix.char := 66;
  Camlmix.source := "json-static.html.mlx"
;;

let () = !Camlmix.printer 
# 151 "json-static.html.mlx";;
                                                                  "\nalways succeeds, but a call to \n";;

let () =
  Camlmix.line := 153;
  Camlmix.char := 3;
  Camlmix.source := "json-static.html.mlx"
;;

# 153 "json-static.html.mlx";;
   ocamlcode "results_of_json" 
let () =
  Camlmix.line := 153;
  Camlmix.char := 34;
  Camlmix.source := "json-static.html.mlx"
;;

let () = !Camlmix.printer 
# 153 "json-static.html.mlx";;
                                  " would fail by raising\nan exception if the structure of the JSON data is not compatible \nwith the expected type. This is why this converter is also a validator.\n<p>\nImportant note: if any JSON object has more fields \nthan expected or some expected fields are given more than once, \nthose are silently ignored. It makes it easy to ignore fields that are \nnot needed or unexpectedly added to the format.\n\n\n<h2>Download</h2>\n\n<p>\nThis software was written by Martin Jambon. \nIt is distributed under a \n<a href=\"json-static-license.txt\">BSD license</a>.\nThe current version is ";;

let () =
  Camlmix.line := 169;
  Camlmix.char := 26;
  Camlmix.source := "json-static.html.mlx"
;;

let () = !Camlmix.printer 
# 169 "json-static.html.mlx";;
                        (  json_static_version  : string);;

let () =
  Camlmix.line := 169;
  Camlmix.char := 50;
  Camlmix.source := "json-static.html.mlx"
;;

let () = !Camlmix.printer 
# 169 "json-static.html.mlx";;
                                                  "; \nsee <a href=\"json-static-changes.txt\">Changes</a>.\n<p>\nDisclaimer: this is a beta release.\n\n<p>\nYou can install this library from \n<a href=\"http://godi.ocaml-programming.de/\">GODI</a> or manually:\n\n<p>\nThe first version that works with OCaml 3.10.1 is 0.9.6.\n<table class=\"light-table\">\n<tr style=\"background-color: #ddd\">\n<td>Latest version:</td>\n";;

let () =
  Camlmix.line := 183;
  Camlmix.char := 3;
  Camlmix.source := "json-static.html.mlx"
;;

# 183 "json-static.html.mlx";;
   
let gz = sprintf "json-static-%s.tar.gz" json_static_version
let bz2 = sprintf "json-static-%s.tar.bz2" json_static_version

let () =
  Camlmix.line := 186;
  Camlmix.char := 3;
  Camlmix.source := "json-static.html.mlx"
;;

let () = !Camlmix.printer 
# 186 "json-static.html.mlx";;
   "\n<td>";;

let () =
  Camlmix.line := 187;
  Camlmix.char := 7;
  Camlmix.source := "json-static.html.mlx"
;;

# 187 "json-static.html.mlx";;
       download "json-static.tar.gz" 
let () =
  Camlmix.line := 187;
  Camlmix.char := 40;
  Camlmix.source := "json-static.html.mlx"
;;

let () = !Camlmix.printer 
# 187 "json-static.html.mlx";;
                                        "</td>\n<td>";;

let () =
  Camlmix.line := 188;
  Camlmix.char := 7;
  Camlmix.source := "json-static.html.mlx"
;;

# 188 "json-static.html.mlx";;
       download "json-static.tar.bz2" 
let () =
  Camlmix.line := 188;
  Camlmix.char := 41;
  Camlmix.source := "json-static.html.mlx"
;;

let () = !Camlmix.printer 
# 188 "json-static.html.mlx";;
                                         "</td>\n<td>";;

let () =
  Camlmix.line := 189;
  Camlmix.char := 7;
  Camlmix.source := "json-static.html.mlx"
;;

# 189 "json-static.html.mlx";;
       download gz 
let () =
  Camlmix.line := 189;
  Camlmix.char := 22;
  Camlmix.source := "json-static.html.mlx"
;;

let () = !Camlmix.printer 
# 189 "json-static.html.mlx";;
                      "</td>\n<td>";;

let () =
  Camlmix.line := 190;
  Camlmix.char := 7;
  Camlmix.source := "json-static.html.mlx"
;;

# 190 "json-static.html.mlx";;
       download bz2 
let () =
  Camlmix.line := 190;
  Camlmix.char := 23;
  Camlmix.source := "json-static.html.mlx"
;;

let () = !Camlmix.printer 
# 190 "json-static.html.mlx";;
                       "</td>\n</tr>\n";;

let () =
  Camlmix.line := 192;
  Camlmix.char := 3;
  Camlmix.source := "json-static.html.mlx"
;;

# 192 "json-static.html.mlx";;
   
List.iter
  (fun s ->
     printf "<tr>\n<td></td><td></td><td></td>\n";
     printf "<td>";
     download (sprintf "json-static-%s.tar.gz" s); 
     printf "</td>\n";
     printf "<td>";
     download (sprintf "json-static-%s.tar.bz2" s);
     printf "</td>\n</tr>\n")
	      [ "0.9.7"; "0.9.6"; "0.9.5"; "0.9.4"; "0.9.3"; "0.9.2"; 
		"0.9.1"; "0.9.0" (* previous versions go here *) ]

let () =
  Camlmix.line := 204;
  Camlmix.char := 3;
  Camlmix.source := "json-static.html.mlx"
;;

let () = !Camlmix.printer 
# 204 "json-static.html.mlx";;
   "\n</table>\n\n<p>\nAccess to the \n<a href=\"http://forge.ocamlcore.org/scm/?group_id=38\">development version \nof json-static</a>\nis offered by \n<a href=\"http://forge.ocamlcore.org/\">OCamlForge</a>.\n\n\n\n<h2>Related projects</h2>\n\nAll of the following translate some kind of type definition into code that\ncan validate the structure of a document and convert it to that type:\n<ul>\n<li> <a href=\"http://www.kuwata-lab.com/kwalify/\">Kwalify</a>: \na YAML (and JSON) validator written in Ruby and ported to Java.\n<li> <a href=\"http://www.ocaml.info/home/ocaml_sources.html\">Sexplib</a>:\nsame ideas as json-static, but for S-expressions instead of JSON.\n<li> <a href=\"ocaml.html#col\">Col</a>: same ideas as json-static, \nbut for CSV files.\n<li> <a href=\"http://cristal.inria.fr/~ddr/IoXML/\">IoXML</a>: \nmapping from OCaml type definitions to an XML format.\n<li> <a href=\"http://www.cduce.org\">CDuce</a>: an OCaml-friendly language \nfor the manipulation of XML documents.\n<li> <a href=\"http://www.cs.cornell.edu/~ebreck/pa_arg/\">Pa_arg</a>: \nrecord-like type declarations for the automatic conversion of \ncommand-line options.\n</ul>\n\n\n";;

let () =
  Camlmix.line := 237;
  Camlmix.char := 3;
  Camlmix.source := "json-static.html.mlx"
;;

# 237 "json-static.html.mlx";;
   camlmix_footer ~years:"2007" () 
let () =
  Camlmix.line := 237;
  Camlmix.char := 38;
  Camlmix.source := "json-static.html.mlx"
;;

let () = !Camlmix.printer 
# 237 "json-static.html.mlx";;
                                      "\n";;

let () =
  Camlmix.line := 238;
  Camlmix.char := 3;
  Camlmix.source := "json-static.html.mlx"
;;

# 238 "json-static.html.mlx";;
   include_file "end_big_table" 
let () =
  Camlmix.line := 238;
  Camlmix.char := 35;
  Camlmix.source := "json-static.html.mlx"
;;

let () = !Camlmix.printer 
# 238 "json-static.html.mlx";;
                                   "\n</body>\n</html>\n";;

