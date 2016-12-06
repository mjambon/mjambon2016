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

# 1 "bioinformatics.html.mlx";;

let () =
  Camlmix.line := 1;
  Camlmix.char := 1;
  Camlmix.source := "bioinformatics.html.mlx"
;;

let () = !Camlmix.printer 
# 1 "bioinformatics.html.mlx";;
 "";;

let () =
  Camlmix.line := 1;
  Camlmix.char := 3;
  Camlmix.source := "bioinformatics.html.mlx"
;;

# 1 "bioinformatics.html.mlx";;
  
#load "utils.cmo";;
open Utils

let () =
  Camlmix.line := 4;
  Camlmix.char := 3;
  Camlmix.source := "bioinformatics.html.mlx"
;;

let () = !Camlmix.printer 
# 4 "bioinformatics.html.mlx";;
   "\n";;

let () =
  Camlmix.line := 5;
  Camlmix.char := 3;
  Camlmix.source := "bioinformatics.html.mlx"
;;

# 5 "bioinformatics.html.mlx";;
   include_file "doctype" 
let () =
  Camlmix.line := 5;
  Camlmix.char := 29;
  Camlmix.source := "bioinformatics.html.mlx"
;;

let () = !Camlmix.printer 
# 5 "bioinformatics.html.mlx";;
                             "\n<html>\n<head>\n";;

let () =
  Camlmix.line := 8;
  Camlmix.char := 3;
  Camlmix.source := "bioinformatics.html.mlx"
;;

# 8 "bioinformatics.html.mlx";;
   title "Miscellaneous bioinformatics-related resources" 
let () =
  Camlmix.line := 8;
  Camlmix.char := 61;
  Camlmix.source := "bioinformatics.html.mlx"
;;

let () = !Camlmix.printer 
# 8 "bioinformatics.html.mlx";;
                                                             "\n";;

let () =
  Camlmix.line := 9;
  Camlmix.char := 3;
  Camlmix.source := "bioinformatics.html.mlx"
;;

# 9 "bioinformatics.html.mlx";;
   include_file "charset" 
let () =
  Camlmix.line := 9;
  Camlmix.char := 29;
  Camlmix.source := "bioinformatics.html.mlx"
;;

let () = !Camlmix.printer 
# 9 "bioinformatics.html.mlx";;
                             "\n";;

let () =
  Camlmix.line := 10;
  Camlmix.char := 3;
  Camlmix.source := "bioinformatics.html.mlx"
;;

# 10 "bioinformatics.html.mlx";;
   include_file "stylesheet" 
let () =
  Camlmix.line := 10;
  Camlmix.char := 32;
  Camlmix.source := "bioinformatics.html.mlx"
;;

let () = !Camlmix.printer 
# 10 "bioinformatics.html.mlx";;
                                "\n";;

let () =
  Camlmix.line := 11;
  Camlmix.char := 3;
  Camlmix.source := "bioinformatics.html.mlx"
;;

# 11 "bioinformatics.html.mlx";;
   include_file "icon" 
let () =
  Camlmix.line := 11;
  Camlmix.char := 26;
  Camlmix.source := "bioinformatics.html.mlx"
;;

let () = !Camlmix.printer 
# 11 "bioinformatics.html.mlx";;
                          "\n";;

let () =
  Camlmix.line := 12;
  Camlmix.char := 3;
  Camlmix.source := "bioinformatics.html.mlx"
;;

# 12 "bioinformatics.html.mlx";;
   include_file "commonlinks" 
let () =
  Camlmix.line := 12;
  Camlmix.char := 33;
  Camlmix.source := "bioinformatics.html.mlx"
;;

let () = !Camlmix.printer 
# 12 "bioinformatics.html.mlx";;
                                 "\n</head>\n<body>\n";;

let () =
  Camlmix.line := 15;
  Camlmix.char := 3;
  Camlmix.source := "bioinformatics.html.mlx"
;;

# 15 "bioinformatics.html.mlx";;
   include_file "hitcounter" 
let () =
  Camlmix.line := 15;
  Camlmix.char := 32;
  Camlmix.source := "bioinformatics.html.mlx"
;;

let () = !Camlmix.printer 
# 15 "bioinformatics.html.mlx";;
                                "\n";;

let () =
  Camlmix.line := 16;
  Camlmix.char := 3;
  Camlmix.source := "bioinformatics.html.mlx"
;;

# 16 "bioinformatics.html.mlx";;
   include_file "start_big_table" 
let () =
  Camlmix.line := 16;
  Camlmix.char := 37;
  Camlmix.source := "bioinformatics.html.mlx"
;;

let () = !Camlmix.printer 
# 16 "bioinformatics.html.mlx";;
                                     "\n";;

let () =
  Camlmix.line := 17;
  Camlmix.char := 3;
  Camlmix.source := "bioinformatics.html.mlx"
;;

# 17 "bioinformatics.html.mlx";;
   top_menu ~here:false bioinformatics 
