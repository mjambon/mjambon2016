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

# 1 "cv.html.mlx";;

let () =
  Camlmix.line := 1;
  Camlmix.char := 1;
  Camlmix.source := "cv.html.mlx"
;;

let () = !Camlmix.printer 
# 1 "cv.html.mlx";;
 "";;

let () =
  Camlmix.line := 1;
  Camlmix.char := 3;
  Camlmix.source := "cv.html.mlx"
;;

# 1 "cv.html.mlx";;
   
#load "utils.cmo";;
open Utils 

let () =
  Camlmix.line := 4;
  Camlmix.char := 3;
  Camlmix.source := "cv.html.mlx"
;;

let () = !Camlmix.printer 
# 4 "cv.html.mlx";;
   "\n";;

let () =
  Camlmix.line := 5;
  Camlmix.char := 3;
  Camlmix.source := "cv.html.mlx"
;;

# 5 "cv.html.mlx";;
   include_file "doctype" 
let () =
  Camlmix.line := 5;
  Camlmix.char := 29;
  Camlmix.source := "cv.html.mlx"
;;

let () = !Camlmix.printer 
# 5 "cv.html.mlx";;
                             "\n<html>\n<head>\n";;

let () =
  Camlmix.line := 8;
  Camlmix.char := 3;
  Camlmix.source := "cv.html.mlx"
;;

# 8 "cv.html.mlx";;
   title "Martin Jambon - CV/Resume" 
let () =
  Camlmix.line := 8;
  Camlmix.char := 40;
  Camlmix.source := "cv.html.mlx"
;;

let () = !Camlmix.printer 
# 8 "cv.html.mlx";;
                                        "\n";;

let () =
  Camlmix.line := 9;
  Camlmix.char := 3;
  Camlmix.source := "cv.html.mlx"
;;

# 9 "cv.html.mlx";;
   include_file "charset" 
let () =
  Camlmix.line := 9;
  Camlmix.char := 29;
  Camlmix.source := "cv.html.mlx"
;;

let () = !Camlmix.printer 
# 9 "cv.html.mlx";;
                             "\n";;

let () =
  Camlmix.line := 10;
  Camlmix.char := 3;
  Camlmix.source := "cv.html.mlx"
;;

# 10 "cv.html.mlx";;
   include_file "stylesheet" 
let () =
  Camlmix.line := 10;
  Camlmix.char := 32;
  Camlmix.source := "cv.html.mlx"
;;

let () = !Camlmix.printer 
# 10 "cv.html.mlx";;
                                "\n";;

let () =
  Camlmix.line := 11;
  Camlmix.char := 3;
  Camlmix.source := "cv.html.mlx"
;;

# 11 "cv.html.mlx";;
   include_file "icon" 
let () =
  Camlmix.line := 11;
  Camlmix.char := 26;
  Camlmix.source := "cv.html.mlx"
;;

let () = !Camlmix.printer 
# 11 "cv.html.mlx";;
                          "\n";;

let () =
  Camlmix.line := 12;
  Camlmix.char := 3;
  Camlmix.source := "cv.html.mlx"
;;

# 12 "cv.html.mlx";;
   include_file "commonlinks" 
let () =
  Camlmix.line := 12;
  Camlmix.char := 33;
  Camlmix.source := "cv.html.mlx"
;;

let () = !Camlmix.printer 
# 12 "cv.html.mlx";;
                                 "\n";;

let () =
  Camlmix.line := 13;
  Camlmix.char := 3;
  Camlmix.source := "cv.html.mlx"
;;

# 13 "cv.html.mlx";;
   link_up "cv" 
let () =
  Camlmix.line := 13;
  Camlmix.char := 19;
  Camlmix.source := "cv.html.mlx"
;;

let () = !Camlmix.printer 
# 13 "cv.html.mlx";;
                   "\n</head>\n<body>\n";;

let () =
  Camlmix.line := 16;
  Camlmix.char := 3;
  Camlmix.source := "cv.html.mlx"
;;

# 16 "cv.html.mlx";;
   include_file "hitcounter" 
let () =
  Camlmix.line := 16;
  Camlmix.char := 32;
  Camlmix.source := "cv.html.mlx"
