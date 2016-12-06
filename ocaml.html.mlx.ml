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

# 1 "ocaml.html.mlx";;

let () =
  Camlmix.line := 1;
  Camlmix.char := 1;
  Camlmix.source := "ocaml.html.mlx"
;;

let () = !Camlmix.printer 
# 1 "ocaml.html.mlx";;
 "";;

let () =
  Camlmix.line := 1;
  Camlmix.char := 3;
  Camlmix.source := "ocaml.html.mlx"
;;

# 1 "ocaml.html.mlx";;
  
#use "topfind";;
#require "caml2html";;
#require "mikmatch_pcre";;
#load "unmix.cmo";;
#load "print_ocaml.cmo";;
#load "utils.cmo";;
open Printf
open Print_ocaml
open Utils

let () =
  Camlmix.line := 11;
  Camlmix.char := 3;
  Camlmix.source := "ocaml.html.mlx"
;;

let () = !Camlmix.printer 
# 11 "ocaml.html.mlx";;
   "\n";;

let () =
  Camlmix.line := 12;
  Camlmix.char := 3;
  Camlmix.source := "ocaml.html.mlx"
;;

# 12 "ocaml.html.mlx";;
   include_file "doctype" 
let () =
  Camlmix.line := 12;
  Camlmix.char := 29;
  Camlmix.source := "ocaml.html.mlx"
;;

let () = !Camlmix.printer 
# 12 "ocaml.html.mlx";;
                             "\n<html>\n<head>\n";;

let () =
  Camlmix.line := 15;
  Camlmix.char := 3;
  Camlmix.source := "ocaml.html.mlx"
;;

# 15 "ocaml.html.mlx";;
   title "Software by Martin Jambon" 
let () =
  Camlmix.line := 15;
  Camlmix.char := 40;
  Camlmix.source := "ocaml.html.mlx"
;;

let () = !Camlmix.printer 
# 15 "ocaml.html.mlx";;
                                        "\n";;

let () =
  Camlmix.line := 16;
  Camlmix.char := 3;
  Camlmix.source := "ocaml.html.mlx"
;;

# 16 "ocaml.html.mlx";;
   include_file "charset" 
let () =
  Camlmix.line := 16;
  Camlmix.char := 29;
  Camlmix.source := "ocaml.html.mlx"
;;

let () = !Camlmix.printer 
# 16 "ocaml.html.mlx";;
                             "\n";;

let () =
  Camlmix.line := 17;
  Camlmix.char := 3;
  Camlmix.source := "ocaml.html.mlx"
;;

# 17 "ocaml.html.mlx";;
   include_file "stylesheet" 
let () =
  Camlmix.line := 17;
  Camlmix.char := 32;
  Camlmix.source := "ocaml.html.mlx"
;;

let () = !Camlmix.printer 
# 17 "ocaml.html.mlx";;
                                "\n";;

let () =
  Camlmix.line := 18;
  Camlmix.char := 3;
  Camlmix.source := "ocaml.html.mlx"
;;

# 18 "ocaml.html.mlx";;
   include_file "ocaml-stylesheet" 
let () =
  Camlmix.line := 18;
  Camlmix.char := 38;
  Camlmix.source := "ocaml.html.mlx"
;;

let () = !Camlmix.printer 
# 18 "ocaml.html.mlx";;
                                      "\n";;

let () =
  Camlmix.line := 19;
  Camlmix.char := 3;
  Camlmix.source := "ocaml.html.mlx"
;;

# 19 "ocaml.html.mlx";;
   include_file "icon" 
let () =
  Camlmix.line := 19;
  Camlmix.char := 26;
  Camlmix.source := "ocaml.html.mlx"
;;

let () = !Camlmix.printer 
# 19 "ocaml.html.mlx";;
                          "\n";;

let () =
  Camlmix.line := 20;
  Camlmix.char := 3;
  Camlmix.source := "ocaml.html.mlx"
;;

# 20 "ocaml.html.mlx";;
   include_file "commonlinks" 
let () =
  Camlmix.line := 20;
  Camlmix.char := 33;
  Camlmix.source := "ocaml.html.mlx"
;;

let () = !Camlmix.printer 
# 20 "ocaml.html.mlx";;
                                 "\n</head>\n<body>\n";;

let () =
  Camlmix.line := 23;
  Camlmix.char := 3;
  Camlmix.source := "ocaml.html.mlx"
;;

# 23 "ocaml.html.mlx";;
   include_file "hitcounter" 
let () =
  Camlmix.line := 23;
  Camlmix.char := 32;
  Camlmix.source := "ocaml.html.mlx"
;;

let () = !Camlmix.printer 
# 23 "ocaml.html.mlx";;
                                "\n";;

