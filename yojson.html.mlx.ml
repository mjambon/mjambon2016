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

# 1 "yojson.html.mlx";;

let () =
  Camlmix.line := 1;
  Camlmix.char := 1;
  Camlmix.source := "yojson.html.mlx"
;;

let () = !Camlmix.printer 
# 1 "yojson.html.mlx";;
 "";;

let () =
  Camlmix.line := 1;
  Camlmix.char := 3;
  Camlmix.source := "yojson.html.mlx"
;;

# 1 "yojson.html.mlx";;
  
#load "utils.cmo";;
#use "topfind";;
#require "caml2html";;
#require "mikmatch_pcre";;
#load "unmix.cmo";;
#load "print_ocaml.cmo";;
#use "yojson-version.ml";;
open Print_ocaml
open Utils
open Camlmix

let () =
  Camlmix.line := 12;
  Camlmix.char := 3;
  Camlmix.source := "yojson.html.mlx"
;;

let () = !Camlmix.printer 
# 12 "yojson.html.mlx";;
   "\n";;

let () =
  Camlmix.line := 13;
  Camlmix.char := 3;
  Camlmix.source := "yojson.html.mlx"
;;

# 13 "yojson.html.mlx";;
   include_file "doctype" 
let () =
  Camlmix.line := 13;
  Camlmix.char := 29;
  Camlmix.source := "yojson.html.mlx"
;;

let () = !Camlmix.printer 
# 13 "yojson.html.mlx";;
                             "\n<html>\n<head>\n";;

let () =
  Camlmix.line := 16;
  Camlmix.char := 3;
  Camlmix.source := "yojson.html.mlx"
;;

# 16 "yojson.html.mlx";;
   title 
"Yojson"

let () =
  Camlmix.line := 18;
  Camlmix.char := 3;
  Camlmix.source := "yojson.html.mlx"
;;

let () = !Camlmix.printer 
# 18 "yojson.html.mlx";;
   "\n";;

let () =
  Camlmix.line := 19;
  Camlmix.char := 3;
  Camlmix.source := "yojson.html.mlx"
;;

# 19 "yojson.html.mlx";;
   include_file "charset" 
let () =
  Camlmix.line := 19;
  Camlmix.char := 29;
  Camlmix.source := "yojson.html.mlx"
;;

let () = !Camlmix.printer 
# 19 "yojson.html.mlx";;
                             "\n";;

let () =
  Camlmix.line := 20;
  Camlmix.char := 3;
  Camlmix.source := "yojson.html.mlx"
;;

# 20 "yojson.html.mlx";;
   include_file "stylesheet" 
let () =
  Camlmix.line := 20;
  Camlmix.char := 32;
  Camlmix.source := "yojson.html.mlx"
;;

let () = !Camlmix.printer 
# 20 "yojson.html.mlx";;
                                "\n";;

let () =
  Camlmix.line := 21;
  Camlmix.char := 3;
  Camlmix.source := "yojson.html.mlx"
;;

# 21 "yojson.html.mlx";;
   include_file "ocaml-stylesheet" 
let () =
  Camlmix.line := 21;
  Camlmix.char := 38;
  Camlmix.source := "yojson.html.mlx"
;;

let () = !Camlmix.printer 
# 21 "yojson.html.mlx";;
                                      "\n";;

let () =
  Camlmix.line := 22;
  Camlmix.char := 3;
  Camlmix.source := "yojson.html.mlx"
;;

# 22 "yojson.html.mlx";;
   include_file "icon" 
let () =
  Camlmix.line := 22;
  Camlmix.char := 26;
  Camlmix.source := "yojson.html.mlx"
;;

let () = !Camlmix.printer 
# 22 "yojson.html.mlx";;
                          "\n";;

let () =
  Camlmix.line := 23;
  Camlmix.char := 3;
  Camlmix.source := "yojson.html.mlx"
;;

# 23 "yojson.html.mlx";;
   include_file "commonlinks" 
let () =
  Camlmix.line := 23;
  Camlmix.char := 33;
  Camlmix.source := "yojson.html.mlx"
;;

let () = !Camlmix.printer 
# 23 "yojson.html.mlx";;
                                 "\n</head>\n<body>\n";;

let () =
  Camlmix.line := 26;
  Camlmix.char := 3;
  Camlmix.source := "yojson.html.mlx"
;;

# 26 "yojson.html.mlx";;
   include_file "hitcounter" 
let () =
  Camlmix.line := 26;
  Camlmix.char := 32;
  Camlmix.source := "yojson.html.mlx"
;;

let () = !Camlmix.printer 
# 26 "yojson.html.mlx";;
                                "\n";;

let () =
  Camlmix.line := 27;
  Camlmix.char := 3;
  Camlmix.source := "yojson.html.mlx"
;;

# 27 "yojson.html.mlx";;
   include_file "start_big_table" 
let () =
  Camlmix.line := 27;
  Camlmix.char := 37;
  Camlmix.source := "yojson.html.mlx"
;;

let () = !Camlmix.printer 
# 27 "yojson.html.mlx";;
                                     "\n";;

let () =
  Camlmix.line := 28;
  Camlmix.char := 3;
  Camlmix.source := "yojson.html.mlx"
;;

# 28 "yojson.html.mlx";;
   top_menu ocaml 
