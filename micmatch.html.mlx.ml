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

# 1 "micmatch.html.mlx";;

let () =
  Camlmix.line := 1;
  Camlmix.char := 1;
  Camlmix.source := "micmatch.html.mlx"
;;

let () = !Camlmix.printer 
# 1 "micmatch.html.mlx";;
 "";;

let () =
  Camlmix.line := 1;
  Camlmix.char := 3;
  Camlmix.source := "micmatch.html.mlx"
;;

# 1 "micmatch.html.mlx";;
  
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
  Camlmix.source := "micmatch.html.mlx"
;;

let () = !Camlmix.printer 
# 11 "micmatch.html.mlx";;
   "\n";;

let () =
  Camlmix.line := 12;
  Camlmix.char := 3;
  Camlmix.source := "micmatch.html.mlx"
;;

# 12 "micmatch.html.mlx";;
   let micmatch_version = slurp_command "./micmatch-version" 
let () =
  Camlmix.line := 12;
  Camlmix.char := 64;
  Camlmix.source := "micmatch.html.mlx"
;;

let () = !Camlmix.printer 
# 12 "micmatch.html.mlx";;
                                                                "\n";;

let () =
  Camlmix.line := 13;
  Camlmix.char := 3;
  Camlmix.source := "micmatch.html.mlx"
;;

# 13 "micmatch.html.mlx";;
   let mikmatch_version = slurp_command "./mikmatch-version" 
let () =
  Camlmix.line := 13;
  Camlmix.char := 64;
  Camlmix.source := "micmatch.html.mlx"
;;

let () = !Camlmix.printer 
# 13 "micmatch.html.mlx";;
                                                                "\n";;

let () =
  Camlmix.line := 14;
  Camlmix.char := 3;
  Camlmix.source := "micmatch.html.mlx"
;;

# 14 "micmatch.html.mlx";;
   include_file "doctype" 
let () =
  Camlmix.line := 14;
  Camlmix.char := 29;
  Camlmix.source := "micmatch.html.mlx"
;;

let () = !Camlmix.printer 
# 14 "micmatch.html.mlx";;
                             "\n<html>\n<head>\n";;

let () =
  Camlmix.line := 17;
  Camlmix.char := 3;
  Camlmix.source := "micmatch.html.mlx"
;;

# 17 "micmatch.html.mlx";;
   title "Mikmatch: OCaml Pattern Matching + Regexps" 
let () =
  Camlmix.line := 17;
  Camlmix.char := 57;
  Camlmix.source := "micmatch.html.mlx"
;;

let () = !Camlmix.printer 
# 17 "micmatch.html.mlx";;
                                                         "\n";;

let () =
  Camlmix.line := 18;
  Camlmix.char := 3;
  Camlmix.source := "micmatch.html.mlx"
;;

# 18 "micmatch.html.mlx";;
   include_file "charset" 
let () =
  Camlmix.line := 18;
  Camlmix.char := 29;
  Camlmix.source := "micmatch.html.mlx"
;;

let () = !Camlmix.printer 
# 18 "micmatch.html.mlx";;
                             "\n";;

let () =
  Camlmix.line := 19;
  Camlmix.char := 3;
  Camlmix.source := "micmatch.html.mlx"
;;

# 19 "micmatch.html.mlx";;
   include_file "stylesheet" 
let () =
  Camlmix.line := 19;
  Camlmix.char := 32;
  Camlmix.source := "micmatch.html.mlx"
;;

let () = !Camlmix.printer 
# 19 "micmatch.html.mlx";;
                                "\n";;

let () =
  Camlmix.line := 20;
  Camlmix.char := 3;
  Camlmix.source := "micmatch.html.mlx"
;;

# 20 "micmatch.html.mlx";;
   include_file "ocaml-stylesheet" 
let () =
  Camlmix.line := 20;
  Camlmix.char := 38;
  Camlmix.source := "micmatch.html.mlx"
;;

let () = !Camlmix.printer 
# 20 "micmatch.html.mlx";;
                                      "\n";;

let () =
  Camlmix.line := 21;
  Camlmix.char := 3;
  Camlmix.source := "micmatch.html.mlx"
;;

# 21 "micmatch.html.mlx";;
   include_file "icon" 
let () =
  Camlmix.line := 21;
  Camlmix.char := 26;
  Camlmix.source := "micmatch.html.mlx"
;;

let () = !Camlmix.printer 
# 21 "micmatch.html.mlx";;
                          "\n";;

let () =
  Camlmix.line := 22;
  Camlmix.char := 3;
  Camlmix.source := "micmatch.html.mlx"
;;