let () =
  Camlmix.line := 24;
  Camlmix.char := 3;
  Camlmix.source := "ocaml.html.mlx"
;;

# 24 "ocaml.html.mlx";;
   include_file "start_big_table" 
let () =
  Camlmix.line := 24;
  Camlmix.char := 37;
  Camlmix.source := "ocaml.html.mlx"
;;

let () = !Camlmix.printer 
# 24 "ocaml.html.mlx";;
                                     "\n";;

let () =
  Camlmix.line := 25;
  Camlmix.char := 3;
  Camlmix.source := "ocaml.html.mlx"
;;

# 25 "ocaml.html.mlx";;
   top_menu ~here:true ocaml 
let () =
  Camlmix.line := 25;
  Camlmix.char := 32;
  Camlmix.source := "ocaml.html.mlx"
;;

let () = !Camlmix.printer 
# 25 "ocaml.html.mlx";;
                                "\n<h1>Software made here</h1>\n\n<p>\nThis page lists software and software documentation\nthat I wrote or co-wrote,\noften using the <a href=\"http://caml.inria.fr\">OCaml</a> programming\nlanguage.\nMost of the projects are\n<a href=\"http://www.debian.org/social_contract.html#guidelines\">free\nsoftware</a>.\n\n<p>\nSee also my personal activity on GitHub\n<a href=\"https://github.com/mjambon\">as myself (mjambon)</a> and\nwithin <a href=\"https://github.com/mylifelabs\">MyLife (MyLifeLabs)</a>.\n\n<table class=list cellspacing=\"1em\">\n";;

let () =
  Camlmix.line := 43;
  Camlmix.char := 3;
  Camlmix.source := "ocaml.html.mlx"
;;

# 43 "ocaml.html.mlx";;
  
let section_row s = 
  Printf.printf 
    "<tr><td colspan=\"2\" \
     style=\"background:silver; text-align:center; font-weight:bold\">\
     %s</td></tr>" s

let () =
  Camlmix.line := 49;
  Camlmix.char := 3;
  Camlmix.source := "ocaml.html.mlx"
;;

let () = !Camlmix.printer 
# 49 "ocaml.html.mlx";;
   "\n\n";;

let () =
  Camlmix.line := 51;
  Camlmix.char := 3;
  Camlmix.source := "ocaml.html.mlx"
;;

# 51 "ocaml.html.mlx";;
   section_row "Software documentation" 
let () =
  Camlmix.line := 51;
  Camlmix.char := 43;
  Camlmix.source := "ocaml.html.mlx"
;;

let () = !Camlmix.printer 
# 51 "ocaml.html.mlx";;
                                           "\n\n<tr><th><span id=\"atd-biniou-intro\">Adjustable type \ndefinitions for data exchange</span></th>\n<td class=normal><a href=\"atd-biniou-intro.html\">An introduction to \nATD, biniou, yojson and atdgen</a>.\n</td>\n</tr>\n\n<tr><th><span id=extendocaml>How to customize the syntax of OCaml, \nusing Camlp5</span></th>\n<td class=normal><a href=\"extend-ocaml-syntax.html\">A\nCamlp5 tutorial</a> illustrated with many examples and programming\nguidelines.\n</td>\n\n\n";;

let () =
  Camlmix.line := 68;
  Camlmix.char := 3;
  Camlmix.source := "ocaml.html.mlx"
;;

# 68 "ocaml.html.mlx";;
   section_row "Software" 
let () =
  Camlmix.line := 68;
  Camlmix.char := 29;
  Camlmix.source := "ocaml.html.mlx"
;;