;;

let () = !Camlmix.printer 
# 16 "cv.html.mlx";;
                                "\n";;

let () =
  Camlmix.line := 17;
  Camlmix.char := 3;
  Camlmix.source := "cv.html.mlx"
;;

# 17 "cv.html.mlx";;
   include_file "start_big_table" 
let () =
  Camlmix.line := 17;
  Camlmix.char := 37;
  Camlmix.source := "cv.html.mlx"
;;

let () = !Camlmix.printer 
# 17 "cv.html.mlx";;
                                     "\n";;

let () =
  Camlmix.line := 18;
  Camlmix.char := 3;
  Camlmix.source := "cv.html.mlx"
;;

# 18 "cv.html.mlx";;
   top_menu cv 
let () =
  Camlmix.line := 18;
  Camlmix.char := 18;
  Camlmix.source := "cv.html.mlx"
;;

let () = !Camlmix.printer 
# 18 "cv.html.mlx";;
                  "\n\n<!-- Needs an update!\n<div style=\"text-align:right;font-size:150%\">\n<b>Curriculum Vitae</b><br>\n[<a href=\"cv-jambon.pdf\">print PDF</a>]</div>\n-->\n\n<h1>Martin Jambon</h1>\n<div style=\"text-align:center\">\nmartinj@<span style=\"display:none\">holala@</span>mylife.com\n</div>\n\n<h2>Field of expertise</h2>\n<p>\nComputer modelling and simulation. Search systems.\n\n<h2>Academic preparation and professional experience</h2>\n<ul>\n<li>2007-present: Senior software engineer at \n<a href=\"http://wink.com\">Wink Technologies</a>, \npeople search engine acquired by \n<a href=\"http://www.reunion.com/\">Reunion.com/MyLife.com</a> in November 2008. \nLocation: France &amp; California.\n<li>2004-2007: Bioinformatics scientist, \n<a href=\"http://bioinformatics.burnham.org\">Bioinformatics \n&amp; Systems Biology</a>, \n<a href=\"http://www.burnham.org\">Burnham Institute for Medical Research</a>, \nSan Diego, California.\n<li>2003: Transfer and further development of SuMo for the \n<a href=\"http://www.medit.fr\">MEDIT company</a>, Palaiseau, France.\n<li>2000-2003: <a href=\"phd.html\">PhD in structural bioinformatics</a>, \n<a href=\"http://pbil.ibcp.fr\">PBIL</a>, Lyon, France.\nCreation of SuMo, a patented bioinformatics system.\n<li>1999-2000: \n<a href=\"http://en.wikipedia.org/wiki/DEA_(former_French_degree)\">DEA</a> \n(master's degree) in genome analysis and molecular\nmodelling, Paris. Ranked 1st.\n<li>1997-2000: Magist\232re of molecular and cellular biology, ENS-Lyon.\n<li>1997: Admission to the\n<b><a href=\"http://en.wikipedia.org/wiki/%C9cole_Normale_Sup%E9rieure_de_Lyon\">\201cole Normale Sup\233rieure de Lyon</a></b> (ENS-Lyon), France. \n<br>\n<i>The Ecoles Normales Sup\233rieures are the most selective \nresearch academic schools in France. In biology, \nabout 60 students are admitted each year in either Paris, Lyon or Cachan\nand are paid a full salary during the 4 years of study.</i>\n<li>1995-1997: \n<a href=\"http://en.wikipedia.org/wiki/Grande_%E9cole\">Preparatory classes</a>,\nbiology option,\n<a href=\"http://lyc-saint-louis.scola.ac-paris.fr\">Lyc\233e Saint Louis</a>, \nParis. \n<li>1995: \n<a href=\"http://en.wikipedia.org/wiki/Baccalaur%E9at\">Baccalaur\233at</a> S, mention tr\232s bien (high school graduation with\nhighest honors), Orl\233ans, France.\n</ul>\n\n<h2>Significant achievements</h2>\n\n<p>\nAuthor of <a href=\"phd.html\">SuMo</a>: \na <a href=\"http://v3.espacenet.com/textdoc?DB=EPODOC&amp;IDX=WO03104388&amp;F=0&amp;QPN=WO03104388\">patented</a> bioinformatics system for relevant and fast search of\nfunctional similarities in protein structures. \nThe system was first developed as an academic research project\nand is now developed and distributed by \n<a href=\"http://www.medit.fr\">MEDIT</a>.\nSuMo became the first commercial\nbiopharmaceutical software to be written in OCaml.\nIt continues to be available to the academic community\nas a <a href=\"http://sumo-pbil.ibcp.fr\">web service</a>.\n\n<p>\n<b>Production-grade free software</b>\n\n<p>\nSee <a href=\"ocaml.html\">up-to-date list</a>.\n\n<p>\n<b>Documentation for programmers</b>\n\n<p>\nAuthor of <a href=\"extend-ocaml-syntax.html\">\"How to customize \nthe syntax of OCaml, using Camlp4\"</a>, a practical guide to Camlp4.\n\n\n<h2>Specific skills</h2>\n\n<ul>\n<li>Creation, implementation and test of new heuristics in bioinformatics\n<li>Protein structure and sequence analysis\n<li><a href=\"http://caml.inria.fr\">OCaml programming language</a> \n(50000+ lines of production-level code, \nequivalent of 150000-300000 lines of C++) \nfor the following applications:\n3D geometry, symbolic programming, \nCGI programs, client/server protocols, \nsimulations, parsing with ocamllex and ocamlyacc,\ntext processing, scripting,\nsyntax customization with Camlp4,\ninterface with C libraries,\nGUI with Tk, interactive real-time 3D graphics with OpenGL\n<li>C programming language (20000+ lines of code), Shell, Unix environments\n<li>web publishing (HTML, CSS, CGI)\n</ul>\n\n<h2>Teaching experience</h2>\n\n<p>\n2001-2003: taught 150 hours of applied bioinformatics to third and\nfourth year undergraduate students from University of Lyon 1,\nINSA-Lyon and ENS-Lyon.\n\n<h2>Honors and awards</h2>\n\n<ul>\n<li>2003: invited by French President Jacques Chirac to the\nannual garden party given at the \n<a href=\"http://en.wikipedia.org/wiki/Elys%E9e\">Elys\233e palace</a>\non <a href=\"http://en.wikipedia.org/wiki/Bastille_Day\">Bastille Day</a>.\n<li>2002: 2nd prize, <a href=\"www.rhone-alpes-futur.org\">Prix \nde la Fondation Rh\244ne-Alpes Futur</a>.\n<li>2001: 2nd prize, <a href=\"www.rhone-alpes-futur.org\">Prix \nde la Fondation Rh\244ne-Alpes Futur</a>.\n<li>2001: three-year doctoral fellowship from the French\nMinistry of research, for research and teaching.\n<li>1997: four-year status of full-time public service employee, \nawarded as a student of the Ecole Normale Sup\233rieure de Lyon.\n</ul>\n\n<h2>Publications</h2>\n\n<p>\n<a href=\"publications.html\">One international \npatent and several peer-reviewed publications</a> \ndetailed on a separate page.\n\n\n<h2>References</h2>\n\n<p>\nAvailable upon request.\n\n\n";;

let () =
  Camlmix.line := 160;
  Camlmix.char := 3;
  Camlmix.source := "cv.html.mlx"
;;

# 160 "cv.html.mlx";;
   camlmix_footer () 
let () =
  Camlmix.line := 160;
  Camlmix.char := 24;
  Camlmix.source := "cv.html.mlx"
;;

let () = !Camlmix.printer 
# 160 "cv.html.mlx";;
                        "\n";;

let () =
  Camlmix.line := 161;
  Camlmix.char := 3;
  Camlmix.source := "cv.html.mlx"
;;

# 161 "cv.html.mlx";;
   include_file "end_big_table" 
let () =
  Camlmix.line := 161;
  Camlmix.char := 35;
  Camlmix.source := "cv.html.mlx"
;;

let () = !Camlmix.printer 
# 161 "cv.html.mlx";;
                                   "\n</body>\n</html>\n";;