# 22 "micmatch.html.mlx";;
   include_file "commonlinks" 
let () =
  Camlmix.line := 22;
  Camlmix.char := 33;
  Camlmix.source := "micmatch.html.mlx"
;;

let () = !Camlmix.printer 
# 22 "micmatch.html.mlx";;
                                 "\n</head>\n<body>\n";;

let () =
  Camlmix.line := 25;
  Camlmix.char := 3;
  Camlmix.source := "micmatch.html.mlx"
;;

# 25 "micmatch.html.mlx";;
   include_file "hitcounter" 
let () =
  Camlmix.line := 25;
  Camlmix.char := 32;
  Camlmix.source := "micmatch.html.mlx"
;;

let () = !Camlmix.printer 
# 25 "micmatch.html.mlx";;
                                "\n";;

let () =
  Camlmix.line := 26;
  Camlmix.char := 3;
  Camlmix.source := "micmatch.html.mlx"
;;

# 26 "micmatch.html.mlx";;
   include_file "start_big_table" 
let () =
  Camlmix.line := 26;
  Camlmix.char := 37;
  Camlmix.source := "micmatch.html.mlx"
;;

let () = !Camlmix.printer 
# 26 "micmatch.html.mlx";;
                                     "\n";;

let () =
  Camlmix.line := 27;
  Camlmix.char := 3;
  Camlmix.source := "micmatch.html.mlx"
;;

# 27 "micmatch.html.mlx";;
   top_menu ocaml 
let () =
  Camlmix.line := 27;
  Camlmix.char := 21;
  Camlmix.source := "micmatch.html.mlx"
;;

let () = !Camlmix.printer 
# 27 "micmatch.html.mlx";;
                     "\n<h1>Mikmatch ";;

let () =
  Camlmix.line := 28;
  Camlmix.char := 16;
  Camlmix.source := "micmatch.html.mlx"
;;

# 28 "micmatch.html.mlx";;
                include_file "2camels" 
let () =
  Camlmix.line := 28;
  Camlmix.char := 42;
  Camlmix.source := "micmatch.html.mlx"
;;

let () = !Camlmix.printer 
# 28 "micmatch.html.mlx";;
                                          "<br>\n<span class=title2>OCaml Pattern Matching + Regexps</span></h1>\n\n";;

let () =
  Camlmix.line := 31;
  Camlmix.char := 3;
  Camlmix.source := "micmatch.html.mlx"
;;

# 31 "micmatch.html.mlx";;
  
open Printf
let link ~url contents = printf "<a href=\"%s\">%s</a>" url contents

let ocamllink =
  link ~url:"http://caml.inria.fr/"
let findlib = 
  link ~url:"http://www.ocaml-programming.de/packages/"
let ocamlmatch = 
  link ~url:"http://caml.inria.fr/pub/docs/manual-ocaml/manual014.html"
let ocamltutorial = 
  link ~url:"http://www.merjis.com/developers/ocaml_tutorial/"
let ocamlmakefile = 
  link ~url:"http://www.ai.univie.ac.at/~markus/home/ocaml_sources.html"
let regexp_pp = 
  link ~url:"http://www.yl.is.s.u-tokyo.ac.jp/~oiwa/caml/"
let pa_ocamllex = 
  link ~url:"http://www.eleves.ens.fr/home/frisch/soft#paocamllex"
let ocamllex_tutorial = 
  link ~url:"http://pllab.kaist.ac.kr/~shoh/ocaml/ocamllex_ocamlyacc/ocamllex-tutorial/index.html"
let ocamllex = 
  link ~url:"http://caml.inria.fr/pub/docs/manual-ocaml/manual026.html"
let ocamllex_regexp = 
  link ~url:"http://caml.inria.fr/pub/docs/manual-ocaml/manual026.html#htoc132"
let pcre_ocaml =
  link ~url:"http://www.ai.univie.ac.at/~markus/home/ocaml_sources.html"
let pcre =
  link ~url:"http://www.pcre.org/"

let () =
  Camlmix.line := 59;
  Camlmix.char := 3;
  Camlmix.source := "micmatch.html.mlx"
;;