let () = !Camlmix.printer 
# 68 "ocaml.html.mlx";;
                             "\n\n<tr><td colspan=\"2\">\nAll of the following packages are under development or maintained.\n</td></tr>\n\n<tr id=atdgen><th>Atdgen</th>\n<td class=normal><a href=\"/atdgen\">Atdgen</a>\ngenerates optimized OCaml boilerplate code for \n<a href=\"http://json.org/\">JSON</a> and <a href=\"biniou.html\">biniou</a> IO \nfrom type definitions.\n</td>\n</tr>\n\n<tr id=atd><th>Atd</th>\n<td class=normal><a href=\"/atdgen\">Atd</a>\nis a type-definition syntax designed for cross-language interoperability.\n</td>\n</tr>\n\n<tr id=yojson><th>Yojson</th>\n<td class=normal><a href=\"yojson.html\">Yojson</a> is a library\nfor data interchange using the <a href=\"http://www.json.org\">JSON format</a>.\nSupersedes json-wheel.\n</td>\n</tr>\n\n<tr id=biniou><th>Biniou</th>\n<td class=normal><a href=\"biniou.html\">Biniou</a> is a \nbinary data format designed for speed, safety, ease of use and\nbackward compatibility as protocols evolve.\n</td>\n</tr>\n\n<tr id=\"cppo\"><th>Cppo</th>\n<td class=\"normal\"><a href=\"cppo.html\">Cpp for OCaml</a>\n</td>\n</tr>\n\n<tr id=\"nproc\"><th>Nproc</th>\n<td class=\"normal\"><a href=\"https://github.com/MyLifeLabs/nproc\">\nMulti-processing library providing process pools</a> \nfor <a href=\"http://ocsigen.org/lwt/\">Lwt</a>.\n</td>\n</tr>\n\n<tr id=\"dutop\"><th>dutop</th>\n<td class=\"normal\"><a href=\"https://github.com/MyLifeLabs/dutop\">disk \nusage top</a>.\n</td>\n</tr>\n\n<tr id=\"sampl\"><th>sampl</th>\n<td class=\"normal\"><a href=\"https://github.com/MyLifeLabs/sampl\">like\n\"head\" or \"tail\" but picks 10 random lines</a> from large data files.\n</td>\n</tr>\n\n<tr id=\"wcl\"><th>wcl</th>\n<td class=\"normal\"><a href=\"https://github.com/MyLifeLabs/wcl\">\"wc -l\" \nfor the impatient</a>, with estimation of total line count \nas it progresses.\n</td>\n</tr>\n\n<tr id=\"easy-format\"><th>Easy-format</th>\n<td class=\"normal\"><a href=\"easy-format.html\">Easy-format</a> is a \nfunctional layer relying on the standard Format module\nto produce indented text.\n</td>\n</tr>\n\n<tr><th><span id=micmatch>Mikmatch</span></th>\n<td class=normal><a href=\"mikmatch.html\">Mikmatch</a> is a package that \nextends the pattern matching syntax of OCaml with regular expressions, \nthus providing unique shortcuts for text manipulation in OCaml programs\ntogether with safety, readability and efficiency.\n</td>\n</tr>\n\n<tr><th><span id=camlmix>Camlmix</span></th>\n<td class=normal><a href=\"camlmix/index.html\">Camlmix</a> is a \ngeneral purpose preprocessor using OCaml as a language to fill the gaps\nof templates.\n</td>\n</tr>\n\n<tr id=ocamlscript><th>ocamlscript</th>\n<td class=normal><a href=\"ocamlscript.html\">ocamlscript</a> compiles scripts \ninto native code for optimal speed and ease of use.\n[Camlp4 3.10 port: 3.10.1]\n</td>\n</tr>\n\n<tr><th><span id=caml2html>Caml2html</span></th>\n<td class=normal><a href=\"caml2html.html\">Caml2html</a> is a program that\nconverts OCaml source files into colored HTML pages. Also available\nas a library. Originally written by S&eacute;bastien Ailleret.\n</td>\n</tr>\n\n<tr id=json-wheel><th>json-wheel\n(superseded by <a href=\"#yojson\">Yojson</a>)</th>\n<td class=normal><a href=\"json-wheel.html\">json-wheel</a> is a library\nfor data interchange using the <a href=\"http://www.json.org\">JSON format</a>.\n</td>\n</tr>\n\n<tr id=json-static><th>json-static\n(superseded by <a href=\"#atdgen\">Atdgen</a>)</th>\n<td class=normal><a href=\"json-static.html\">json-static</a> is a syntax\nextension that goes on top of <a href=\"#json-wheel\">json-wheel</a>\nand translates type definitions into converters from/to untyped JSON data,\nmuch like <a href=\"#col\">col</a> does for CSV files.\n</td>\n</tr>\n\n<tr id=asciipict><th>Asciipict</th>\n<td class=normal>converts images to ASCII art!\nSee for example ";;

let () =
  Camlmix.line := 187;
  Camlmix.char := 19;
  Camlmix.source := "ocaml.html.mlx"
;;

# 187 "ocaml.html.mlx";;
                   download "martin.png" 
let () =
  Camlmix.line := 187;
  Camlmix.char := 44;
  Camlmix.source := "ocaml.html.mlx"
;;

let () = !Camlmix.printer 
# 187 "ocaml.html.mlx";;
                                            ".\nDownload ";;

let () =
  Camlmix.line := 188;
  Camlmix.char := 12;
  Camlmix.source := "ocaml.html.mlx"
;;

# 188 "ocaml.html.mlx";;
            download "asciipict.tar.bz2" 
let () =
  Camlmix.line := 188;
  Camlmix.char := 44;
  Camlmix.source := "ocaml.html.mlx"
;;

let () = !Camlmix.printer 
# 188 "ocaml.html.mlx";;
                                            " or \n";;