let () =
  Camlmix.line := 28;
  Camlmix.char := 21;
  Camlmix.source := "yojson.html.mlx"
;;

let () = !Camlmix.printer 
# 28 "yojson.html.mlx";;
                     "\n\n";;

let () =
  Camlmix.line := 30;
  Camlmix.char := 3;
  Camlmix.source := "yojson.html.mlx"
;;

# 30 "yojson.html.mlx";;
  
open Printf

let () =
  Camlmix.line := 32;
  Camlmix.char := 3;
  Camlmix.source := "yojson.html.mlx"
;;

let () = !Camlmix.printer 
# 32 "yojson.html.mlx";;
   "\n\n<h1>Yojson\n";;

let () =
  Camlmix.line := 35;
  Camlmix.char := 3;
  Camlmix.source := "yojson.html.mlx"
;;

# 35 "yojson.html.mlx";;
   include_file "1camel" 
let () =
  Camlmix.line := 35;
  Camlmix.char := 28;
  Camlmix.source := "yojson.html.mlx"
;;

let () = !Camlmix.printer 
# 35 "yojson.html.mlx";;
                            "</h1>\n\n<h2>Introduction</h2>\n\n<p>\nYojson is an optimized parsing and printing library for the \n<a href=\"http://json.org/\">JSON</a> format. \nIt addresses a few shortcomings of <a href=\"json-wheel.html\">json-wheel</a>\nincluding 2x speedup, \npolymorphic variants and optional syntax for tuples and variants.\n\n<p>\n<code>ydump</code> is a pretty-printing command-line program\nprovided with the yojson package.\n\n<p>\nThe program <a href=\"/atdgen\"><code>atdgen</code></a>\ncan be used to derive OCaml-JSON serializers and deserializers\nfrom type definitions.\n\n\n<h2>JSON extensions</h2>\n\n<p>\nThe yojson implementation follows \n<a href=\"http://www.ietf.org/rfc/rfc4627.txt\">RFC 4627</a> except\nfor the following features.\nThese syntax extensions \nare supported by the yojson readers and can be disabled by the \nwriters when standard JSON is required.\n\n<ul>\n<li> Tuples: like JSON arrays but within parentheses instead of\nsquare brackets, such as\n<pre>\n(1.23, 4.56)\n</pre>\n\n<li> Variants without argument:\n<pre>\n&lt;\"Foo\"&gt;\n</pre>\n\n<li> Variants with one argument:\n<pre>\n&lt;\"Bar\": 123&gt;\n</pre>\n\n<li> Unquoted field names and variants are accepted if they match \nthe pattern [A-Za-z][A-Za-z_0-9]*:\n<pre>\n{ x: &lt;Foo&gt;, \"#y\": &lt;Bar2&gt; }\n</pre>\n\n<li> Comments:\n<pre>\n/*\n  multiline\n  comment\n*/\n  // end-of-line comment\n</pre>\n\n<li> Special numeric entities:\n<pre>\n[ Infinity, -Infinity, NaN ]\n</pre>\n\n<li> Root node may be any JSON value, not just an array or an object.\n</ul>\n\n<p>\nNote that <code>yojson</code> never checks the encoding of strings.\nAll ASCII-compatible encodings including UTF-8\nare supported by yojson readers and writers.\nNon-ASCII-compatible encodings UTF-16BE, UTF-16LE, UTF-32BE and UTF-32LE \nare not supported.\n\"\\uXXXX\" escape sequences are converted by the readers into the equivalent\nUTF-8 multibyte sequences.\nCharacters outside the ASCII range are always written\nas is, as permitted by the JSON standard. Bytes that do not form valid UTF-8\ncharacters are also output as is. It is the user's responsibility\nto check for the correctness of UTF-8 data when appropriate.\n\n\n\n<h2>Library documentation</h2>\n\n<ul>\n<li> <a href=\"yojson-doc/Yojson.Safe.html\">Documentation of <code>Yojson.Safe</code></a>, the most commonly used module.\n<li> <a href=\"yojson-doc/index.html\">Root</a>\n</ul>\n\n\n<h2>Download</h2>\n\n<p>\nThis software was written by Martin Jambon. \nIt is distributed under a \n<a href=\"yojson-license.txt\">BSD license</a>.\n<a href=\"/releases/yojson\">Download it here</a>.\n</p>\n\n<p>\nThe <a href=\"https://github.com/mjambon/yojson\">development version\nof Yojson</a> is hosted on GitHub.\n\n\n\n";;

let () =
  Camlmix.line := 144;
  Camlmix.char := 3;
  Camlmix.source := "yojson.html.mlx"
;;

# 144 "yojson.html.mlx";;
   camlmix_footer ~years:"2010" () 
let () =
  Camlmix.line := 144;
  Camlmix.char := 38;
  Camlmix.source := "yojson.html.mlx"
;;

let () = !Camlmix.printer 
# 144 "yojson.html.mlx";;
                                      "\n";;

let () =
  Camlmix.line := 145;
  Camlmix.char := 3;
  Camlmix.source := "yojson.html.mlx"
;;

# 145 "yojson.html.mlx";;
   include_file "end_big_table" 
let () =
  Camlmix.line := 145;
  Camlmix.char := 35;
  Camlmix.source := "yojson.html.mlx"
;;

let () = !Camlmix.printer 
# 145 "yojson.html.mlx";;
                                   "\n</body>\n</html>\n";;