let () = !Camlmix.printer 
# 59 "micmatch.html.mlx";;
   "\n\n<p>\n<table class=list>\n<tr><td><a href=\"micmatch-howto.html\" class=toc0>Tutorial</a></td></tr>\n<tr><td><a href=\"micmatch-manual.html\" class=toc0>Micmatch reference manual \n(Camlp5)</a></td></tr>\n<tr><td><a href=\"mikmatch-manual.html\" class=toc0>Mikmatch reference manual \n(new Camlp4)</a></td></tr>\n<tr><td><a href=\"#download\" class=toc0>Download</a></td></tr>\n<tr><td><a href=\"micmatch-design.html\" class=toc0>Design issues</a></td></tr>\n<tr><td><a href=\"http://groups.google.com/group/micmatch\" class=toc0>Mailing-list</a></td></tr>\n</table>\n\n\n<h2>Mi<i>k</i>match vs. Mi<i>c</i>match</h2>\n\n<p>\nMi<b>k</b>match and Mi<b>c</b>match refer to two implementations\nof the same thing.\nMi<b>k</b>match works with the official distribution of Camlp4, while\nMi<b>c</b>match works with Camlp5 which is based on the \noriginal design of Camlp4.\n\n\n<h2>Introduction</h2>\n\n<p>\nThe goal of Micmatch is to make text-oriented programs even easier to write, \nread and run without losing the unique and powerful features of \n";;

let () =
  Camlmix.line := 89;
  Camlmix.char := 3;
  Camlmix.source := "micmatch.html.mlx"
;;

# 89 "micmatch.html.mlx";;
   ocamllink "Objective Caml (OCaml)" 
let () =
  Camlmix.line := 89;
  Camlmix.char := 41;
  Camlmix.source := "micmatch.html.mlx"
;;

let () = !Camlmix.printer 
# 89 "micmatch.html.mlx";;
                                         ".\n\n<p>\nMicmatch provides a concise and highly readable syntax for \nregular expressions, and integrates it into the \nsyntax of OCaml thanks to Camlp4.\n\n<p>\n<table>\n<tr>\n<td>\nThe implementation of Micmatch consists essentially of:\n<ol>\n<li> a library which is loaded by the OCaml preprocessor (Camlp4) and defines\nsophisticated \"macros\", i.e. the modified syntax,\n<li> a traditional library (runtime) which is required \nby the programs that use the Micmatch syntax,\n<li> a dedicated <code>micmatch</code> command which can be used as \na replacement for <code>ocaml</code> in scripts or as an interactive toplevel.\nIt performs automatically these steps: preprocessing, compilation \nand execution.\n</ol>\n</td>\n<td>\n<img src=\"micmatch-camlp4-pipeline.png\" alt=\"[Micmatch-Camlp4-OCaml pipeline]\">\n</td>\n</tr>\n</table>\n\n<p>\nMicmatch is a syntax extension of OCaml which is built on top of \nexisting libraries that provide regular expression engines such as the\nPerl-Compatible Regular Expressions library (PCRE).\nRegular expressions are compiled at the same time as the rest of the program,\nand syntax errors are precisely highlighted just like \nin the rest of the OCaml program.\nThis brings substantial comfort, safety and productivity to the programmer.\n\n<p>\nMicmatch is being actively maintained. \nThank you for reporting any bug you may find to \nmicmatch@<a style=\"display:none\">nobody.com@there.com</a>googlegroups.com.\nComments and suggestions are also highly appreciated.\n\n\n<h2>A taste of Micmatch</h2>\n\n<p>\nMicmatch is a syntax extension of the \n";;

let () =
  Camlmix.line := 138;
  Camlmix.char := 3;
  Camlmix.source := "micmatch.html.mlx"
;;

# 138 "micmatch.html.mlx";;
   ocamlmatch "pattern matching constructs of Objective Caml" 
let () =
  Camlmix.line := 138;
  Camlmix.char := 65;
  Camlmix.source := "micmatch.html.mlx"
;;

let () = !Camlmix.printer 
# 138 "micmatch.html.mlx";;
                                                                 " \nfor matching and extracting substrings with regular expressions.\nMicmatch tries to stay as close as possible to the spirit of\nOCaml.\n\n<p>\nLet's consider the problem of finding if a message starts with hello or not.\nIn OCaml, we can only match whole strings using the general pattern-matching\nsystem like this:\n";;

let () =
  Camlmix.line := 147;
  Camlmix.char := 3;
  Camlmix.source := "micmatch.html.mlx"
;;

# 147 "micmatch.html.mlx";;
   print_with ocamltop 
let () =
  Camlmix.line := 147;
  Camlmix.char := 26;
  Camlmix.source := "micmatch.html.mlx"
;;

let () = !Camlmix.printer 
# 147 "micmatch.html.mlx";;
                          "\n# (* Test if msg is Hello or hello *)\nlet msg = \"hello\" in\nmatch msg with\n    \"Hello\" | \"hello\" -> true\n  | _ -> false;;\n- : bool = true\n";;

let () =
  Camlmix.line := 154;
  Camlmix.char := 3;
  Camlmix.source := "micmatch.html.mlx"
