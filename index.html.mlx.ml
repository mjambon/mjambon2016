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

# 1 "index.html.mlx";;

let () =
  Camlmix.line := 1;
  Camlmix.char := 1;
  Camlmix.source := "index.html.mlx"
;;

let () = !Camlmix.printer 
# 1 "index.html.mlx";;
 "";;

let () =
  Camlmix.line := 1;
  Camlmix.char := 3;
  Camlmix.source := "index.html.mlx"
;;

# 1 "index.html.mlx";;
   
#load "utils.cmo";;
open Printf
open Camlmix
open Utils

let () =
  Camlmix.line := 6;
  Camlmix.char := 3;
  Camlmix.source := "index.html.mlx"
;;

let () = !Camlmix.printer 
# 6 "index.html.mlx";;
   "\n";;

let () =
  Camlmix.line := 7;
  Camlmix.char := 3;
  Camlmix.source := "index.html.mlx"
;;

# 7 "index.html.mlx";;
   include_file "doctype" 
let () =
  Camlmix.line := 7;
  Camlmix.char := 29;
  Camlmix.source := "index.html.mlx"
;;

let () = !Camlmix.printer 
# 7 "index.html.mlx";;
                             "\n<html>\n<head>\n";;

let () =
  Camlmix.line := 10;
  Camlmix.char := 3;
  Camlmix.source := "index.html.mlx"
;;

# 10 "index.html.mlx";;
   title "Martin Jambon" 
let () =
  Camlmix.line := 10;
  Camlmix.char := 28;
  Camlmix.source := "index.html.mlx"
;;

let () = !Camlmix.printer 
# 10 "index.html.mlx";;
                            "\n";;

let () =
  Camlmix.line := 11;
  Camlmix.char := 3;
  Camlmix.source := "index.html.mlx"
;;

# 11 "index.html.mlx";;
   include_file "charset" 
let () =
  Camlmix.line := 11;
  Camlmix.char := 29;
  Camlmix.source := "index.html.mlx"
;;

let () = !Camlmix.printer 
# 11 "index.html.mlx";;
                             "\n";;

let () =
  Camlmix.line := 12;
  Camlmix.char := 3;
  Camlmix.source := "index.html.mlx"
;;

# 12 "index.html.mlx";;
   include_file "stylesheet" 
let () =
  Camlmix.line := 12;
  Camlmix.char := 32;
  Camlmix.source := "index.html.mlx"
;;

let () = !Camlmix.printer 
# 12 "index.html.mlx";;
                                "\n";;

let () =
  Camlmix.line := 13;
  Camlmix.char := 3;
  Camlmix.source := "index.html.mlx"
;;

# 13 "index.html.mlx";;
   include_file "icon" 
let () =
  Camlmix.line := 13;
  Camlmix.char := 26;
  Camlmix.source := "index.html.mlx"
;;

let () = !Camlmix.printer 
# 13 "index.html.mlx";;
                          "\n";;

let () =
  Camlmix.line := 14;
  Camlmix.char := 3;
  Camlmix.source := "index.html.mlx"
;;

# 14 "index.html.mlx";;
   include_file "commonlinks" 
let () =
  Camlmix.line := 14;
  Camlmix.char := 33;
  Camlmix.source := "index.html.mlx"
;;

let () = !Camlmix.printer 
# 14 "index.html.mlx";;
                                 "\n\n<script type=\"text/javascript\"\n        src=\"background/jquery.min.js\"></script>\n<script type=\"text/javascript\"\n        src=\"background/jquery.backstretch.min.js\"></script>\n<script type=\"text/javascript\">\n\t$.backstretch(\"background/background.jpg\", {speed: 550});\n</script>\n\n</head>\n<body>\n";;

let () =
  Camlmix.line := 26;
  Camlmix.char := 3;
  Camlmix.source := "index.html.mlx"
;;

# 26 "index.html.mlx";;
   include_file "start_big_table_transparent" 
let () =
  Camlmix.line := 26;
  Camlmix.char := 49;
  Camlmix.source := "index.html.mlx"
;;

let () = !Camlmix.printer 
# 26 "index.html.mlx";;
                                                 "\n";;

let () =
  Camlmix.line := 27;
  Camlmix.char := 3;
  Camlmix.source := "index.html.mlx"
;;

# 27 "index.html.mlx";;
   top_menu ~here:true home 