let () =
  Camlmix.line := 17;
  Camlmix.char := 42;
  Camlmix.source := "bioinformatics.html.mlx"
;;

let () = !Camlmix.printer 
# 17 "bioinformatics.html.mlx";;
                                          "\n\n<h1>Bioinformatics</h1> \n\n<h2>Bioinformatics at the Burnham Institute for Medical Research</h2>\n\n<p>\nUntil April 2007, \nI was working in <a href=\"http://bioinformatics.burnham.org\">Adam Godzik's \ngroup</a> at <a href=\"http://www.burnham.org\">the Burnham Institute \nfor Medical Research</a>\nin San Diego, California.\n<p>\nI was the webmaster of the \n<a href=\"http://openwetware.org/wiki/Wikiomics\">Wikiomics.org bioinformatics wiki</a>,\nwhich provides an open space for sharing notes, tips, links and references on \n<a href=\"http://en.wikipedia.org/wiki/Bioinformatics\">bioinformatics</a>.\n\n<p>\nI developed Pacgum,\na novel method and web application \nfor estimating the resolution of a protein 3D model independently\nfrom its origin, whether it is X-ray crystallography, \nNMR spectroscopy, homology modelling or any other technique.\nIt returns a single score as well as a plot called \"contact profile\"\nthat helps understand why a protein scores high or low.\nAsk me about the paper (that was never published) and software if interested.\n</p>\n\n\n<h2>Documents</h2>\n\n<p>\nYou can find <a href=\"publications.html\">my publications here</a>.\n\n<p>My full PhD thesis is available in French and in English: \n<i><a href=\"phd.html\">A bioinformatic system\nfor searching functional similarities\nin 3D structures\nof proteins</a></i>.\nIt contains the full specification of the SuMo system\nas of version 4.4.\n\n<p>\nI also maintain a list of \n<a href=\"search-protein-3D-sites.html\">comparison-based approaches \nto the automated prediction of interesting 3D sites in a protein structure</a>.\n\n\n<h2>ISMB 2005 poster & AFP SIG talk</h2> \n\n<p>\n<table><tr>\n<td><a href=\"poster-ismb05.png\"><img src=\"micro-poster-ismb05.png\" \nalt=\"reduced poster\"></a>\n</td>\n<td>\n<a href=\"poster-ismb05.png\">The poster</a> \npresented at <a href=\"http://www.iscb.org/ismb2005\">ISMB 2005</a>, \nshows some of the latest features of SuMo for \nsearching ligand binding sites in protein structures: \n<i>Unification of discrete and continuous effects on protein interfaces: \nan extension of the concept of hydrophobic effect and its application</i>\n</td>\n</tr></table>\n\n<p>\n<a href=\"jambon-afpsig2005.pdf\">The slides</a> \nof the presentation given at the Automated Function Prediction SIG\nat ISMB 2005 are available: \n<i>SuMo: structure comparison of proteins focused on \nfunctional properties of ligand binding sites</i>\n\n<h2>The Open Structure Annotation Network (TOPSAN) poster (2006)</h2> \n\n<p>\n<table><tr>\n<td><a href=\"poster-topsan-reduced.jpg\"><img src=\"micro-poster-topsan.png\" \nalt=\"reduced poster\"></a> \n</td>\n<td>\nThis poster, presented at the \n<a href=\"http://biofunctionprediction.org/AFP/afp06\">Automated \nFunction Prediction meeting 2006 in San Diego</a>, \nintroduces \n<a href=\"http://topsan.org\">The Open Structure Annotation Network (TOPSAN)</a>.\nTOPSAN is a website\nthat is meant primarily to ease the process of publishing protein\n3D structures from structural genomics, \nwhich initially have little or no associated biological data.\nIt is a hybrid between a wiki (editable online, continuously), \na traditional publishing system (releases of frozen versions of articles,\ndesignated editors),\nand a database of biological annotations (structured fields, free text,\nfeeds from other databases, links to external tools).</td>\n</tr></table>\n\n";;

let () =
  Camlmix.line := 114;
  Camlmix.char := 3;
  Camlmix.source := "bioinformatics.html.mlx"
;;

# 114 "bioinformatics.html.mlx";;
   camlmix_footer ~years:"2005" () 
let () =
  Camlmix.line := 114;
  Camlmix.char := 38;
  Camlmix.source := "bioinformatics.html.mlx"
;;

let () = !Camlmix.printer 
# 114 "bioinformatics.html.mlx";;
                                      "\n";;

let () =
  Camlmix.line := 115;
  Camlmix.char := 3;
  Camlmix.source := "bioinformatics.html.mlx"
;;

# 115 "bioinformatics.html.mlx";;
   include_file "end_big_table" 
let () =
  Camlmix.line := 115;
  Camlmix.char := 35;
  Camlmix.source := "bioinformatics.html.mlx"
;;

let () = !Camlmix.printer 
# 115 "bioinformatics.html.mlx";;
                                   "\n</body>\n</html>\n";;

