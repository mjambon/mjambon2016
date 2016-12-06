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

# 1 "icfpcontest2004.html.mlx";;

let () =
  Camlmix.line := 1;
  Camlmix.char := 1;
  Camlmix.source := "icfpcontest2004.html.mlx"
;;

let () = !Camlmix.printer 
# 1 "icfpcontest2004.html.mlx";;
 "";;

let () =
  Camlmix.line := 1;
  Camlmix.char := 3;
  Camlmix.source := "icfpcontest2004.html.mlx"
;;

# 1 "icfpcontest2004.html.mlx";;
  
#load "utils.cmo";;
#use "topfind";;
#require "caml2html";;
#require "mikmatch_pcre";;
#load "unmix.cmo";;
#load "print_ocaml.cmo";;
#use "camlmix_utils";;
open Printf
open Utils

let () =
  Camlmix.line := 11;
  Camlmix.char := 3;
  Camlmix.source := "icfpcontest2004.html.mlx"
;;

let () = !Camlmix.printer 
# 11 "icfpcontest2004.html.mlx";;
   "\n";;

let () =
  Camlmix.line := 12;
  Camlmix.char := 3;
  Camlmix.source := "icfpcontest2004.html.mlx"
;;

# 12 "icfpcontest2004.html.mlx";;
   include_file "doctype" 
let () =
  Camlmix.line := 12;
  Camlmix.char := 29;
  Camlmix.source := "icfpcontest2004.html.mlx"
;;

let () = !Camlmix.printer 
# 12 "icfpcontest2004.html.mlx";;
                             "\n<html>\n<head>\n";;

let () =
  Camlmix.line := 15;
  Camlmix.char := 3;
  Camlmix.source := "icfpcontest2004.html.mlx"
;;

# 15 "icfpcontest2004.html.mlx";;
   title "ICFP Programming Contest 2004: My Ants" 
let () =
  Camlmix.line := 15;
  Camlmix.char := 53;
  Camlmix.source := "icfpcontest2004.html.mlx"
;;

let () = !Camlmix.printer 
# 15 "icfpcontest2004.html.mlx";;
                                                     "\n";;

let () =
  Camlmix.line := 16;
  Camlmix.char := 3;
  Camlmix.source := "icfpcontest2004.html.mlx"
;;

# 16 "icfpcontest2004.html.mlx";;
   include_file "charset" 
let () =
  Camlmix.line := 16;
  Camlmix.char := 29;
  Camlmix.source := "icfpcontest2004.html.mlx"
;;

let () = !Camlmix.printer 
# 16 "icfpcontest2004.html.mlx";;
                             "\n";;

let () =
  Camlmix.line := 17;
  Camlmix.char := 3;
  Camlmix.source := "icfpcontest2004.html.mlx"
;;

# 17 "icfpcontest2004.html.mlx";;
   include_file "stylesheet" 
let () =
  Camlmix.line := 17;
  Camlmix.char := 32;
  Camlmix.source := "icfpcontest2004.html.mlx"
;;

let () = !Camlmix.printer 
# 17 "icfpcontest2004.html.mlx";;
                                "\n";;

let () =
  Camlmix.line := 18;
  Camlmix.char := 3;
  Camlmix.source := "icfpcontest2004.html.mlx"
;;

# 18 "icfpcontest2004.html.mlx";;
   include_file "ocaml-stylesheet" 
let () =
  Camlmix.line := 18;
  Camlmix.char := 38;
  Camlmix.source := "icfpcontest2004.html.mlx"
;;

let () = !Camlmix.printer 
# 18 "icfpcontest2004.html.mlx";;
                                      "\n";;

let () =
  Camlmix.line := 19;
  Camlmix.char := 3;
  Camlmix.source := "icfpcontest2004.html.mlx"
;;

# 19 "icfpcontest2004.html.mlx";;
   include_file "icon" 
let () =
  Camlmix.line := 19;
  Camlmix.char := 26;
  Camlmix.source := "icfpcontest2004.html.mlx"
;;

let () = !Camlmix.printer 
# 19 "icfpcontest2004.html.mlx";;
                          "\n";;

let () =
  Camlmix.line := 20;
  Camlmix.char := 3;
  Camlmix.source := "icfpcontest2004.html.mlx"
;;

# 20 "icfpcontest2004.html.mlx";;
   include_file "commonlinks" 