;;

# 154 "micmatch.html.mlx";;
   () 
let () =
  Camlmix.line := 154;
  Camlmix.char := 9;
  Camlmix.source := "micmatch.html.mlx"
;;

let () = !Camlmix.printer 
# 154 "micmatch.html.mlx";;
         "\n<p>\nWhen our data is already structured, say as a list of tokens,\nwe can conveniently test the head of the list:\n";;

let () =
  Camlmix.line := 158;
  Camlmix.char := 3;
  Camlmix.source := "micmatch.html.mlx"
;;

# 158 "micmatch.html.mlx";;
   print_with ocamltop 
let () =
  Camlmix.line := 158;
  Camlmix.char := 26;
  Camlmix.source := "micmatch.html.mlx"
;;

let () = !Camlmix.printer 
# 158 "micmatch.html.mlx";;
                          "\n# (* Test if the head of a list of tokens is `Hello and\n     return the name of the recipient or None *)\nlet msg = [ `Hello; `Who \"you\"; `Bye ] in\nmatch msg with\n    `Hello :: `Who name :: _ -> Some name\n  | _ -> None;;\n- : string option = Some \"you\"\n";;

let () =
  Camlmix.line := 166;
  Camlmix.char := 3;
  Camlmix.source := "micmatch.html.mlx"
;;

# 166 "micmatch.html.mlx";;
   () 
let () =
  Camlmix.line := 166;
  Camlmix.char := 9;
  Camlmix.source := "micmatch.html.mlx"
;;

let () = !Camlmix.printer 
# 166 "micmatch.html.mlx";;
         "\n<p>\nHowever, OCaml does not provide a simple mechanism \nto look inside of strings and extract the interesting pieces all \nin one place.\nMicmatch provides a syntax extension which integrates in-place\nregular expressions into the native pattern-matching of OCaml:\n";;

let () =
  Camlmix.line := 173;
  Camlmix.char := 3;
  Camlmix.source := "micmatch.html.mlx"
;;

# 173 "micmatch.html.mlx";;
   print_with ocamltop 
let () =
  Camlmix.line := 173;
  Camlmix.char := 26;
  Camlmix.source := "micmatch.html.mlx"
;;

let () = !Camlmix.printer 
# 173 "micmatch.html.mlx";;
                          "\n# (* Test if the string starts with Hello or hello and return the\n     name of the recipient or None *)\nlet msg = \"Hello you\" in\nmatch msg with\n    RE [\"Hh\"]\"ello\" space+ (alpha+ as name) -> Some name\n  | _ -> None;;\n- : string option = Some \"you\"\n";;

let () =
  Camlmix.line := 181;
  Camlmix.char := 3;
  Camlmix.source := "micmatch.html.mlx"
;;

# 181 "micmatch.html.mlx";;
   () 
let () =
  Camlmix.line := 181;
  Camlmix.char := 9;
  Camlmix.source := "micmatch.html.mlx"
;;

let () = !Camlmix.printer 
# 181 "micmatch.html.mlx";;
         "\n\n<p>\nDo you like it?\nMany other features are offered by Micmatch! They are described \nin the following documents:\n<ul>\n<li> the <a href=\"micmatch-howto.html\">tutorial</a>\n<li> the <a href=\"mikmatch-manual.html\">reference manual</a> \n</ul>\n\n\n\n<h2>Practical issues</h2>\n\n<h3>Installation</h3>\n\n<p>\nThe easiest way to install Micmatch is from \n<a href=\"http://godi.ocaml-programming.de/\">GODI</a>.\n\n<p>\nAlternatively, it can be <a href=\"#download\">downloaded</a> and installed \nmanually using OCaml 3.07, 3.08 or 3.09. \nSee the <code>INSTALL</code> file of\nthe <a href=\"#download\">archive</a>.\n\n\n<h3>Compilation with Micmatch as a preprocessor</h3>\n\n<p>\nFor scripting (writing one-file programs), \nyou just need to use <code>micmatch</code> as a\nreplacement for <code>ocaml</code>. \nOn Unix systems, it is possible to make the scripts self-executable \nby adding <code>#!/usr/bin/micmatch</code> or \n<code>#!/usr/bin/env micmatch</code> at the beginning of the file\nlike in the following example:\n";;

let () =
  Camlmix.line := 219;
  Camlmix.char := 3;
  Camlmix.source := "micmatch.html.mlx"
;;

# 219 "micmatch.html.mlx";;
   ocamlpre (file_contents "comments") 
let () =
  Camlmix.line := 219;
  Camlmix.char := 42;
  Camlmix.source := "micmatch.html.mlx"
