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

# 1 "publications.html.mlx";;

let () =
  Camlmix.line := 1;
  Camlmix.char := 1;
  Camlmix.source := "publications.html.mlx"
;;

let () = !Camlmix.printer 
# 1 "publications.html.mlx";;
 "";;

let () =
  Camlmix.line := 1;
  Camlmix.char := 3;
  Camlmix.source := "publications.html.mlx"
;;

# 1 "publications.html.mlx";;
   
#load "utils.cmo";;
open Utils

let () =
  Camlmix.line := 4;
  Camlmix.char := 3;
  Camlmix.source := "publications.html.mlx"
;;

let () = !Camlmix.printer 
# 4 "publications.html.mlx";;
   "\n";;

let () =
  Camlmix.line := 5;
  Camlmix.char := 3;
  Camlmix.source := "publications.html.mlx"
;;

# 5 "publications.html.mlx";;
   include_file "doctype" 
let () =
  Camlmix.line := 5;
  Camlmix.char := 29;
  Camlmix.source := "publications.html.mlx"
;;

let () = !Camlmix.printer 
# 5 "publications.html.mlx";;
                             "\n<html>\n<head>\n";;

let () =
  Camlmix.line := 8;
  Camlmix.char := 3;
  Camlmix.source := "publications.html.mlx"
;;

# 8 "publications.html.mlx";;
   title "Martin Jambon's publications" 
let () =
  Camlmix.line := 8;
  Camlmix.char := 43;
  Camlmix.source := "publications.html.mlx"
;;

let () = !Camlmix.printer 
# 8 "publications.html.mlx";;
                                           "\n";;

let () =
  Camlmix.line := 9;
  Camlmix.char := 3;
  Camlmix.source := "publications.html.mlx"
;;

# 9 "publications.html.mlx";;
   include_file "charset" 
let () =
  Camlmix.line := 9;
  Camlmix.char := 29;
  Camlmix.source := "publications.html.mlx"
;;

let () = !Camlmix.printer 
# 9 "publications.html.mlx";;
                             "\n";;

let () =
  Camlmix.line := 10;
  Camlmix.char := 3;
  Camlmix.source := "publications.html.mlx"
;;

# 10 "publications.html.mlx";;
   include_file "stylesheet" 
let () =
  Camlmix.line := 10;
  Camlmix.char := 32;
  Camlmix.source := "publications.html.mlx"
;;

let () = !Camlmix.printer 
# 10 "publications.html.mlx";;
                                "\n";;

let () =
  Camlmix.line := 11;
  Camlmix.char := 3;
  Camlmix.source := "publications.html.mlx"
;;

# 11 "publications.html.mlx";;
   include_file "icon" 
let () =
  Camlmix.line := 11;
  Camlmix.char := 26;
  Camlmix.source := "publications.html.mlx"
;;

let () = !Camlmix.printer 
# 11 "publications.html.mlx";;
                          "\n";;

let () =
  Camlmix.line := 12;
  Camlmix.char := 3;
  Camlmix.source := "publications.html.mlx"
;;

# 12 "publications.html.mlx";;
   include_file "commonlinks" 
let () =
  Camlmix.line := 12;
  Camlmix.char := 33;
  Camlmix.source := "publications.html.mlx"
;;

let () = !Camlmix.printer 
# 12 "publications.html.mlx";;
                                 "\n</head>\n<body>\n";;

let () =
  Camlmix.line := 15;
  Camlmix.char := 3;
  Camlmix.source := "publications.html.mlx"
;;

# 15 "publications.html.mlx";;
   include_file "hitcounter" 
let () =
  Camlmix.line := 15;
  Camlmix.char := 32;
  Camlmix.source := "publications.html.mlx"
;;

let () = !Camlmix.printer 
# 15 "publications.html.mlx";;
                                "\n";;

let () =
  Camlmix.line := 16;
  Camlmix.char := 3;
  Camlmix.source := "publications.html.mlx"
;;

# 16 "publications.html.mlx";;
   include_file "start_big_table" 
let () =
  Camlmix.line := 16;
  Camlmix.char := 37;
  Camlmix.source := "publications.html.mlx"
;;