let () =
  Camlmix.line := 27;
  Camlmix.char := 31;
  Camlmix.source := "index.html.mlx"
;;

let () = !Camlmix.printer 
# 27 "index.html.mlx";;
                               "\n\n<p class=\"inline-images social-networks\">\nMartin Jambon is on...<br/>\n<img src=\"https://github.com/favicon.ico\" alt=\"logo\" width=\"16\" />\n     <a href=\"https://github.com/mjambon\">GitHub</a> <br/>\n<img src=\"http://www.linkedin.com/favicon.ico\" alt=\"logo\" width=\"16\" />\n     <a href=\"http://www.linkedin.com/in/mjambon\">LinkedIn</a> <br/>\n<img src=\"https://twitter.com/favicon.ico\" alt=\"logo\" width=\"16\" />\n     <a href=\"https://twitter.com/mjambontech\">Twitter</a> <br/>\n<img src=\"https://twitter.com/favicon.ico\" alt=\"logo\" width=\"16\" />\n     <a href=\"https://twitter.com/mjambon\">Twitter (R-rated)</a> <br/>\n<img src=\"http://www.quora.com.com/favicon.ico\" alt=\"logo\" width=\"16\" />\n     <a href=\"http://www.quora.com/Martin-Jambon\">Quora</a> <br/>\n<img src=\"http://stackoverflow.com/favicon.ico\" alt=\"logo\" width=\"16\" />\n     <a href=\"http://stackoverflow.com/users/597517/martin-jambon\">StackOverflow</a> <br/>\n<img src=\"https://www.facebook.com/favicon.ico\" alt=\"logo\" width=\"16\" />\n     <a href=\"https://www.facebook.com/0xfff\">Facebook</a> <br/>\n<img src=\"http://www.flickr.com/favicon.ico\" alt=\"logo\" width=\"16\" />\n     <a href=\"http://www.flickr.com/photos/mjambon\">Flickr</a> <br/>\n<img src=\"http://d26ifou2tyrp3u.cloudfront.net/assets/favicon-3578624dbca1eda01ff67d8723f17d5e.ico\" alt=\"logo\" width=\"16\" />\n     <a href=\"http://www.strava.com/athletes/750791\">Strava</a> <br/>\n</p>\n\n";;

let () =
  Camlmix.line := 51;
  Camlmix.char := 3;
  Camlmix.source := "index.html.mlx"
;;

# 51 "index.html.mlx";;
   
let print_news date text =
  printf "\
<p class=\"news-item\">
<span class=\"date\">%s</span><br/>
%s
</p>"
    date text

let news date = print_with (fun text -> print_news date text)

let () =
  Camlmix.line := 61;
  Camlmix.char := 3;
  Camlmix.source := "index.html.mlx"
;;

let () = !Camlmix.printer 
# 61 "index.html.mlx";;
   "\n\n";;

let () =
  Camlmix.line := 63;
  Camlmix.char := 3;
  Camlmix.source := "index.html.mlx"
;;

# 63 "index.html.mlx";;
   news "June 23, 2012" 
let () =
  Camlmix.line := 63;
  Camlmix.char := 27;
  Camlmix.source := "index.html.mlx"
;;

let () = !Camlmix.printer 
# 63 "index.html.mlx";;
                           "\nPrototype for unpurple,\ntool that \n<a href=\"/purple-fringe/examples.html\">removes purple fringing</a>\nfrom digital photos.\n\n";;

let () =
  Camlmix.line := 69;
  Camlmix.char := 3;
  Camlmix.source := "index.html.mlx"
;;

# 69 "index.html.mlx";;
   news "December 13, 2011" 
let () =
  Camlmix.line := 69;
  Camlmix.char := 31;
  Camlmix.source := "index.html.mlx"
;;

let () = !Camlmix.printer 
# 69 "index.html.mlx";;
                               "\nNew utility <a href=\"https://github.com/MyLifeLabs/dutop\">dutop</a>\nwhich displays a \"disk usage top\" handy for preparing big data cleanups.\n\n";;

let () =
  Camlmix.line := 73;
  Camlmix.char := 3;
  Camlmix.source := "index.html.mlx"
;;

# 73 "index.html.mlx";;
   news "November 24, 2011" 
let () =
  Camlmix.line := 73;
  Camlmix.char := 31;
  Camlmix.source := "index.html.mlx"
;;