;;

let () = !Camlmix.printer 
# 219 "micmatch.html.mlx";;
                                          "\n\n<p>\nIn programs that are compiled with <code>ocamlc</code> or \n<code>ocamlopt</code>, the code in the Micmatch syntax must be explicitely\npreprocessed with <code>camlp4o</code> or <code>camlp4r</code> \nand the library <code>pa_micmatch_pcre.cma</code> before actually compiling. \nThe linking phase requires the Pcre library and the runtime library for\nmicmatch (<code>run_micmatch_pcre</code>).\n\n<p>\nThe now-<b>recommended approach</b> \nto compile programs which require some Camlp4\npreprocessing is \n<a href=\"http://ocaml-tutorial.org/compiling_ocaml_projects\">the one \ndescribed there</a> which uses \n<code>ocamlfind</code>, <code>OCamlMakefile</code> and\n<code>camlp4find</code>.\n\n<p>\nIf you are interested, \ncommands for compiling and linking with <code>ocamlfind</code> are:\n<pre>\nocamlfind ocamlopt -c       -syntax camlp4o \\\n                            -package micmatch_pcre \\\n                                     hello.ml\n\nocamlfind ocamlopt -o hello -syntax camlp4o \\\n                            -package micmatch_pcre \\\n                            -linkpkg hello.cmx\n</pre>\n<p>\nWithout ocamlfind, where $MICMATCHDIR is the directory where the library\nfiles have been installed, and $PCREDIR is where \nPCRE-OCaml has been installed:\n<pre>\nocamlopt -c       -I $MICMATCHDIR \\\n                  -pp \"camlp4o -I $MICMATCHDIR pa_micmatch_pcre.cma\" \\\n                  hello.ml\n\nocamlopt -o hello -I $MICMATCHDIR -I $PCREDIR\\\n                  pcre.cmxa run_micmatch.cmxa hello.cmx\n</pre>\n\n<p>\nA sample <code>Makefile</code> is also available \n[<a href=\"micmatch/Makefile.html\">view</a>|<a href=\"micmatch/Makefile\">save</a>].\nIt uses ";;

let () =
  Camlmix.line := 266;
  Camlmix.char := 11;
  Camlmix.source := "micmatch.html.mlx"
;;

# 266 "micmatch.html.mlx";;
           ocamlmakefile "<code>OCamlMakefile</code>" 
let () =
  Camlmix.line := 266;
  Camlmix.char := 57;
  Camlmix.source := "micmatch.html.mlx"
;;

let () = !Camlmix.printer 
# 266 "micmatch.html.mlx";;
                                                         ".\n\n\n\n<h2 id=download>Download</h2>\n\n\n<h3>Micmatch for OCaml 3.09 + old Camlp4</h3>\n\n<p>\nThis software is distributed under a \n<a href=\"micmatch-license.txt\">BSD license</a>.\nThe latest version that works with the old Camlp4 is 0.700.\n<p>\n<table class=light-table>\n";;

let () =
  Camlmix.line := 281;
  Camlmix.char := 3;
  Camlmix.source := "micmatch.html.mlx"
;;

# 281 "micmatch.html.mlx";;
   
let gz = sprintf "micmatch-%s.tar.gz" micmatch_version
let bz2 = sprintf "micmatch-%s.tar.bz2" micmatch_version

let () =
  Camlmix.line := 284;
  Camlmix.char := 3;
  Camlmix.source := "micmatch.html.mlx"
;;

let () = !Camlmix.printer 
# 284 "micmatch.html.mlx";;
   "\n";;

let () =
  Camlmix.line := 285;
  Camlmix.char := 3;
  Camlmix.source := "micmatch.html.mlx"
;;

# 285 "micmatch.html.mlx";;
   
List.iter
  (fun s ->
     printf "<tr>\n";
     printf "<td>";
     download (sprintf "micmatch-%s.tar.gz" s); 
     printf "</td>\n";
     printf "<td>";
     download (sprintf "micmatch-%s.tar.bz2" s);
     printf "</td>\n</tr>\n")
	      [ "0.700"; "0.699-beta"; "0.698-beta"; 
		"0.697-beta"; "0.696-beta"; "0.695-beta"; "0.694-beta";
		"0.693-beta"; "0.692-beta"; "0.691-beta"; "0.690-beta";
		"0.689-beta"; "0.688-beta"; "0.687-beta"; "0.686-beta";
		"0.685-beta"; "0.684-beta"; "0.683-beta"; "0.682-beta"; 
		"0.681-beta"; "0.680-beta"; "0.679-beta"; "0.678-beta"; 
		"0.677-beta"; "0.676-beta" ]