let () =
  Camlmix.line := 20;
  Camlmix.char := 33;
  Camlmix.source := "icfpcontest2004.html.mlx"
;;

let () = !Camlmix.printer 
# 20 "icfpcontest2004.html.mlx";;
                                 "\n</head>\n<body>\n";;

let () =
  Camlmix.line := 23;
  Camlmix.char := 3;
  Camlmix.source := "icfpcontest2004.html.mlx"
;;

# 23 "icfpcontest2004.html.mlx";;
   include_file "hitcounter" 
let () =
  Camlmix.line := 23;
  Camlmix.char := 32;
  Camlmix.source := "icfpcontest2004.html.mlx"
;;

let () = !Camlmix.printer 
# 23 "icfpcontest2004.html.mlx";;
                                "\n";;

let () =
  Camlmix.line := 24;
  Camlmix.char := 3;
  Camlmix.source := "icfpcontest2004.html.mlx"
;;

# 24 "icfpcontest2004.html.mlx";;
   include_file "start_big_table" 
let () =
  Camlmix.line := 24;
  Camlmix.char := 37;
  Camlmix.source := "icfpcontest2004.html.mlx"
;;

let () = !Camlmix.printer 
# 24 "icfpcontest2004.html.mlx";;
                                     "\n";;

let () =
  Camlmix.line := 25;
  Camlmix.char := 3;
  Camlmix.source := "icfpcontest2004.html.mlx"
;;

# 25 "icfpcontest2004.html.mlx";;
   top_menu ocaml 
let () =
  Camlmix.line := 25;
  Camlmix.char := 21;
  Camlmix.source := "icfpcontest2004.html.mlx"
;;

let () = !Camlmix.printer 
# 25 "icfpcontest2004.html.mlx";;
                     "\n\n<h1>My Participation in the<br>\nICFP Programming Contest 2004</h1>\n\n<table>\n<tr><td valign=top>\n<a href=\"/icfpcontest2004/work.png\" \ntitle=\"Brain of an ant: click to enlarge\"><img \nsrc=\"/icfpcontest2004/icfp-contest-2004-ant-graph.png\" \nalt=\"A graph representing the brain of an ant\"></a>\n</td>\n\n<td valign=top>\n<p>\nI participated in the 7th edition of the \n<a href=\"http://www.cis.upenn.edu/proj/plclub/contest\">ICFP \nprogramming contest</a>, \nin June 2004.\n\n<p>\nThe name of my one-member team was ANTisocial.\nYou can get my \n<a href=\"icfpcontest2004/submission-ANTisocial.tar.gz\">final submission</a>. \nHowever,\nIt has a last minute bug in the \"wait\" function, \nthat I fixed in \n<a href=\"icfpcontest2004/submission-ANTisocial.fixed.tar.gz\">this version</a>.\n\n\n<h2>The ant generator</h2>\n\n<p>\nI wrote OCaml functions that let me define what I called\nsubtasks. I defined several higher order functions that manipulate\nsubtasks: or, and, not, xor, while, until, if, ifnot, ifelse, \nreturn, fail, choose, sequence, switch\n(<a href=\"icfpcontest2004/lib.ml\">lib.ml</a>).\nThen the job was to use these instructions to make my colony work\ncorrectly.\nThe source code for my ant is in the file \n<a href=\"icfpcontest2004/work.ml\">work.ml</a>.\nIt it 2 times shorter than the output, has blank lines, and about 20\nlines of dead code (function <code>incr_mark</code>).\n\n\n<h2>Strategy</h2>\n\n<p>\nThe strategy I chose is based on:\n<ul>\n<li> tracing 6 straight oriented lines that start from the corners \nof the anthill, using 3 markers,\n<li> protecting the corners with 5 guards, so that no enemy can take \nfood from these places that have a high probability of containing food since\n<li> when an ant has found some food, it will follow \nthe line that brings it directly to (a corner of) \nits anthill as soon as possible.\n</ul>\n<p>\nThis is better illustrated by the position of the markers, as shown in\nthis <a href=\"icfpcontest2004/world.mred\">map</a>. \nNote that an additional marker 4\nis located on each corner but is \nnot visible since there is already a marker 0.\n<p>\nThe final (fixed) ant is <a href=\"icfpcontest2004/work.ant\">here</a>.\n\n\n<h2>Various outputs</h2>\n\n\n<h3>Profiling</h3>\n\n<p>\nThe <a href=\"icfpcontest2004/red.stats\">number of accesses to each state</a>\nis output and sorted after each \nsimulation. I think that a healthy brain is one that has a balanced\nnumber of accesses to each node. Note that the ants use a collective\nbrain. 100,000 simulation steps were performed with initially 91 red ants.\nThe most accessed node corresponds to the 30 food guards, that simply\ndo nothing once they decided to be guards (the \"loop\" state).\n\n<h3>Graphs</h3>\n\n<p>\nI displayed the transitions between the states of my ants with the dot\ntool from the Graphviz package. The graph for \n<a href=\"icfpcontest2004/work.ant\">my ant</a> is available\nas a <a href=\"icfpcontest2004/work.png\">PNG image</a>, \nor better as a \n<a href=\"icfpcontest2004/work-larger.ps\">PostScript file</a> (or its \n<a href=\"icfpcontest2004/work.ps\">compact version</a>).\nThe gv tool is convenient for watching this kind of files.\n\n\n<h3>Ascii Ant</h3>\n\n<pre style=\"border:0px\">\n";;