let () =
  Camlmix.line := 189;
  Camlmix.char := 3;
  Camlmix.source := "ocaml.html.mlx"
;;

# 189 "ocaml.html.mlx";;
   download "asciipict.tar.gz" 
let () =
  Camlmix.line := 189;
  Camlmix.char := 34;
  Camlmix.source := "ocaml.html.mlx"
;;

let () = !Camlmix.printer 
# 189 "ocaml.html.mlx";;
                                  "\n</td>\n</tr>\n\n<tr id=unpurple><th>Unpurple</th>\n<td class=normal><a href=\"https://github.com/mjambon/purple-fringe\"><code>unpurple</code></a>\nremoves purple fringing from digital photos.\nSee <a href=\"http://mjambon.com/purple-fringe/examples.html\">examples</a>.\n</td>\n</tr>\n\n<tr id=upnym><th>Upnym</th>\n<td class=normal><a href=\"http://upnym.com\">Upnym</a> is a web application that \nhelps pick a name for a new brand. It offers as-you-type suggestions\nand name availability lookups for .com, Facebook and Twitter. [closed source]\n</td>\n</tr>\n\n";;

let () =
  Camlmix.line := 207;
  Camlmix.char := 3;
  Camlmix.source := "ocaml.html.mlx"
;;

# 207 "ocaml.html.mlx";;
   section_row "Dormant or unmaintained software" 
let () =
  Camlmix.line := 207;
  Camlmix.char := 53;
  Camlmix.source := "ocaml.html.mlx"
;;

let () = !Camlmix.printer 
# 207 "ocaml.html.mlx";;
                                                     "\n\n<tr id=col><th>Col</th>\n<td class=normal>This package provides a syntax extension for \neasier manipulation of flat records, objects or tuples\nand conversions from/to CSV files\nfor your favorite spreadsheet or plotting program.\nThe <a href=\"col-doc.html\">documentation</a> is not complete yet but\n<a href=\"http://ocaml.pbwiki.com/Col\">you can help</a>.\n";;

let () =
  Camlmix.line := 216;
  Camlmix.char := 3;
  Camlmix.source := "ocaml.html.mlx"
;;

# 216 "ocaml.html.mlx";;
   #use "col-version.ml";; 
let () =
  Camlmix.line := 216;
  Camlmix.char := 30;
  Camlmix.source := "ocaml.html.mlx"
;;

let () = !Camlmix.printer 
# 216 "ocaml.html.mlx";;
                              "\nOld version for OCaml 3.09:\n";;

let () =
  Camlmix.line := 218;
  Camlmix.char := 3;
  Camlmix.source := "ocaml.html.mlx"
;;

# 218 "ocaml.html.mlx";;
   download (sprintf "col-%s.tar.bz2" col_version) 
let () =
  Camlmix.line := 218;
  Camlmix.char := 54;
  Camlmix.source := "ocaml.html.mlx"
;;

let () = !Camlmix.printer 
# 218 "ocaml.html.mlx";;
                                                      " or \n";;

let () =
  Camlmix.line := 219;
  Camlmix.char := 3;
  Camlmix.source := "ocaml.html.mlx"
;;

# 219 "ocaml.html.mlx";;
   download (sprintf "col-%s.tar.gz" col_version) 
let () =
  Camlmix.line := 219;
  Camlmix.char := 53;
  Camlmix.source := "ocaml.html.mlx"
;;

let () = !Camlmix.printer 
# 219 "ocaml.html.mlx";;
                                                     " \n[<a href=\"col-license.txt\">license</a> |\n<a href=\"col-changes.txt\">changes</a>].\n<a href=\"https://github.com/pveber/col\">Col is now maintained by\nPhilippe Veber</a>.\n</td>\n</tr>\n\n<tr id=biblio><th>Biblio.php</th>\n<td class=normal><a href=\"/biblio_php.html\">Biblio.php</a>\nis a MediaWiki extension allowing to insert bibliographic references\ninto wiki pages by only giving a reference (PMID or ISBN).\n</td>\n</tr>\n\n\n";;

let () =
  Camlmix.line := 235;
  Camlmix.char := 3;
  Camlmix.source := "ocaml.html.mlx"
;;

# 235 "ocaml.html.mlx";;
   section_row "Smaller programs" 
let () =
  Camlmix.line := 235;
  Camlmix.char := 37;
  Camlmix.source := "ocaml.html.mlx"
;;

let () = !Camlmix.printer 
# 235 "ocaml.html.mlx";;
                                     "\n\n<tr id=tophide><th>Tophide</th>\n<td class=normal>Hides toplevel values whose name starts with an underscore. \nPrimarily for use with Camlp4 syntax extensions.\n";;