let () =
  Camlmix.line := 302;
  Camlmix.char := 3;
  Camlmix.source := "micmatch.html.mlx"
;;

let () = !Camlmix.printer 
# 302 "micmatch.html.mlx";;
   "\n</table>\n\n\n\n<h3>Micmatch for OCaml 3.09, 3.10 + Camlp5</h3>\n\n\n<p>\nThis software is distributed under a \n<a href=\"micmatch-license.txt\">BSD license</a>.\nThe current version is ";;

let () =
  Camlmix.line := 313;
  Camlmix.char := 26;
  Camlmix.source := "micmatch.html.mlx"
;;

let () = !Camlmix.printer 
# 313 "micmatch.html.mlx";;
                        (  micmatch_version  : string);;

let () =
  Camlmix.line := 313;
  Camlmix.char := 47;
  Camlmix.source := "micmatch.html.mlx"
;;

let () = !Camlmix.printer 
# 313 "micmatch.html.mlx";;
                                               ".\nThe first version that works with Camlp5 is 1.0.0 \nand offers the same exact features as release 0.700.\nSee the <a href=\"micmatch-changes.txt\">history of changes</a>.\n<p>\n<table class=light-table>\n<tr style=\"background-color: #ddd\">\n<td>Latest version:</td>\n";;

let () =
  Camlmix.line := 321;
  Camlmix.char := 3;
  Camlmix.source := "micmatch.html.mlx"
;;

# 321 "micmatch.html.mlx";;
   
let gz = sprintf "micmatch-%s.tar.gz" micmatch_version
let bz2 = sprintf "micmatch-%s.tar.bz2" micmatch_version

let () =
  Camlmix.line := 324;
  Camlmix.char := 3;
  Camlmix.source := "micmatch.html.mlx"
;;

let () = !Camlmix.printer 
# 324 "micmatch.html.mlx";;
   "\n<td>";;

let () =
  Camlmix.line := 325;
  Camlmix.char := 7;
  Camlmix.source := "micmatch.html.mlx"
;;

# 325 "micmatch.html.mlx";;
       download "micmatch.tar.gz" 
let () =
  Camlmix.line := 325;
  Camlmix.char := 37;
  Camlmix.source := "micmatch.html.mlx"
;;

let () = !Camlmix.printer 
# 325 "micmatch.html.mlx";;
                                     "</td>\n<td>";;

let () =
  Camlmix.line := 326;
  Camlmix.char := 7;
  Camlmix.source := "micmatch.html.mlx"
;;

# 326 "micmatch.html.mlx";;
       download "micmatch.tar.bz2" 
let () =
  Camlmix.line := 326;
  Camlmix.char := 38;
  Camlmix.source := "micmatch.html.mlx"
;;

let () = !Camlmix.printer 
# 326 "micmatch.html.mlx";;
                                      "</td>\n<td>";;

let () =
  Camlmix.line := 327;
  Camlmix.char := 7;
  Camlmix.source := "micmatch.html.mlx"
;;

# 327 "micmatch.html.mlx";;
       download gz 
let () =
  Camlmix.line := 327;
  Camlmix.char := 22;
  Camlmix.source := "micmatch.html.mlx"
;;

let () = !Camlmix.printer 
# 327 "micmatch.html.mlx";;
                      "</td>\n<td>";;

let () =
  Camlmix.line := 328;
  Camlmix.char := 7;
  Camlmix.source := "micmatch.html.mlx"
;;

# 328 "micmatch.html.mlx";;
       download bz2 
let () =
  Camlmix.line := 328;
  Camlmix.char := 23;
  Camlmix.source := "micmatch.html.mlx"
;;

let () = !Camlmix.printer 
# 328 "micmatch.html.mlx";;
                       "</td>\n</tr>\n";;

let () =
  Camlmix.line := 330;
  Camlmix.char := 3;
  Camlmix.source := "micmatch.html.mlx"
;;

# 330 "micmatch.html.mlx";;
   
List.iter
  (fun s ->
     printf "<tr>\n<td></td><td></td><td></td>\n";
     printf "<td>";
     download (sprintf "micmatch-%s.tar.gz" s); 
     printf "</td>\n";
     printf "<td>";
     download (sprintf "micmatch-%s.tar.bz2" s);
     printf "</td>\n</tr>\n")
	      [ (* older releases *) ]

let () =
  Camlmix.line := 341;
  Camlmix.char := 3;
  Camlmix.source := "micmatch.html.mlx"
;;