let () = !Camlmix.printer 
# 73 "index.html.mlx";;
                               "\nNew library <a href=\"https://github.com/MyLifeLabs/nproc\">Nproc</a>\nproviding multicore support for OCaml and Lwt by implementing\nprocess pools.\n\n";;

let () =
  Camlmix.line := 78;
  Camlmix.char := 3;
  Camlmix.source := "index.html.mlx"
;;

# 78 "index.html.mlx";;
   news "September 9, 2011" 
let () =
  Camlmix.line := 78;
  Camlmix.char := 31;
  Camlmix.source := "index.html.mlx"
;;

let () = !Camlmix.printer 
# 78 "index.html.mlx";;
                               "\nNew utility <a href=\"https://github.com/MyLifeLabs/sampl\">sampl</a>:\nlike \"head\" or \"tail\" but picks 10 random lines from large data files.\n\n";;

let () =
  Camlmix.line := 82;
  Camlmix.char := 3;
  Camlmix.source := "index.html.mlx"
;;

# 82 "index.html.mlx";;
   news "August 28, 2011" 
let () =
  Camlmix.line := 82;
  Camlmix.char := 29;
  Camlmix.source := "index.html.mlx"
;;

let () = !Camlmix.printer 
# 82 "index.html.mlx";;
                             "\nNew utility <a href=\"https://github.com/MyLifeLabs/wcl\">wcl</a>: \n\"wc -l\" for the impatient, \nwith estimation of total line count as it progresses.\n\n";;

let () =
  Camlmix.line := 87;
  Camlmix.char := 3;
  Camlmix.source := "index.html.mlx"
;;

# 87 "index.html.mlx";;
   news "July 20, 2011" 
let () =
  Camlmix.line := 87;
  Camlmix.char := 27;
  Camlmix.source := "index.html.mlx"
;;

let () = !Camlmix.printer 
# 87 "index.html.mlx";;
                           "\nRelease of <a href=\"cppo.html\">cppo</a> 0.9.1, fast cpp-like preprocessor\nfor OCaml. Now supporting calls to external programs for processing\n<code>#ext</code>...<code>#endext</code> sections of source files.\n\n";;

let () =
  Camlmix.line := 92;
  Camlmix.char := 3;
  Camlmix.source := "index.html.mlx"
;;

# 92 "index.html.mlx";;
   news "July 2, 2011" 
let () =
  Camlmix.line := 92;
  Camlmix.char := 26;
  Camlmix.source := "index.html.mlx"
;;

let () = !Camlmix.printer 
# 92 "index.html.mlx";;
                          "\nOfficial release of <a href=\"/atdgen\">Atdgen</a> 1.2.0\nincluding a tutorial, a validator mode, plugins for OMake and GNU Make,\nand more modularity.\n\n";;

let () =
  Camlmix.line := 97;
  Camlmix.char := 3;
  Camlmix.source := "index.html.mlx"
;;

# 97 "index.html.mlx";;
   news "February 23, 2011" 
let () =
  Camlmix.line := 97;
  Camlmix.char := 31;
  Camlmix.source := "index.html.mlx"
;;

let () = !Camlmix.printer 
# 97 "index.html.mlx";;
                               "\nCreated <a href=\"http://upnym.com\">Upnym,\na service for brainstorming startup names</a>.\nCreate your own .com domain name now at\n<a href=\"http://upnym.com\">upnym.com</a>.\n\n";;

let () =
  Camlmix.line := 103;
  Camlmix.char := 3;
  Camlmix.source := "index.html.mlx"
;;

# 103 "index.html.mlx";;
   news "December 20, 2010" 
let () =
  Camlmix.line := 103;
  Camlmix.char := 31;
  Camlmix.source := "index.html.mlx"
;;

let () = !Camlmix.printer 
# 103 "index.html.mlx";;
                               "\nNew release of <a href=\"atd-biniou-intro.html\">Biniou, ATD\nand Atdgen</a> supporting serialization of cyclic values.\n\n";;

let () =
  Camlmix.line := 107;
  Camlmix.char := 3;
  Camlmix.source := "index.html.mlx"
;;

# 107 "index.html.mlx";;
   news "September 19, 2010" 
let () =
  Camlmix.line := 107;
  Camlmix.char := 32;
  Camlmix.source := "index.html.mlx"
;;