let () =
  Camlmix.line := 240;
  Camlmix.char := 3;
  Camlmix.source := "ocaml.html.mlx"
;;

# 240 "ocaml.html.mlx";;
   #use "tophide-version.ml";; 
let () =
  Camlmix.line := 240;
  Camlmix.char := 34;
  Camlmix.source := "ocaml.html.mlx"
;;

let () = !Camlmix.printer 
# 240 "ocaml.html.mlx";;
                                  "\nDownload ";;

let () =
  Camlmix.line := 241;
  Camlmix.char := 12;
  Camlmix.source := "ocaml.html.mlx"
;;

# 241 "ocaml.html.mlx";;
            download (sprintf "tophide-%s.tar.bz2" tophide_version) 
let () =
  Camlmix.line := 241;
  Camlmix.char := 71;
  Camlmix.source := "ocaml.html.mlx"
;;

let () = !Camlmix.printer 
# 241 "ocaml.html.mlx";;
                                                                       " or \n";;

let () =
  Camlmix.line := 242;
  Camlmix.char := 3;
  Camlmix.source := "ocaml.html.mlx"
;;

# 242 "ocaml.html.mlx";;
   download (sprintf "tophide-%s.tar.gz" tophide_version) 
let () =
  Camlmix.line := 242;
  Camlmix.char := 61;
  Camlmix.source := "ocaml.html.mlx"
;;

let () = !Camlmix.printer 
# 242 "ocaml.html.mlx";;
                                                             " \n[<a href=\"tophide-license.txt\">license</a>|<a \nhref=\"tophide-readme.txt\">documentation</a>|<a href=\"https://github.com/mjambon/tophide\">development</a>].\n</td>\n</tr>\n\n<tr><th><span id=toolbox>Camlmix Toolbox</span></th>\n<td class=normal>The <a href=\"/toolbox.html\">Camlmix toolbox</a>\nis a collection of short code samples.\nThey may serve as a source of inspiration for \n<a href=\"/camlmix\">Camlmix</a> users and\nbeginners using OCaml as a scripting language.\n</td>\n</tr>\n\n<tr><th><span id=hashtbl2>Hashtbl2</span></th>\n<td class=normal>Hashtbl2 is useful for using hash tables as a\nclustering engine, \ni.e. for grouping several objects under the same key, retrieving a\nnon-redundant list of keys in one pass, and much more.\nView the <a href=\"hashtbl2/Hashtbl2.html\">documentation</a>, \n";;

let () =
  Camlmix.line := 263;
  Camlmix.char := 3;
  Camlmix.source := "ocaml.html.mlx"
;;

# 263 "ocaml.html.mlx";;
   htmled_file "hashtbl2.mli" 
let () =
  Camlmix.line := 263;
  Camlmix.char := 33;
  Camlmix.source := "ocaml.html.mlx"
;;

let () = !Camlmix.printer 
# 263 "ocaml.html.mlx";;
                                 ",\n";;

let () =
  Camlmix.line := 264;
  Camlmix.char := 3;
  Camlmix.source := "ocaml.html.mlx"
;;

# 264 "ocaml.html.mlx";;
   htmled_file "hashtbl2.ml" 
let () =
  Camlmix.line := 264;
  Camlmix.char := 32;
  Camlmix.source := "ocaml.html.mlx"
;;

let () = !Camlmix.printer 
# 264 "ocaml.html.mlx";;
                                ", or download \n";;

let () =
  Camlmix.line := 265;
  Camlmix.char := 3;
  Camlmix.source := "ocaml.html.mlx"
;;

# 265 "ocaml.html.mlx";;
   download "hashtbl2.tar.gz" 
let () =
  Camlmix.line := 265;
  Camlmix.char := 33;
  Camlmix.source := "ocaml.html.mlx"
;;

let () = !Camlmix.printer 
# 265 "ocaml.html.mlx";;
                                 ". License: Public Domain.\n</td>\n</tr>\n\n<tr><th><span id=opaque>Opaque</span></th>\n<td class=normal>This short module provides a trick to force the compiler to \ndistinguish different kinds of <code>int</code>s or <code>string</code>s.\nUseful in complex programs with lots of indexed containers such as\nhash tables.\nView the <a href=\"opaque/Opaque.html\">documentation</a>,\n";;

let () =
  Camlmix.line := 275;
  Camlmix.char := 3;
  Camlmix.source := "ocaml.html.mlx"
;;

# 275 "ocaml.html.mlx";;
   htmled_file "opaque.mli" 
let () =
  Camlmix.line := 275;
  Camlmix.char := 31;
  Camlmix.source := "ocaml.html.mlx"
;;

let () = !Camlmix.printer 
# 275 "ocaml.html.mlx";;
                               ",\n";;