let () = !Camlmix.printer 
# 341 "micmatch.html.mlx";;
   "\n</table>\n\n\n\n\n\n<h3>Mikmatch for OCaml 3.10 + new Camlp4</h3>\n\n<p>\nThis software is distributed under a \n<a href=\"mikmatch-license.txt\">BSD license</a>.\nMikmatch is the implementation of Micmatch for the \"new Camlp4\",\ni.e. Camlp4 that ships with the core OCaml distribution starting from \nversion 3.10.\nSee the <a href=\"mikmatch-changes.txt\">history of changes</a>.\n\n\n<p>\n<table class=light-table>\n<tr style=\"background-color: #ddd\">\n<td>Latest version:</td>\n";;

let () =
  Camlmix.line := 363;
  Camlmix.char := 3;
  Camlmix.source := "micmatch.html.mlx"
;;

# 363 "micmatch.html.mlx";;
   
let gz = "mikmatch-1.0.0.tar.gz"
let bz2 = "mikmatch-1.0.0.tar.bz2"

let () =
  Camlmix.line := 366;
  Camlmix.char := 3;
  Camlmix.source := "micmatch.html.mlx"
;;

let () = !Camlmix.printer 
# 366 "micmatch.html.mlx";;
   "\n<td>";;

let () =
  Camlmix.line := 367;
  Camlmix.char := 7;
  Camlmix.source := "micmatch.html.mlx"
;;

# 367 "micmatch.html.mlx";;
       download gz 
let () =
  Camlmix.line := 367;
  Camlmix.char := 22;
  Camlmix.source := "micmatch.html.mlx"
;;

let () = !Camlmix.printer 
# 367 "micmatch.html.mlx";;
                      "</td>\n<td>";;

let () =
  Camlmix.line := 368;
  Camlmix.char := 7;
  Camlmix.source := "micmatch.html.mlx"
;;

# 368 "micmatch.html.mlx";;
       download bz2 
let () =
  Camlmix.line := 368;
  Camlmix.char := 23;
  Camlmix.source := "micmatch.html.mlx"
;;

let () = !Camlmix.printer 
# 368 "micmatch.html.mlx";;
                       "</td>\n</tr>\n</table>\n\n<h3>Mikmatch for OCaml 3.11 + new Camlp4</h3>\n\n<p>\nThis software is distributed under a \n<a href=\"mikmatch-license.txt\">BSD license</a>.\nMikmatch is the implementation of Micmatch for the \"new Camlp4\",\ni.e. Camlp4 that ships with the core OCaml distribution starting from \nversion 3.10. This particular version works with Camlp4 3.11.0 and 3.11.1\nand does not work with earlier or later versions.\nSee the <a href=\"mikmatch-changes.txt\">history of changes</a>.\n\n\n<p>\n<table class=light-table>\n<tr style=\"background-color: #ddd\">\n<td>Latest version:</td>\n<td>";;

let () =
  Camlmix.line := 388;
  Camlmix.char := 7;
  Camlmix.source := "micmatch.html.mlx"
;;

# 388 "micmatch.html.mlx";;
       download "mikmatch-1.0.2.tar.gz" 
let () =
  Camlmix.line := 388;
  Camlmix.char := 43;
  Camlmix.source := "micmatch.html.mlx"
;;

let () = !Camlmix.printer 
# 388 "micmatch.html.mlx";;
                                           "</td>\n<td>";;

let () =
  Camlmix.line := 389;
  Camlmix.char := 7;
  Camlmix.source := "micmatch.html.mlx"
;;

# 389 "micmatch.html.mlx";;
       download "mikmatch-1.0.2.tar.bz2" 
let () =
  Camlmix.line := 389;
  Camlmix.char := 44;
  Camlmix.source := "micmatch.html.mlx"
;;

let () = !Camlmix.printer 
# 389 "micmatch.html.mlx";;
                                            "</td>\n</tr>\n</table>\n\n\n<h3>Mikmatch for OCaml 3.12 + new Camlp4</h3>\n\n<p>\nThis software is distributed under a \n<a href=\"mikmatch-license.txt\">BSD license</a>.\nMikmatch is the implementation of Micmatch for the \"new Camlp4\",\ni.e. Camlp4 that ships with the core OCaml distribution starting from \nversion 3.10. This particular version works with Camlp4 3.12\nand does not work with earlier versions.\nSee the <a href=\"mikmatch-changes.txt\">history of changes</a>.\n<a href=\"/releases/mikmatch\">Download it here</a>.\n\n\n<h3>Development versions</h3>\n\n<p>\nThe <a href=\"https://github.com/mjambon/mikmatch\">development version\nof Mikmatch</a> is hosted on GitHub.\n\n\n<h2>Acknowledgements</h2>\n\n<p>\nMany concepts found in Micmatch were inspired on discussions on\ncaml-list@inria.fr and from existing software.\nThe following sofware has been important for Micmatch:\n<ul>\n<li> ";;