let () = !Camlmix.printer 
# 107 "index.html.mlx";;
                                "\nCleaned up and updated Camlp5 tutorial\n<a href=\"extend-ocaml-syntax.html\">\"How to extend the syntax\nof Objective Caml, using Camlp5\"</a>.\n\n";;

let () =
  Camlmix.line := 112;
  Camlmix.char := 3;
  Camlmix.source := "index.html.mlx"
;;

# 112 "index.html.mlx";;
   news "September 9, 2010" 
let () =
  Camlmix.line := 112;
  Camlmix.char := 31;
  Camlmix.source := "index.html.mlx"
;;

let () = !Camlmix.printer 
# 112 "index.html.mlx";;
                               "\nMyLife releases <a href=\"/atdgen\">Atdgen</a>,\na generator of optimized OCaml code for Biniou and JSON serialization.\n\n";;

let () =
  Camlmix.line := 116;
  Camlmix.char := 3;
  Camlmix.source := "index.html.mlx"
;;

# 116 "index.html.mlx";;
   news "August 22, 2010" 
let () =
  Camlmix.line := 116;
  Camlmix.char := 29;
  Camlmix.source := "index.html.mlx"
;;

let () = !Camlmix.printer 
# 116 "index.html.mlx";;
                             "\nMyLife releases <a href=\"/atdgen\">ATD</a>,\na syntax for cross-language data type definitions.\n\n";;

let () =
  Camlmix.line := 120;
  Camlmix.char := 3;
  Camlmix.source := "index.html.mlx"
;;

# 120 "index.html.mlx";;
   news "August 7, 2010" 
let () =
  Camlmix.line := 120;
  Camlmix.char := 28;
  Camlmix.source := "index.html.mlx"
;;

let () = !Camlmix.printer 
# 120 "index.html.mlx";;
                            "\nReleasing <a href=\"biniou.html\">OCaml library for Biniou</a>,\na new binary format designed for speed and extensibility.\n\n";;

let () =
  Camlmix.line := 124;
  Camlmix.char := 3;
  Camlmix.source := "index.html.mlx"
;;

# 124 "index.html.mlx";;
   news "August 7, 2010" 
let () =
  Camlmix.line := 124;
  Camlmix.char := 28;
  Camlmix.source := "index.html.mlx"
;;

let () = !Camlmix.printer 
# 124 "index.html.mlx";;
                            "\nReleasing <a href=\"yojson.html\">Yojson</a>, a JSON runtime library for\nOCaml superseding <a href=\"json-wheel.html\">json-wheel</a>.\n\n";;

let () =
  Camlmix.line := 128;
  Camlmix.char := 3;
  Camlmix.source := "index.html.mlx"
;;

# 128 "index.html.mlx";;
   news "June 28, 2010" 
let () =
  Camlmix.line := 128;
  Camlmix.char := 27;
  Camlmix.source := "index.html.mlx"
;;

let () = !Camlmix.printer 
# 128 "index.html.mlx";;
                           "\nLaTeX output for <a href=\"caml2html.html\">caml2html</a>.\n\n";;

let () =
  Camlmix.line := 131;
  Camlmix.char := 3;
  Camlmix.source := "index.html.mlx"
;;

# 131 "index.html.mlx";;
   news "November 17, 2009" 
let () =
  Camlmix.line := 131;
  Camlmix.char := 31;
  Camlmix.source := "index.html.mlx"
;;

let () = !Camlmix.printer 
# 131 "index.html.mlx";;
                               "\nFirst release of <a href=\"cppo.html\">Cppo</a>, the C preprocessor for OCaml.\n\n";;

let () =
  Camlmix.line := 134;
  Camlmix.char := 3;
  Camlmix.source := "index.html.mlx"
;;

# 134 "index.html.mlx";;
   news "August 14, 2009" 
let () =
  Camlmix.line := 134;
  Camlmix.char := 29;
  Camlmix.source := "index.html.mlx"
;;

let () = !Camlmix.printer 
# 134 "index.html.mlx";;
                             "\nBugfix releases of <a href=\"micmatch.html\">Mikmatch</a>, \n<a href=\"json-static.html\">json-static</a>\nand <a href=\"caml2html.html\">Caml2html</a>.\n\n";;

let () =
  Camlmix.line := 139;
  Camlmix.char := 3;
  Camlmix.source := "index.html.mlx"
;;