let () =
  Camlmix.line := 276;
  Camlmix.char := 3;
  Camlmix.source := "ocaml.html.mlx"
;;

# 276 "ocaml.html.mlx";;
   htmled_file "opaque.ml" 
let () =
  Camlmix.line := 276;
  Camlmix.char := 30;
  Camlmix.source := "ocaml.html.mlx"
;;

let () = !Camlmix.printer 
# 276 "ocaml.html.mlx";;
                              ", or download \n";;

let () =
  Camlmix.line := 277;
  Camlmix.char := 3;
  Camlmix.source := "ocaml.html.mlx"
;;

# 277 "ocaml.html.mlx";;
   download "opaque.tar.gz" 
let () =
  Camlmix.line := 277;
  Camlmix.char := 31;
  Camlmix.source := "ocaml.html.mlx"
;;

let () = !Camlmix.printer 
# 277 "ocaml.html.mlx";;
                               ". License: Public Domain.\n</td>\n</tr>\n\n<tr><th><span id=latin1>Latin1</span></th>\n<td class=normal>\nProvides functions for comparing ASCII or Latin1 (ISO 8859-1) characters\nand strings according to the alphabetical order like in the\ndictionaries.\n[";;

let () =
  Camlmix.line := 286;
  Camlmix.char := 4;
  Camlmix.source := "ocaml.html.mlx"
;;

# 286 "ocaml.html.mlx";;
    htmled_link "latin1.ml" 
let () =
  Camlmix.line := 286;
  Camlmix.char := 31;
  Camlmix.source := "ocaml.html.mlx"
;;

let () = !Camlmix.printer 
# 286 "ocaml.html.mlx";;
                               "view</a>|<a href=\"latin1.ml\">save</a>]. License: Public Domain.\n</td>\n</tr>\n\n<tr id=gstring><th>Gstring</th>\n<td class=normal>\nAn example of a mixed mutable/immutable string type, and an interface\nto a few basic functions from the standard library.\n[<a href=\"gstring/gstring.html\">view source</a>|<a href=\"gstring\">browse files</a>]. License: Public Domain.\n</td>\n</tr>\n\n<tr id=phys><th>Phys</th>\n<td class=normal>\nPolymorphic hash table using physical equality to compare keys.\n[<a href=\"phys.html\">view source</a>]. License: Public Domain.\n</td>\n</tr>\n\n<tr><th><span id=infix>Infix</span></th>\n<td class=normal>\nProvides support for alphanumeric infix operators in OCaml. \nNow available through <a href=\"p4ck.html\">P4ck</a>.\n[";;

let () =
  Camlmix.line := 309;
  Camlmix.char := 4;
  Camlmix.source := "ocaml.html.mlx"
;;

# 309 "ocaml.html.mlx";;
    htmled_link "pa_infix.ml" 
let () =
  Camlmix.line := 309;
  Camlmix.char := 33;
  Camlmix.source := "ocaml.html.mlx"
;;

let () = !Camlmix.printer 
# 309 "ocaml.html.mlx";;
                                 "view</a>|<a href=\"pa_infix.ml\">save</a>].\n[Camlp4 3.10 port: no]\n</td>\n</tr>\n\n<tr><th><span id=forin>Forin</span></th>\n<td class=normal>\nProvides a foreach-style replacement of <code>List.iter</code>.\nNow available through <a href=\"p4ck.html\">P4ck</a>.\n[";;

let () =
  Camlmix.line := 318;
  Camlmix.char := 4;
  Camlmix.source := "ocaml.html.mlx"
;;

# 318 "ocaml.html.mlx";;
    htmled_link "pa_forin.ml" 
let () =
  Camlmix.line := 318;
  Camlmix.char := 33;
  Camlmix.source := "ocaml.html.mlx"
;;

let () = !Camlmix.printer 
# 318 "ocaml.html.mlx";;
                                 "view</a>|<a href=\"pa_forin.ml\">save</a>].\n[Camlp4 3.10 port: no] License: Public Domain.\n</td>\n</tr>\n\n<tr><th><span id=forstep>Forstep</span></th>\n<td class=normal>\nProvides an extension of \"for\" loops with an optional \"step\" parameter.\nNow available through <a href=\"p4ck.html\">P4ck</a>.\n[";;

let () =
  Camlmix.line := 327;
  Camlmix.char := 4;
  Camlmix.source := "ocaml.html.mlx"
;;

# 327 "ocaml.html.mlx";;
    htmled_link "pa_forstep.ml" 
let () =
  Camlmix.line := 327;
  Camlmix.char := 35;
  Camlmix.source := "ocaml.html.mlx"
;;