let () =
  Camlmix.line := 421;
  Camlmix.char := 8;
  Camlmix.source := "micmatch.html.mlx"
;;

# 421 "micmatch.html.mlx";;
        ocamllink "Camlp4" 
let () =
  Camlmix.line := 421;
  Camlmix.char := 30;
  Camlmix.source := "micmatch.html.mlx"
;;

let () = !Camlmix.printer 
# 421 "micmatch.html.mlx";;
                              "\n<li> ";;

let () =
  Camlmix.line := 422;
  Camlmix.char := 8;
  Camlmix.source := "micmatch.html.mlx"
;;

# 422 "micmatch.html.mlx";;
        ocamllink "OCaml" 
let () =
  Camlmix.line := 422;
  Camlmix.char := 29;
  Camlmix.source := "micmatch.html.mlx"
;;

let () = !Camlmix.printer 
# 422 "micmatch.html.mlx";;
                             "\n<li> ";;

let () =
  Camlmix.line := 423;
  Camlmix.char := 8;
  Camlmix.source := "micmatch.html.mlx"
;;

# 423 "micmatch.html.mlx";;
        ocamllex "ocamllex" 
let () =
  Camlmix.line := 423;
  Camlmix.char := 31;
  Camlmix.source := "micmatch.html.mlx"
;;

let () = !Camlmix.printer 
# 423 "micmatch.html.mlx";;
                               "\n<li> ";;

let () =
  Camlmix.line := 424;
  Camlmix.char := 8;
  Camlmix.source := "micmatch.html.mlx"
;;

# 424 "micmatch.html.mlx";;
        pa_ocamllex "pa_ocamllex" 
let () =
  Camlmix.line := 424;
  Camlmix.char := 37;
  Camlmix.source := "micmatch.html.mlx"
;;

let () = !Camlmix.printer 
# 424 "micmatch.html.mlx";;
                                     "\n<li> Camlp4 utilities from ";;

let () =
  Camlmix.line := 425;
  Camlmix.char := 30;
  Camlmix.source := "micmatch.html.mlx"
;;

# 425 "micmatch.html.mlx";;
                              regexp_pp "Regexp/OCaml (regexp-pp)" 
let () =
  Camlmix.line := 425;
  Camlmix.char := 70;
  Camlmix.source := "micmatch.html.mlx"
;;

let () = !Camlmix.printer 
# 425 "micmatch.html.mlx";;
                                                                      "\n<li> ";;

let () =
  Camlmix.line := 426;
  Camlmix.char := 8;
  Camlmix.source := "micmatch.html.mlx"
;;

# 426 "micmatch.html.mlx";;
        pcre "PCRE" 
let () =
  Camlmix.line := 426;
  Camlmix.char := 23;
  Camlmix.source := "micmatch.html.mlx"
;;

let () = !Camlmix.printer 
# 426 "micmatch.html.mlx";;
                       "\n<li> ";;

let () =
  Camlmix.line := 427;
  Camlmix.char := 8;
  Camlmix.source := "micmatch.html.mlx"
;;

# 427 "micmatch.html.mlx";;
        pcre_ocaml "PCRE-OCaml" 
let () =
  Camlmix.line := 427;
  Camlmix.char := 35;
  Camlmix.source := "micmatch.html.mlx"
;;

let () = !Camlmix.printer 
# 427 "micmatch.html.mlx";;
                                   "\n</ul>\n<p>\nThanks to their respective authors.\n\n";;

let () =
  Camlmix.line := 432;
  Camlmix.char := 3;
  Camlmix.source := "micmatch.html.mlx"
;;

# 432 "micmatch.html.mlx";;
   camlmix_footer () 
let () =
  Camlmix.line := 432;
  Camlmix.char := 24;
  Camlmix.source := "micmatch.html.mlx"
;;

let () = !Camlmix.printer 
# 432 "micmatch.html.mlx";;
                        "\n";;

let () =
  Camlmix.line := 433;
  Camlmix.char := 3;
  Camlmix.source := "micmatch.html.mlx"
;;

# 433 "micmatch.html.mlx";;
   include_file "end_big_table" 
let () =
  Camlmix.line := 433;
  Camlmix.char := 35;
  Camlmix.source := "micmatch.html.mlx"
;;

let () = !Camlmix.printer 
# 433 "micmatch.html.mlx";;
                                   "\n</body>\n</html>\n";;