# 139 "index.html.mlx";;
   news "July 26, 2008" 
let () =
  Camlmix.line := 139;
  Camlmix.char := 27;
  Camlmix.source := "index.html.mlx"
;;

let () = !Camlmix.printer 
# 139 "index.html.mlx";;
                           "\nReleasing <a href=\"micmatch.html\">Mikmatch 1.0.0</a> with a K, \nimplementation of Micmatch that supports \nthe \"new Camlp4\".\n<a href=\"micmatch.html\">Micmatch 1.0.0</a> now supports Camlp5, based on the\n\"old Camlp4\".\n\n";;

let () =
  Camlmix.line := 146;
  Camlmix.char := 3;
  Camlmix.source := "index.html.mlx"
;;

# 146 "index.html.mlx";;
   news "July 9, 2008" 
let () =
  Camlmix.line := 146;
  Camlmix.char := 26;
  Camlmix.source := "index.html.mlx"
;;

let () = !Camlmix.printer 
# 146 "index.html.mlx";;
                          "\nReleasing new package <a href=\"easy-format.html\">Easy-format 0.9.0</a>: \n<i>Indentation made easy</i>.\n\n";;

let () =
  Camlmix.line := 150;
  Camlmix.char := 3;
  Camlmix.source := "index.html.mlx"
;;

# 150 "index.html.mlx";;
   news "April 7, 2008" 
let () =
  Camlmix.line := 150;
  Camlmix.char := 27;
  Camlmix.source := "index.html.mlx"
;;

let () = !Camlmix.printer 
# 150 "index.html.mlx";;
                           "\nReleasing new package <a href=\"ocaml.html#tophide\">Tophide 1.0.0</a>.\nRecommended for hiding auto-generated identifiers in toplevel sessions,\nmuch like hidden files for <code>ls</code>.\n\n";;

let () =
  Camlmix.line := 155;
  Camlmix.char := 3;
  Camlmix.source := "index.html.mlx"
;;

# 155 "index.html.mlx";;
   news "March 4, 2007" 
let () =
  Camlmix.line := 155;
  Camlmix.char := 27;
  Camlmix.source := "index.html.mlx"
;;

let () = !Camlmix.printer 
# 155 "index.html.mlx";;
                           "\n<a href=\"ocamlscript.html\">Ocamlscript 2.0.0</a> is out. \n\n";;

let () =
  Camlmix.line := 158;
  Camlmix.char := 3;
  Camlmix.source := "index.html.mlx"
;;

# 158 "index.html.mlx";;
   news "February 11, 2007" 
let () =
  Camlmix.line := 158;
  Camlmix.char := 31;
  Camlmix.source := "index.html.mlx"
;;

let () = !Camlmix.printer 
# 158 "index.html.mlx";;
                               "\n<a href=\"caml2html.html\">Caml2html</a> can now show the type \nof the expression which is under the mouse pointer.\n\n";;

let () =
  Camlmix.line := 162;
  Camlmix.char := 3;
  Camlmix.source := "index.html.mlx"
;;

# 162 "index.html.mlx";;
   news "February 4, 2007" 
let () =
  Camlmix.line := 162;
  Camlmix.char := 30;
  Camlmix.source := "index.html.mlx"
;;

let () = !Camlmix.printer 
# 162 "index.html.mlx";;
                              "\nRelease of <a href=\"micmatch.html\">micmatch</a> 0.697 \nwhich now includes experimental support for\nviews, i.e. user-defined patterns that match abstract data.\n\n";;

let () =
  Camlmix.line := 167;
  Camlmix.char := 3;
  Camlmix.source := "index.html.mlx"
;;

# 167 "index.html.mlx";;
   news "January 19, 2007" 
let () =
  Camlmix.line := 167;
  Camlmix.char := 30;
  Camlmix.source := "index.html.mlx"
;;

let () = !Camlmix.printer 
# 167 "index.html.mlx";;
                              "\nPreview release of <a href=\"json-static.html\">json-static</a>, \na syntax extension of OCaml that features automatic conversions between\nuntyped <a href=\"http://www.json.org/\">JSON</a> data and OCaml types.\n\n";;

let () =
  Camlmix.line := 172;
  Camlmix.char := 3;
  Camlmix.source := "index.html.mlx"
;;

# 172 "index.html.mlx";;
   news "December 3, 2006" 
