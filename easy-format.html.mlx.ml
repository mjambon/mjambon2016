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

# 1 "easy-format.html.mlx";;

let () =
  Camlmix.line := 1;
  Camlmix.char := 1;
  Camlmix.source := "easy-format.html.mlx"
;;

let () = !Camlmix.printer 
# 1 "easy-format.html.mlx";;
 "";;

let () =
  Camlmix.line := 1;
  Camlmix.char := 3;
  Camlmix.source := "easy-format.html.mlx"
;;

# 1 "easy-format.html.mlx";;
  
#load "utils.cmo";;
#use "topfind";;
#require "caml2html";;
#require "mikmatch_pcre";;
#load "unmix.cmo";;
#load "print_ocaml.cmo";;
#use "easy-format-version.ml";;
open Print_ocaml
open Utils
open Camlmix

let () =
  Camlmix.line := 12;
  Camlmix.char := 3;
  Camlmix.source := "easy-format.html.mlx"
;;

let () = !Camlmix.printer 
# 12 "easy-format.html.mlx";;
   "\n";;

let () =
  Camlmix.line := 13;
  Camlmix.char := 3;
  Camlmix.source := "easy-format.html.mlx"
;;

# 13 "easy-format.html.mlx";;
   include_file "doctype" 
let () =
  Camlmix.line := 13;
  Camlmix.char := 29;
  Camlmix.source := "easy-format.html.mlx"
;;

let () = !Camlmix.printer 
# 13 "easy-format.html.mlx";;
                             "\n<html>\n<head>\n";;

let () =
  Camlmix.line := 16;
  Camlmix.char := 3;
  Camlmix.source := "easy-format.html.mlx"
;;

# 16 "easy-format.html.mlx";;
   title 
"Easy-format: pretty-printing made easy"

let () =
  Camlmix.line := 18;
  Camlmix.char := 3;
  Camlmix.source := "easy-format.html.mlx"
;;

let () = !Camlmix.printer 
# 18 "easy-format.html.mlx";;
   "\n";;

let () =
  Camlmix.line := 19;
  Camlmix.char := 3;
  Camlmix.source := "easy-format.html.mlx"
;;

# 19 "easy-format.html.mlx";;
   include_file "charset" 
let () =
  Camlmix.line := 19;
  Camlmix.char := 29;
  Camlmix.source := "easy-format.html.mlx"
;;

let () = !Camlmix.printer 
# 19 "easy-format.html.mlx";;
                             "\n";;

let () =
  Camlmix.line := 20;
  Camlmix.char := 3;
  Camlmix.source := "easy-format.html.mlx"
;;

# 20 "easy-format.html.mlx";;
   include_file "stylesheet" 
let () =
  Camlmix.line := 20;
  Camlmix.char := 32;
  Camlmix.source := "easy-format.html.mlx"
;;

let () = !Camlmix.printer 
# 20 "easy-format.html.mlx";;
                                "\n";;

let () =
  Camlmix.line := 21;
  Camlmix.char := 3;
  Camlmix.source := "easy-format.html.mlx"
;;

# 21 "easy-format.html.mlx";;
   include_file "ocaml-stylesheet" 
let () =
  Camlmix.line := 21;
  Camlmix.char := 38;
  Camlmix.source := "easy-format.html.mlx"
;;

let () = !Camlmix.printer 
# 21 "easy-format.html.mlx";;
                                      "\n";;

let () =
  Camlmix.line := 22;
  Camlmix.char := 3;
  Camlmix.source := "easy-format.html.mlx"
;;

# 22 "easy-format.html.mlx";;
   include_file "icon" 
let () =
  Camlmix.line := 22;
  Camlmix.char := 26;
  Camlmix.source := "easy-format.html.mlx"
;;

let () = !Camlmix.printer 
# 22 "easy-format.html.mlx";;
                          "\n";;

let () =
  Camlmix.line := 23;
  Camlmix.char := 3;
  Camlmix.source := "easy-format.html.mlx"
;;

# 23 "easy-format.html.mlx";;
   include_file "commonlinks" 
let () =
  Camlmix.line := 23;
  Camlmix.char := 33;
  Camlmix.source := "easy-format.html.mlx"
;;

let () = !Camlmix.printer 
# 23 "easy-format.html.mlx";;
                                 "\n</head>\n<body>\n";;

let () =
  Camlmix.line := 26;
  Camlmix.char := 3;
  Camlmix.source := "easy-format.html.mlx"
;;

# 26 "easy-format.html.mlx";;
   include_file "hitcounter" 
let () =
  Camlmix.line := 26;
  Camlmix.char := 32;
  Camlmix.source := "easy-format.html.mlx"
;;

let () = !Camlmix.printer 
# 26 "easy-format.html.mlx";;
                                "\n";;

let () =
  Camlmix.line := 27;
  Camlmix.char := 3;
  Camlmix.source := "easy-format.html.mlx"
;;

# 27 "easy-format.html.mlx";;
   include_file "start_big_table" 
let () =
  Camlmix.line := 27;
  Camlmix.char := 37;
  Camlmix.source := "easy-format.html.mlx"