let () = !Camlmix.printer 
# 327 "ocaml.html.mlx";;
                                   "view</a>|<a href=\"pa_forstep.ml\">save</a>].\n[Camlp4 3.10 port: no] License: Public Domain.\n</td>\n</tr>\n\n<tr><th><span id=repeat>Repeat</span></th>\n<td class=normal>\nProvides a tiny extension of OCaml: \"repeat\" loops.\nNow available through <a href=\"p4ck.html\">P4ck</a>.\n[";;

let () =
  Camlmix.line := 336;
  Camlmix.char := 4;
  Camlmix.source := "ocaml.html.mlx"
;;

# 336 "ocaml.html.mlx";;
    htmled_link "pa_repeat.ml" 
let () =
  Camlmix.line := 336;
  Camlmix.char := 34;
  Camlmix.source := "ocaml.html.mlx"
;;

let () = !Camlmix.printer 
# 336 "ocaml.html.mlx";;
                                  "view</a>|<a href=\"pa_repeat.ml\">save</a>].\n[Camlp4 3.10 port: no] License: Public Domain.\n</td>\n</tr>\n\n<tr><th><span id=memo>Memo</span></th>\n<td class=normal>\nProvides a syntax extension for functions with memoization.\nAlso available through <a href=\"p4ck.html\">P4ck</a>.\n[3.09-compatible ";;

let () =
  Camlmix.line := 345;
  Camlmix.char := 20;
  Camlmix.source := "ocaml.html.mlx"
;;

# 345 "ocaml.html.mlx";;
                    htmled_link "309/pa_memo.ml" 
let () =
  Camlmix.line := 345;
  Camlmix.char := 52;
  Camlmix.source := "ocaml.html.mlx"
;;

let () = !Camlmix.printer 
# 345 "ocaml.html.mlx";;
                                                    "view</a>|<a href=\"309/pa_memo.ml\">save</a>]\n[3.10-compatible ";;

let () =
  Camlmix.line := 346;
  Camlmix.char := 20;
  Camlmix.source := "ocaml.html.mlx"
;;

# 346 "ocaml.html.mlx";;
                    htmled_link "310/pa_memo.ml" 
let () =
  Camlmix.line := 346;
  Camlmix.char := 52;
  Camlmix.source := "ocaml.html.mlx"
;;

let () = !Camlmix.printer 
# 346 "ocaml.html.mlx";;
                                                    "view</a>|<a href=\"310/pa_memo.ml\">save</a>].\nLicense: Public Domain.\n</td>\n</tr>\n\n<tr><th><span id=tryfinally>TryFinally</span></th>\n<td class=normal>\nA small syntax extension which provides a \"try ... finally ...\" construct.\nAvailable through <a href=\"p4ck.html\">P4ck</a>.\n[3.09-compatible: ";;

let () =
  Camlmix.line := 355;
  Camlmix.char := 21;
  Camlmix.source := "ocaml.html.mlx"
;;

# 355 "ocaml.html.mlx";;
                     htmled_link "309/pa_tryfinally.ml" 
let () =
  Camlmix.line := 355;
  Camlmix.char := 59;
  Camlmix.source := "ocaml.html.mlx"
;;

let () = !Camlmix.printer 
# 355 "ocaml.html.mlx";;
                                                           "view</a>|<a href=\"309/pa_tryfinally.ml\">save</a>]\n[3.10-compatible: ";;

let () =
  Camlmix.line := 356;
  Camlmix.char := 21;
  Camlmix.source := "ocaml.html.mlx"
;;

# 356 "ocaml.html.mlx";;
                     htmled_link "310/pa_tryfinally.ml" 
let () =
  Camlmix.line := 356;
  Camlmix.char := 59;
  Camlmix.source := "ocaml.html.mlx"
;;

let () = !Camlmix.printer 
# 356 "ocaml.html.mlx";;
                                                           "view</a>|<a href=\"310/pa_tryfinally.ml\">save</a>].\nLicense: Public Domain.\n</td>\n</tr>\n\n\n<tr><th><span id=bounds>Bounds</span></th>\n<td class=normal>\nAn incredibly long syntax extension \nwhich allows out-of-bounds accesses of arrays and alike to be reported\nwith the exact location in the source code.\nAvailable through <a href=\"p4ck.html\">P4ck</a>.\n[<a href=\"pa_bounds/README\">README</a>|";;

let () =
  Camlmix.line := 368;
  Camlmix.char := 42;
  Camlmix.source := "ocaml.html.mlx"
;;

# 368 "ocaml.html.mlx";;
                                          
htmled_link "pa_bounds/pa_bounds.ml" 
let () =
  Camlmix.line := 369;
  Camlmix.char := 40;
  Camlmix.source := "ocaml.html.mlx"