let () = !Camlmix.printer 
# 16 "publications.html.mlx";;
                                     "\n";;

let () =
  Camlmix.line := 17;
  Camlmix.char := 3;
  Camlmix.source := "publications.html.mlx"
;;

# 17 "publications.html.mlx";;
   top_menu publications 
let () =
  Camlmix.line := 17;
  Camlmix.char := 28;
  Camlmix.source := "publications.html.mlx"
;;

let () = !Camlmix.printer 
# 17 "publications.html.mlx";;
                            "\n\n<h1>Martin Jambon's publications</h1>\n\n\n<h2>Patent</h2>\n\n<ul>\n<li>\nPatent <a href=\"http://v3.espacenet.com/textdoc?DB=EPODOC&amp;IDX=WO03104388&amp;F=0&amp;QPN=WO03104388\">WO03104388</a> \n(Filed 2002-06-06, Issued 2003-12-18):\nMartin Jambon, Gilbert Del\195\169age and Christophe Geourjon. \nProcess for identifying similar\n3D substructures onto 3D atomic structures and its applications.\n</li>\n</ul>\n\n\n<h2>Articles</h2>\n\n<ul>\n<li>\nFriedberg I, Jambon M, Godzik A.\nNew avenues in protein function prediction.\nProtein Sci. 2006 Jun;15(6):1527-9.\n[<a href=\"/papers/funpred2006.pdf\">pdf</a>]\n\n<li>\nJambon M, Andrieu O, Combet C, Deleage G, Delfaud F, Geourjon C.\nThe SuMo server: 3D search for protein functional sites.\nBioinformatics. 2005 Sep 1; 21(20):3929\194\1733930.\n[<a href=\"/papers/sumo2005.pdf\">pdf</a>]\n\n<li>\nJambon, M. and Imberty, A. and Deleage, G. and\n                   Geourjon, C.\nA new bioinformatic approach to detect common 3D\n                   sites in protein structures.\nProteins\n2003 Aug 1; 52(2):137-45.\n[<a href=\"/papers/sumo2003.pdf\">pdf</a>]\n\n<li>\nLalle P, Aouacheria A, Dumont-Miscopein A, Jambon M,\nVenet S, Bobichon H, Colas P, Deleage G, Geourjon C, Gillet G.\nEvidence for crucial electrostatic interactions between\nBCL-2 homology domains BH3 and BH4 in the anti-apoptotic NR-13\nprotein.\nBiochem J\n2002 Nov 15; 368(Pt 1):213-21.\n[<a href=\"/papers/nr13.pdf\">pdf</a>]\n\n<li>\nCombet C, Jambon M, Deleage G, Geourjon C.\nGeno3D: automatic comparative molecular modelling of protein.\nBioinformatics.\n2002 Jan; 18(1):213-4.\n[<a href=\"/papers/geno3d.pdf\">pdf</a>]\n</ul>\n\n\n\n<h2>Other</h2>\n\n<ul>\n\n<li>\nCommunication: \nIddo Friedberg, Martin Jambon, Andrei Osterman\nand Adam Godzik. A ``Fair and Balanced'' Assessment of Protein Function\nPrediction Servers. June 2005. Automated function\nprediction SIG, International Conference on Intelligent Systems in\nMolecular Biology (ISMB 2005), Detroit, Michigan.\n\n<li>\nCommunication: \nMartin Jambon. SuMo: structure comparison of proteins focused on\nfunctional properties of ligand binding sites. \nJune 2005. Automated function\nprediction SIG, ISMB 2005, Detroit, Michigan.\n\n<li>\nPoster: \nMartin Jambon, Christophe Geourjon, Fran\195\167ois Delfaud. \nUnification of discrete and continuous effects on protein\ninterfaces: an extension of the concept of hydrophobic effect and its\napplication. June 2005. ISMB 2005, Detroit, Michigan.\n\n<li>\nCommunication (1 hour):\nMartin Jambon,\nUn syst\195\168me de pr\195\169diction de sites fonctionnels dans\nles structures 3D de prot\195\169ines.\nSeminar for Hybrigenics,\nParis, France, June 2002\n</li>\n\n<li>\nCommunication (20 min):\nMartin Jambon, Anne Imberty, Gilbert Del\195\169age, Christophe Geourjon,\nSuMo: a software that detects 3D sites shared by protein structures.\nJOBIM 2002 (Journ\195\169es ouvertes biologie informatique\nmath\195\169matiques),\nSaint Malo, France,\n12 June 2002\n</li>\n\n<li>\nPoster:\nMartin Jambon,\nSuMo : logiciel int\195\169gr\195\169 de caract\195\169risation de sites\nactifs de prot\195\169ines au service du drug design.\n9\195\168me carrefours de la fondation Rh\195\180ne-Alpes Futur,\nLyon, France,\n17 November 2001\n</li>\n\n\n<li>\nCommunication (30 min):\nMartin Jambon,\nSuMo, une m\195\169thode\nde comparaison des propri\195\169t\195\169s de surface des prot\195\169ines.\nS\195\169minaire de \"Bio-Informatique Structurale\",\nMontpellier, France,\n4 October 2001\n</li>\n\n\n<li>\nCommunication (20 min):\nMartin Jambon,\nSuMo, une m\195\169thode\nde comparaison des propri\195\169t\195\169s de surface des prot\195\169ines.\n5\195\168me journ\195\169e de l'EDISS (Ecole doctorale),\nLyon, France,\n29 May 2001\n</li>\n\n<li>Poster:\nChristophe Combet, Martin Jambon, Gilbert Del\195\169age et Christophe\nGeourjon,\nGeno3D un serveur Web automatique de mod\195\169lisation\nmol\195\169culaire,\npresented in\n12<sup>e</sup> rencontres du GGMM (groupe de\ngraphisme et mod\195\169lisation mol\195\169culaire),\nN\195\174mes, France,\n9-11 May 2001\n</li>\n\n\n\n<li>\nCommunication (20 min):\nMartin Jambon, Christophe Combet, Gilbert Del\195\169age et\nChristophe Geourjon,\nSuMo, une m\195\169thode\nde comparaison des propri\195\169t\195\169s de surface des prot\195\169ines.\n12<sup>e</sup> rencontres du GGMM (groupe de\ngraphisme et mod\195\169lisation mol\195\169culaire),\nN\195\174mes, France,\n9-11 May 2001\n</li>\n\n\n<li>\nPoster:\nMartin Jambon, Mounir Errami, Gilbert Del\195\169age and\nChristophe Geourjon.\nDevelopment of the SuMo method to detect 3D sites in\nproteins.\nPresented in\n<ol>\n<li>\n12<sup>e</sup> rencontres du GGMM (groupe de\ngraphisme et mod\195\169lisation mol\195\169culaire),\nN\195\174mes, France,\n9-11 May 2001\n</li>\n<li>\nSummer school on protein folding,\nCarg\195\168se, France,\n20-26 May 2001\n</li>\n<li>\n5\195\168me journ\195\169e de l'EDISS (Ecole doctorale),\nLyon, France,\n29 May 2001\n</li>\n<li>\nJOBIM 2001 (Journ\195\169es ouvertes biologie informatique\nmath\195\169matiques)\nToulouse, France,\n30 May-1 June 2001\n</li>\n</ol>\n</li>\n\n\n</ul>\n\n\n";;

let () =
  Camlmix.line := 220;
  Camlmix.char := 3;
  Camlmix.source := "publications.html.mlx"
;;

# 220 "publications.html.mlx";;
   camlmix_footer () 
let () =
  Camlmix.line := 220;
  Camlmix.char := 24;
  Camlmix.source := "publications.html.mlx"
;;

let () = !Camlmix.printer 
# 220 "publications.html.mlx";;
                        "\n";;

let () =
  Camlmix.line := 221;
  Camlmix.char := 3;
  Camlmix.source := "publications.html.mlx"
;;

# 221 "publications.html.mlx";;
   include_file "end_big_table" 
let () =
  Camlmix.line := 221;
  Camlmix.char := 35;
  Camlmix.source := "publications.html.mlx"
;;

let () = !Camlmix.printer 
# 221 "publications.html.mlx";;
                                   "\n</body>\n</html>\n";;