let () =
  Camlmix.line := 172;
  Camlmix.char := 30;
  Camlmix.source := "index.html.mlx"
;;

let () = !Camlmix.printer 
# 172 "index.html.mlx";;
                              "\nFirst release of <a href=\"json-wheel.html\">json-wheel</a>, \nan OCaml implementation of the <a href=\"http://www.json.org/\">JSON</a>\ndata format, a \"fat-free alternative to XML\".\n\n";;

let () =
  Camlmix.line := 177;
  Camlmix.char := 3;
  Camlmix.source := "index.html.mlx"
;;

# 177 "index.html.mlx";;
   news "January 21, 2006" 
let () =
  Camlmix.line := 177;
  Camlmix.char := 30;
  Camlmix.source := "index.html.mlx"
;;

let () = !Camlmix.printer 
# 177 "index.html.mlx";;
                              "\nReleased <a href=\"camlmix/\">Camlmix 1.3</a>, \na multipurpose template processor.\n\n";;

let () =
  Camlmix.line := 181;
  Camlmix.char := 3;
  Camlmix.source := "index.html.mlx"
;;

# 181 "index.html.mlx";;
   news "December 5, 2005" 
let () =
  Camlmix.line := 181;
  Camlmix.char := 30;
  Camlmix.source := "index.html.mlx"
;;

let () = !Camlmix.printer 
# 181 "index.html.mlx";;
                              "\nFirst release of <a href=\"p4ck.html\">P4ck</a>, an experimental system \nfor the quick installation of a dynamic collection of \none-file Camlp4 hacks.\n\n";;

let () =
  Camlmix.line := 186;
  Camlmix.char := 3;
  Camlmix.source := "index.html.mlx"
;;

# 186 "index.html.mlx";;
   news "October 17, 2005" 
let () =
  Camlmix.line := 186;
  Camlmix.char := 30;
  Camlmix.source := "index.html.mlx"
;;

let () = !Camlmix.printer 
# 186 "index.html.mlx";;
                              "\nFirst release of <a href=\"biblio_php.html\">Biblio.php</a>, an \nextension of <a href=\"http://www.mediawiki.org\">MediaWiki</a> \nfor web-based bibliography retrieval and formatting.\n\n";;

let () =
  Camlmix.line := 191;
  Camlmix.char := 3;
  Camlmix.source := "index.html.mlx"
;;

# 191 "index.html.mlx";;
   news "May 13, 2005" 
let () =
  Camlmix.line := 191;
  Camlmix.char := 26;
  Camlmix.source := "index.html.mlx"
;;

let () = !Camlmix.printer 
# 191 "index.html.mlx";;
                          "\n<a href=\"http://martin.jambon.free.fr/search-protein-3D-sites.html\">Comparison-based prediction of \n3D functional sites in protein structures</a>: a comparative table\nof existing approaches.\n\n";;

let () =
  Camlmix.line := 196;
  Camlmix.char := 3;
  Camlmix.source := "index.html.mlx"
;;

# 196 "index.html.mlx";;
   news "April 27, 2005" 
let () =
  Camlmix.line := 196;
  Camlmix.char := 28;
  Camlmix.source := "index.html.mlx"
;;

let () = !Camlmix.printer 
# 196 "index.html.mlx";;
                            "\n<a href=\"extend-ocaml-syntax.html\">\"How to extend the syntax\nof Objective Caml, using Camlp4\"</a>, a web tutorial \nfor advanced OCaml programmers, has been released.\n\n";;

let () =
  Camlmix.line := 201;
  Camlmix.char := 3;
  Camlmix.source := "index.html.mlx"
;;

# 201 "index.html.mlx";;
   news "February 3, 2005" 
let () =
  Camlmix.line := 201;
  Camlmix.char := 30;
  Camlmix.source := "index.html.mlx"
;;

let () = !Camlmix.printer 
# 201 "index.html.mlx";;
                              "\n<a href=\"micmatch.html\">Micmatch</a> now has a \n<a href=\"micmatch-howto.html\">HowTo</a> and many powerful features.\n\n";;

let () =
  Camlmix.line := 205;
  Camlmix.char := 3;
  Camlmix.source := "index.html.mlx"
;;

# 205 "index.html.mlx";;
   news "November 11, 2004" 
let () =
  Camlmix.line := 205;
  Camlmix.char := 31;
  Camlmix.source := "index.html.mlx"
;;