;;

let () = !Camlmix.printer 
# 27 "easy-format.html.mlx";;
                                     "\n";;

let () =
  Camlmix.line := 28;
  Camlmix.char := 3;
  Camlmix.source := "easy-format.html.mlx"
;;

# 28 "easy-format.html.mlx";;
   top_menu ocaml 
let () =
  Camlmix.line := 28;
  Camlmix.char := 21;
  Camlmix.source := "easy-format.html.mlx"
;;

let () = !Camlmix.printer 
# 28 "easy-format.html.mlx";;
                     "\n\n";;

let () =
  Camlmix.line := 30;
  Camlmix.char := 3;
  Camlmix.source := "easy-format.html.mlx"
;;

# 30 "easy-format.html.mlx";;
  
open Printf

let () =
  Camlmix.line := 32;
  Camlmix.char := 3;
  Camlmix.source := "easy-format.html.mlx"
;;

let () = !Camlmix.printer 
# 32 "easy-format.html.mlx";;
   "\n\n<h1>Easy-format: pretty-printing made easy\n";;

let () =
  Camlmix.line := 35;
  Camlmix.char := 3;
  Camlmix.source := "easy-format.html.mlx"
;;

# 35 "easy-format.html.mlx";;
   include_file "1camel" 
let () =
  Camlmix.line := 35;
  Camlmix.char := 28;
  Camlmix.source := "easy-format.html.mlx"
;;