;;

let () = !Camlmix.printer 
# 369 "ocaml.html.mlx";;
                                        "view</a>|<a \nhref=\"pa_bounds/pa_bounds.ml\">file</a>|<a \nhref=\"pa_bounds.tar.gz\">archive</a>|<a \nhref=\"pa_bounds/\">tree</a>].\nCamlp4 3.10 port: not needed for fresh code\nsince ocamlopt 3.10 can dump stack backtraces.\nAndrew Schein offers a \n<a href=\"http://code.google.com/p/paboundsfor310/\">syntax \nextension for backward compatibility</a>.\n License: BSD-style.\n</td>\n</tr>\n\n<tr><th><span id=camlp4find>Camlp4find</span></th>\n<td class=normal><a href=\"camlp4find\">Camlp4find</a> is a shell script\nthat can be used as a replacement for the camlp4o or camlp4r commands\nand takes advantage of syntax packages that were installed with ocamlfind.\n[Camlp4 3.10 port: no] License: Public Domain.\n</td>\n</tr>\n\n\n";;

let () =
  Camlmix.line := 391;
  Camlmix.char := 3;
  Camlmix.source := "ocaml.html.mlx"
;;

# 391 "ocaml.html.mlx";;
   section_row "Hackish amusements" 
let () =
  Camlmix.line := 391;
  Camlmix.char := 39;
  Camlmix.source := "ocaml.html.mlx"
;;

let () = !Camlmix.printer 
# 391 "ocaml.html.mlx";;
                                       "\n\n<tr><th><span id=icfp2004>ICFP contest 2004</span></th>\n<td class=normal>Some \n<a href=\"/icfpcontest2004.html\">documentation about my participation</a> \nin the \n<a href=\"http://www.cis.upenn.edu/proj/plclub/contest\">ICFP \nprogramming contest 2004</a>.\n</td>\n</tr>\n\n\n\n<tr><th><span id=quine>Quines</span></th>\n<td class=normal>A quine is a self-reproducing program. It generates a\ncopy of \nits own source code as its complete output.\nHere is a small one in OCaml: ";;

let () =
  Camlmix.line := 408;
  Camlmix.char := 33;
  Camlmix.source := "ocaml.html.mlx"
;;

# 408 "ocaml.html.mlx";;
                                 htmled_file "quine.ml" 
let () =
  Camlmix.line := 408;
  Camlmix.char := 59;
  Camlmix.source := "ocaml.html.mlx"
;;

let () = !Camlmix.printer 
# 408 "ocaml.html.mlx";;
                                                           ".\nAnother quine is <a href=\"q.ml\">here</a>, although it only works when\nexecuted with <code>ocaml q.ml</code> and outputs to stderr...\n<b>Bonus</b>: a true <a href=\"quine.sh\">quine written in Bourne Shell</a> \n(<a href=\"compact_quine.sh\">compact form</a>).\n<b>Meta-bonus</b>: a complete Camlmix quine ";;

let () =
  Camlmix.line := 413;
  Camlmix.char := 47;
  Camlmix.source := "ocaml.html.mlx"
;;

# 413 "ocaml.html.mlx";;
                                               download "quine.camlmix" 
let () =
  Camlmix.line := 413;
  Camlmix.char := 75;
  Camlmix.source := "ocaml.html.mlx"
;;

let () = !Camlmix.printer 
# 413 "ocaml.html.mlx";;
                                                                           ".\n</td>\n</tr>\n\n<tr><th><span id=polyglot>C/OCaml Hello</span></th>\n<td class=normal>This is a \n<a href=\"hello.ml.html\">\"Hello World!\" polyglot program</a> which is\nwritten in C and in OCaml at the same time.\n</td>\n</tr>\n</table>\n\n";;

let () =
  Camlmix.line := 425;
  Camlmix.char := 3;
  Camlmix.source := "ocaml.html.mlx"
;;

# 425 "ocaml.html.mlx";;
   camlmix_footer ~years:"2004-2012" () 
let () =
  Camlmix.line := 425;
  Camlmix.char := 43;
  Camlmix.source := "ocaml.html.mlx"
;;

let () = !Camlmix.printer 
# 425 "ocaml.html.mlx";;
                                           "\n";;

let () =
  Camlmix.line := 426;
  Camlmix.char := 3;
  Camlmix.source := "ocaml.html.mlx"
;;

# 426 "ocaml.html.mlx";;
   include_file "end_big_table" 
let () =
  Camlmix.line := 426;
  Camlmix.char := 35;
  Camlmix.source := "ocaml.html.mlx"
;;

let () = !Camlmix.printer 
# 426 "ocaml.html.mlx";;
                                   "\n</body>\n</html>\n";;