let () = !Camlmix.printer 
# 205 "index.html.mlx";;
                               "\n<a href=\"caml2html.html\">Caml2html</a> \nis now developed and redistributed here. New version 1.2.\n\n";;

let () =
  Camlmix.line := 209;
  Camlmix.char := 3;
  Camlmix.source := "index.html.mlx"
;;

# 209 "index.html.mlx";;
   news "August 18, 2004" 
let () =
  Camlmix.line := 209;
  Camlmix.char := 29;
  Camlmix.source := "index.html.mlx"
;;

let () = !Camlmix.printer 
# 209 "index.html.mlx";;
                             "\n<a href=\"micmatch.html\">Micmatch</a> \nhas now a <a href=\"micmatch-manual.html\">reference manual</a>.\n\n";;

let () =
  Camlmix.line := 213;
  Camlmix.char := 3;
  Camlmix.source := "index.html.mlx"
;;

# 213 "index.html.mlx";;
   news "August 8, 2004" 
let () =
  Camlmix.line := 213;
  Camlmix.char := 28;
  Camlmix.source := "index.html.mlx"
;;

let () = !Camlmix.printer 
# 213 "index.html.mlx";;
                            "\n<a href=\"camlmix/\">Camlmix</a>&nbsp;1.1 is\nready and available as a \n<a href=\"http://www.ocaml-programming.de/godi/\">GODI</a> package.\n\n";;

let () =
  Camlmix.line := 218;
  Camlmix.char := 3;
  Camlmix.source := "index.html.mlx"
;;

# 218 "index.html.mlx";;
   news "August 2, 2004" 
let () =
  Camlmix.line := 218;
  Camlmix.char := 28;
  Camlmix.source := "index.html.mlx"
;;

let () = !Camlmix.printer 
# 218 "index.html.mlx";;
                            "\nNew package <a href=\"micmatch.html\">Micmatch</a>: a smooth integration of \nregular expressions in the classic pattern matching of OCaml.\n\n";;

let () =
  Camlmix.line := 222;
  Camlmix.char := 3;
  Camlmix.source := "index.html.mlx"
;;

# 222 "index.html.mlx";;
   news "July 4, 2004" 
let () =
  Camlmix.line := 222;
  Camlmix.char := 26;
  Camlmix.source := "index.html.mlx"
;;

let () = !Camlmix.printer 
# 222 "index.html.mlx";;
                          "\nThe English version of my <a href=\"/phd.html\">doctoral\nthesis</a> is now available. \n\n";;

let () =
  Camlmix.line := 226;
  Camlmix.char := 3;
  Camlmix.source := "index.html.mlx"
;;

# 226 "index.html.mlx";;
   news "June 8, 2004" 
let () =
  Camlmix.line := 226;
  Camlmix.char := 26;
  Camlmix.source := "index.html.mlx"
;;

let () = !Camlmix.printer 
# 226 "index.html.mlx";;
                          "\nA page about \n<a href=\"/icfpcontest2004.html\">my participation</a>\nin the ICFP programming contest is available.\n\n";;

let () =
  Camlmix.line := 231;
  Camlmix.char := 3;
  Camlmix.source := "index.html.mlx"
;;

# 231 "index.html.mlx";;
   () 
let () =
  Camlmix.line := 231;
  Camlmix.char := 9;
  Camlmix.source := "index.html.mlx"
;;

let () = !Camlmix.printer 
# 231 "index.html.mlx";;
         "\n\n";;

let () =
  Camlmix.line := 233;
  Camlmix.char := 3;
  Camlmix.source := "index.html.mlx"
;;

# 233 "index.html.mlx";;
   camlmix_footer ~years:"2004-2012" () 
let () =
  Camlmix.line := 233;
  Camlmix.char := 43;
  Camlmix.source := "index.html.mlx"
;;

let () = !Camlmix.printer 
# 233 "index.html.mlx";;
                                           "\n";;

let () =
  Camlmix.line := 234;
  Camlmix.char := 3;
  Camlmix.source := "index.html.mlx"
;;

# 234 "index.html.mlx";;
   include_file "end_big_table" 
let () =
  Camlmix.line := 234;
  Camlmix.char := 35;
  Camlmix.source := "index.html.mlx"
;;

let () = !Camlmix.printer 
# 234 "index.html.mlx";;
                                   "\n</body>\n</html>\n";;