let () =
  Camlmix.line := 124;
  Camlmix.char := 3;
  Camlmix.source := "icfpcontest2004.html.mlx"
;;

# 124 "icfpcontest2004.html.mlx";;
   html_quote 
let () =
  Camlmix.line := 124;
  Camlmix.char := 17;
  Camlmix.source := "icfpcontest2004.html.mlx"
;;

let () = !Camlmix.printer 
# 124 "icfpcontest2004.html.mlx";;
                 "\n                                        _,  _gM#MMA                    \n           _;q                         (P]gMMMMMMMM                    \n        _m#  q                        gKgMMMMMHMMMW                    \n     _mF     q               _       _W#MMMMMMMMMM                     \n  _pP'       (k_g_g_        #^M_    qM M#MMMMMMMM                      \n#P           `MMMMMHM____ggF  3M,   #F MMMMMMMP                        \n           __MHMMTMMMMMMHMMM____A__gBMP\"*##W'  __gM##9&                \n          gWWHMMMMMMM\"__MMMM*MMMMMHMNF     (_g#*       M,              \n         / gMM##*8M__F  3FWMA 7WME^HMm___MPHE           M,             \n          \"\"       VMAm# _g#'   7M<   \"     V__          V,            \n                  gK4   _P       \"#m_         7MmA,,      %_           \n                _F_#   qF           NM                     \\,          \n                M_M   _P             #                      %_         \n             __# #^   ML            #'                       ML        \n                M'   F7            qF                         M        \n               M\"    1             #                           A       \n              `\"   _#'            gL                            R_     \n                                  #                              ^NMMmm\n                                 qL                                    \n                                 #                                     \n                                 L                                     \n                                 R                                     \n";;

let () =
  Camlmix.line := 147;
  Camlmix.char := 3;
  Camlmix.source := "icfpcontest2004.html.mlx"
;;

# 147 "icfpcontest2004.html.mlx";;
   () 
let () =
  Camlmix.line := 147;
  Camlmix.char := 9;
  Camlmix.source := "icfpcontest2004.html.mlx"
;;

let () = !Camlmix.printer 
# 147 "icfpcontest2004.html.mlx";;
         "\n</pre>\n\n</td></tr>\n</table>\n\n\n";;

let () =
  Camlmix.line := 154;
  Camlmix.char := 3;
  Camlmix.source := "icfpcontest2004.html.mlx"
;;

# 154 "icfpcontest2004.html.mlx";;
   camlmix_footer ~years:"2004" () 
let () =
  Camlmix.line := 154;
  Camlmix.char := 38;
  Camlmix.source := "icfpcontest2004.html.mlx"
;;

let () = !Camlmix.printer 
# 154 "icfpcontest2004.html.mlx";;
                                      "\n";;

let () =
  Camlmix.line := 155;
  Camlmix.char := 3;
  Camlmix.source := "icfpcontest2004.html.mlx"
;;

# 155 "icfpcontest2004.html.mlx";;
   include_file "end_big_table" 
let () =
  Camlmix.line := 155;
  Camlmix.char := 35;
  Camlmix.source := "icfpcontest2004.html.mlx"
;;

let () = !Camlmix.printer 
# 155 "icfpcontest2004.html.mlx";;
                                   "\n</body>\n</html>\n";;