let () = !Camlmix.printer 
# 35 "easy-format.html.mlx";;
                            "</h1>\n\n<h2>Introduction</h2>\n\n<p>\nThis module offers a high-level and functional interface \nto the Format module of the OCaml standard library.\nIt is a pretty-printing facility, i.e. it takes as input some code \nrepresented as a tree and formats this code into the most visually\nsatisfying result, breaking and indenting lines of code\nwhere appropriate.\n</p>\n\n<p>\nInput data must be first modelled and converted into\na tree using 3 kinds of nodes:\n</p>\n<ul>\n<li> atoms</li>\n<li> lists</li>\n<li> labelled nodes</li>\n</ul>\n\n<p>\nAtoms represent any text that is guaranteed to be printed as-is.\nLists can model any sequence of items such as arrays of data\nor lists of definitions that are labelled with something \nlike \"int main\", \"let x =\" or \"x:\".\n</p>\n\n\n<h2>Download</h2>\n\n<p>\nThis software was written by Martin Jambon. \nIt is distributed under a \n<a href=\"easy-format-license.txt\">BSD license</a>.\n<a href=\"/releases/easy-format\">Download it here</a>.\n</p>\n\n<p>\nThe <a href=\"https://github.com/mjambon/easy-format\">development version\nof easy-format</a> is hosted on GitHub.\n\n\n\n<h2>Library interface</h2>\n\n<p>\n<a href=\"easy-format-doc/index.html\">Ocamldoc-generated \ninterface documentation</a>\n</p>\n\n\n\n<h2>Indentation rules</h2>\n\n\n<p>\nIndentation is performed using ASCII space character, \nand whitespace as produced by the Format module.\nThe current implementation uses reasonable characters: ASCII space ' '\nand ASCII line feeds '\\n' although the output functions may perform \na conversion, i.e. convert \"\\n\" into \"\\r\\n\" on Windows out_channels opened\nin text mode.\n</p>\n\n<p>\nNo strict indentation rules are guaranteed. The target language, if any,\nis assumed to treat any sequence of whitespace characters \nbetween nodes as insignificant.\n</p>\n\n<p>\nFormatting hints can be specified for each node of the tree and \nthey allow to cover a variety of formatting styles.\n</p>\n\n\n<h2>Examples</h2>\n\n\n<p>\nA fairly <a href=\"easy_format_example.html\">complete example</a> \n(<a href=\"easy_format_example.html\">HTML</a>, \n<a href=\"easy_format_example.ml\">raw source</a>).\n</p>\n\n<p>\nMore examples used for testing and debugging\nare provided with the source distribution.\n</p>\n\n\n\n<h2>Frequent patterns</h2>\n\n\n\n\n<h3>Sticky opening</h3>\n\n<pre>\nlabel opening ... closing\n</pre>\n\n<p>or</p>\n\n<pre>\nlabel opening\n  ...\nclosing\n</pre>\n\n\n<p>Parameters:</p>\n<pre>\n  stick_to_label = true\n  align_closing = true\n</pre>\n\n\n<h3>Non-sticky opening</h3>\n\n\n<pre>\nlabel opening item1 item2 closing\n</pre>\n\n<p>or</p>\n\n<pre>\nlabel\n  opening\n    ...\n  closing\n</pre>\n\n\n<p>Parameters:</p>\n<pre>\n  stick_to_label = false\n  align_closing = true\n</pre>\n\n\n<h3>Sequence</h3>\n\n\n<pre>\nlabel opening ... closing\n</pre>\n\n<p>or</p>\n\n<pre>\nlabel\nopening\n  ...\nclosing\n</pre>\n\n\n<p>Parameters:</p>\n<pre>\n  indent_after_label = 0\n  stick_to_label = false\n  align_closing = true\n</pre>\n\n\n\n<h3>Indented list</h3>\n\n\n<pre>\nopening item1 item2 closing\n</pre>\n\n<p>or</p>\n\n<pre>\nopening\n  item1\n  item2\nclosing\n</pre>\n\n\n<p>Parameters:</p>\n<pre>\n  indent_items = 2\n  align_closing = true\n</pre>\n\n\n\n<h3>Non-aligned parentheses</h3>\n\n\n<pre>\nopening item1 item2 item3 closing\n</pre>\n\n<p>or</p>\n\n<pre>\nopening item1\n        item2\n        item3 closing\n</pre>\n\n\n<p>Parameters:</p>\n<pre>\n  align_closing = false\n</pre>\n\n\n\n<h3>Wrapped list body</h3>\n\n\n<pre>\nopening item1 item2 item3 closing\n</pre>\n\n<p>or</p>\n\n<pre>\nopening\n  item1 item2\n  item3\nclosing\n</pre>\n\n\n<p>Parameters:</p>\n<pre>\n   wrap_body = `Always_wrap\n</pre>\n\n\n<h3>Disabled list body wrapping</h3>\n\n\n<pre>\nopening item1 item2 item3 closing\n</pre>\n\n<p>or</p>\n\n<pre>\nopening\n  item1\n  item2\n  item3\nclosing\n</pre>\n\n\n<p>Parameters:</p>\n<pre>\n   wrap_body = `Never_wrap\n</pre>\n\n\n\n<h3>Vertical list body</h3>\n\n<pre>\nopening\n  item1\n  item2\n  item3\nclosing\n</pre>\n\n\n<p>Parameters:</p>\n<pre>\n   wrap_body = `Force_breaks\n</pre>\n\n\n<h3>Horizontal list body</h3>\n\n<pre>\nopening item1 item2 item3 closing\n</pre>\n\n<p>or</p>\n\n<pre>\nopening\n  item1 item2 item3\nclosing\n</pre>\n\n\n<p>Parameters:</p>\n<pre>\n   wrap_body = `No_breaks\n</pre>\n\n\n\n\n<h3>Padding</h3>\n\n\n<pre>\n( item1 item2 )\n</pre>\n\n<p>or</p>\n\n<pre>\n(\n  item1\n  item2\n)\n</pre>\n\n\n<p>Parameters:</p>\n<pre>\n  space_after_opening = true\n  space_before_closing = true\n</pre>\n\n\n\n<h3>No padding</h3>\n\n\n<pre>\n(item1 item2)\n</pre>\n\n<p>or</p>\n\n<pre>\n(\n  item1\n  item2\n)\n</pre>\n\n\n<p>Parameters:</p>\n<pre>\n  space_after_opening = false\n  space_before_closing = false\n</pre>\n\n\n\n<h3>Space after separator</h3>\n\n\n<pre>\nopening item1, item2 closing\n</pre>\n\n<p>or</p>\n\n<pre>\nopening\n  item1,\n  item2\nclosing\n</pre>\n\n\n<p>Parameters:</p>\n<pre>\n  space_after_separator = true\n</pre>\n\n\n\n<h3>No space after separator</h3>\n\n\n<pre>\nopening item1,item2 closing\n</pre>\n\n<p>or</p>\n\n<pre>\nopening\n  item1,\n  item2\nclosing\n</pre>\n\n\n<p>Parameters:</p>\n<pre>\n  space_after_separator = false\n</pre>\n\n\n\n\n<h3>Beginning-of-line separators</h3>\n\n\n<pre>\nopening item1 separator item2 separator item3 closing\n</pre>\n\n<p>or</p>\n\n<pre>\nopening\n            item1\n  separator item2\n  separator item3\nclosing\n</pre>\n\n<p>or</p>\n\n<pre>\nopening\n            item1 separator item2\n  separator item3\nclosing\n</pre>\n\n\n<p>Parameters:</p>\n<pre>\n  separators_stick_left = false\n  space_before_separator = true\n  space_after_separator = true\n</pre>\n\n\n";;

let () =
  Camlmix.line := 477;
  Camlmix.char := 3;
  Camlmix.source := "easy-format.html.mlx"
;;

# 477 "easy-format.html.mlx";;
   camlmix_footer ~years:"2008" () 
let () =
  Camlmix.line := 477;
  Camlmix.char := 38;
  Camlmix.source := "easy-format.html.mlx"
;;

let () = !Camlmix.printer 
# 477 "easy-format.html.mlx";;
                                      "\n";;

let () =
  Camlmix.line := 478;
  Camlmix.char := 3;
  Camlmix.source := "easy-format.html.mlx"
;;

# 478 "easy-format.html.mlx";;
   include_file "end_big_table" 
let () =
  Camlmix.line := 478;
  Camlmix.char := 35;
  Camlmix.source := "easy-format.html.mlx"
;;

let () = !Camlmix.printer 
# 478 "easy-format.html.mlx";;
                                   "\n</body>\n</html>\n";;

