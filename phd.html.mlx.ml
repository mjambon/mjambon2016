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

# 1 "phd.html.mlx";;

let () =
  Camlmix.line := 1;
  Camlmix.char := 1;
  Camlmix.source := "phd.html.mlx"
;;

let () = !Camlmix.printer 
# 1 "phd.html.mlx";;
 "";;

let () =
  Camlmix.line := 1;
  Camlmix.char := 3;
  Camlmix.source := "phd.html.mlx"
;;

# 1 "phd.html.mlx";;
   
#load "utils.cmo";;
open Utils

let () =
  Camlmix.line := 4;
  Camlmix.char := 3;
  Camlmix.source := "phd.html.mlx"
;;

let () = !Camlmix.printer 
# 4 "phd.html.mlx";;
   "\n";;

let () =
  Camlmix.line := 5;
  Camlmix.char := 3;
  Camlmix.source := "phd.html.mlx"
;;

# 5 "phd.html.mlx";;
   include_file "doctype" 
let () =
  Camlmix.line := 5;
  Camlmix.char := 29;
  Camlmix.source := "phd.html.mlx"
;;

let () = !Camlmix.printer 
# 5 "phd.html.mlx";;
                             "\n<html>\n<head>\n";;

let () =
  Camlmix.line := 8;
  Camlmix.char := 3;
  Camlmix.source := "phd.html.mlx"
;;

# 8 "phd.html.mlx";;
   title "Martin Jambon: Doctoral Thesis" 
let () =
  Camlmix.line := 8;
  Camlmix.char := 45;
  Camlmix.source := "phd.html.mlx"
;;

let () = !Camlmix.printer 
# 8 "phd.html.mlx";;
                                             "\n";;

let () =
  Camlmix.line := 9;
  Camlmix.char := 3;
  Camlmix.source := "phd.html.mlx"
;;

# 9 "phd.html.mlx";;
   include_file "charset" 
let () =
  Camlmix.line := 9;
  Camlmix.char := 29;
  Camlmix.source := "phd.html.mlx"
;;

let () = !Camlmix.printer 
# 9 "phd.html.mlx";;
                             "\n";;

let () =
  Camlmix.line := 10;
  Camlmix.char := 3;
  Camlmix.source := "phd.html.mlx"
;;

# 10 "phd.html.mlx";;
   include_file "stylesheet" 
let () =
  Camlmix.line := 10;
  Camlmix.char := 32;
  Camlmix.source := "phd.html.mlx"
;;

let () = !Camlmix.printer 
# 10 "phd.html.mlx";;
                                "\n";;

let () =
  Camlmix.line := 11;
  Camlmix.char := 3;
  Camlmix.source := "phd.html.mlx"
;;

# 11 "phd.html.mlx";;
   include_file "icon" 
let () =
  Camlmix.line := 11;
  Camlmix.char := 26;
  Camlmix.source := "phd.html.mlx"
;;

let () = !Camlmix.printer 
# 11 "phd.html.mlx";;
                          "\n";;

let () =
  Camlmix.line := 12;
  Camlmix.char := 3;
  Camlmix.source := "phd.html.mlx"
;;

# 12 "phd.html.mlx";;
   include_file "commonlinks" 
let () =
  Camlmix.line := 12;
  Camlmix.char := 33;
  Camlmix.source := "phd.html.mlx"
;;

let () = !Camlmix.printer 
# 12 "phd.html.mlx";;
                                 "\n</head>\n<body>\n";;

let () =
  Camlmix.line := 15;
  Camlmix.char := 3;
  Camlmix.source := "phd.html.mlx"
;;

# 15 "phd.html.mlx";;
   include_file "hitcounter" 
let () =
  Camlmix.line := 15;
  Camlmix.char := 32;
  Camlmix.source := "phd.html.mlx"
;;

let () = !Camlmix.printer 
# 15 "phd.html.mlx";;
                                "\n";;

let () =
  Camlmix.line := 16;
  Camlmix.char := 3;
  Camlmix.source := "phd.html.mlx"
;;

# 16 "phd.html.mlx";;
   include_file "start_big_table" 
let () =
  Camlmix.line := 16;
  Camlmix.char := 37;
  Camlmix.source := "phd.html.mlx"
;;

let () = !Camlmix.printer 
# 16 "phd.html.mlx";;
                                     "\n";;

let () =
  Camlmix.line := 17;
  Camlmix.char := 3;
  Camlmix.source := "phd.html.mlx"
;;

# 17 "phd.html.mlx";;
   top_menu bioinformatics 
let () =
  Camlmix.line := 17;
  Camlmix.char := 30;
  Camlmix.source := "phd.html.mlx"
;;

let () = !Camlmix.printer 
# 17 "phd.html.mlx";;
                              "\n\n<div class=longtitle>\nA bioinformatic system\nfor searching functional similarities\nin 3D structures\nof proteins\n</div>\n\n<div class=longtitle>\n<i>\nUn syst\195\168me bioinformatique\nde recherche de similitudes fonctionnelles\ndans les structures 3D\nde prot\195\169ines\n</i>\n</div>\n\n<p style=\"text-align:center\">\nMartin Jambon's doctoral thesis<br>\n20 June 2003<br>\nTranslated from French into English\n\n";;

let () =
  Camlmix.line := 40;
  Camlmix.char := 3;
  Camlmix.source := "phd.html.mlx"
;;

# 40 "phd.html.mlx";;
  
open Printf
let get s = 
  printf
    "<td style=\"text-align:center\"><a href=\"phd/sumo-%s\">GET</a></td>" s
let p = print_string
let tdl = "<td style=\"text-align:left\">"
let tdc = 
  "<td style=\"text-align:center; padding-left:1em; padding-right:1em\">"

let () =
  Camlmix.line := 49;
  Camlmix.char := 3;
  Camlmix.source := "phd.html.mlx"
;;

let () = !Camlmix.printer 
# 49 "phd.html.mlx";;
   "\n\n<p>\n<table style=\"padding:1.5em\">\n<tr><td></td><th colspan=\"2\">PostScript</th><th colspan=\"2\">PDF</th></tr>\n\n<tr>\n<td></td>\n";;

let () =
  Camlmix.line := 57;
  Camlmix.char := 3;
  Camlmix.source := "phd.html.mlx"
;;

# 57 "phd.html.mlx";;
   p tdc 
let () =
  Camlmix.line := 57;
  Camlmix.char := 12;
  Camlmix.source := "phd.html.mlx"
;;

let () = !Camlmix.printer 
# 57 "phd.html.mlx";;
            "Two sides</td>";;

let () =
  Camlmix.line := 57;
  Camlmix.char := 28;
  Camlmix.source := "phd.html.mlx"
;;

# 57 "phd.html.mlx";;
                            p tdc 
let () =
  Camlmix.line := 57;
  Camlmix.char := 37;
  Camlmix.source := "phd.html.mlx"
;;

let () = !Camlmix.printer 
# 57 "phd.html.mlx";;
                                     "One side</td>\n";;

let () =
  Camlmix.line := 58;
  Camlmix.char := 3;
  Camlmix.source := "phd.html.mlx"
;;

# 58 "phd.html.mlx";;
   p tdc 
let () =
  Camlmix.line := 58;
  Camlmix.char := 12;
  Camlmix.source := "phd.html.mlx"
;;

let () = !Camlmix.printer 
# 58 "phd.html.mlx";;
            "Two sides</td>";;

let () =
  Camlmix.line := 58;
  Camlmix.char := 28;
  Camlmix.source := "phd.html.mlx"
;;

# 58 "phd.html.mlx";;
                            p tdc 
let () =
  Camlmix.line := 58;
  Camlmix.char := 37;
  Camlmix.source := "phd.html.mlx"
;;

let () = !Camlmix.printer 
# 58 "phd.html.mlx";;
                                     "One side</td>\n</tr>\n\n<tr>\n";;

let () =
  Camlmix.line := 62;
  Camlmix.char := 3;
  Camlmix.source := "phd.html.mlx"
;;

# 62 "phd.html.mlx";;
   p tdl 
let () =
  Camlmix.line := 62;
  Camlmix.char := 12;
  Camlmix.source := "phd.html.mlx"
;;

let () = !Camlmix.printer 
# 62 "phd.html.mlx";;
            "French, A4 paper</td>\n";;

let () =
  Camlmix.line := 63;
  Camlmix.char := 3;
  Camlmix.source := "phd.html.mlx"
;;

# 63 "phd.html.mlx";;
   get "french.ps.gz" 
let () =
  Camlmix.line := 63;
  Camlmix.char := 25;
  Camlmix.source := "phd.html.mlx"
;;

let () = !Camlmix.printer 
# 63 "phd.html.mlx";;
                         "\n<td></td>\n";;

let () =
  Camlmix.line := 65;
  Camlmix.char := 3;
  Camlmix.source := "phd.html.mlx"
;;

# 65 "phd.html.mlx";;
   get "french.pdf" 
let () =
  Camlmix.line := 65;
  Camlmix.char := 23;
  Camlmix.source := "phd.html.mlx"
;;

let () = !Camlmix.printer 
# 65 "phd.html.mlx";;
                       "\n<td></td>\n</tr>\n\n<tr>\n";;

let () =
  Camlmix.line := 70;
  Camlmix.char := 3;
  Camlmix.source := "phd.html.mlx"
;;

# 70 "phd.html.mlx";;
   p tdl 
let () =
  Camlmix.line := 70;
  Camlmix.char := 12;
  Camlmix.source := "phd.html.mlx"
;;

let () = !Camlmix.printer 
# 70 "phd.html.mlx";;
            "English, A4 paper</td>\n";;

let () =
  Camlmix.line := 71;
  Camlmix.char := 3;
  Camlmix.source := "phd.html.mlx"
;;

# 71 "phd.html.mlx";;
   get "a4.ps.gz" 
let () =
  Camlmix.line := 71;
  Camlmix.char := 21;
  Camlmix.source := "phd.html.mlx"
;;

let () = !Camlmix.printer 
# 71 "phd.html.mlx";;
                     "\n";;

let () =
  Camlmix.line := 72;
  Camlmix.char := 3;
  Camlmix.source := "phd.html.mlx"
;;

# 72 "phd.html.mlx";;
   get "a4-oneside.ps.gz" 
let () =
  Camlmix.line := 72;
  Camlmix.char := 29;
  Camlmix.source := "phd.html.mlx"
;;

let () = !Camlmix.printer 
# 72 "phd.html.mlx";;
                             "\n";;

let () =
  Camlmix.line := 73;
  Camlmix.char := 3;
  Camlmix.source := "phd.html.mlx"
;;

# 73 "phd.html.mlx";;
   get "a4.pdf" 
let () =
  Camlmix.line := 73;
  Camlmix.char := 19;
  Camlmix.source := "phd.html.mlx"
;;

let () = !Camlmix.printer 
# 73 "phd.html.mlx";;
                   "\n";;

let () =
  Camlmix.line := 74;
  Camlmix.char := 3;
  Camlmix.source := "phd.html.mlx"
;;

# 74 "phd.html.mlx";;
   get "a4-oneside.pdf" 
let () =
  Camlmix.line := 74;
  Camlmix.char := 27;
  Camlmix.source := "phd.html.mlx"
;;

let () = !Camlmix.printer 
# 74 "phd.html.mlx";;
                           "\n</tr>\n\n<tr>\n";;

let () =
  Camlmix.line := 78;
  Camlmix.char := 3;
  Camlmix.source := "phd.html.mlx"
;;

# 78 "phd.html.mlx";;
   p tdl 
let () =
  Camlmix.line := 78;
  Camlmix.char := 12;
  Camlmix.source := "phd.html.mlx"
;;

let () = !Camlmix.printer 
# 78 "phd.html.mlx";;
            "English, letter paper</td>\n";;

let () =
  Camlmix.line := 79;
  Camlmix.char := 3;
  Camlmix.source := "phd.html.mlx"
;;

# 79 "phd.html.mlx";;
   get "letter.ps.gz" 
let () =
  Camlmix.line := 79;
  Camlmix.char := 25;
  Camlmix.source := "phd.html.mlx"
;;

let () = !Camlmix.printer 
# 79 "phd.html.mlx";;
                         "\n";;

let () =
  Camlmix.line := 80;
  Camlmix.char := 3;
  Camlmix.source := "phd.html.mlx"
;;

# 80 "phd.html.mlx";;
   get "letter-oneside.ps.gz" 
let () =
  Camlmix.line := 80;
  Camlmix.char := 33;
  Camlmix.source := "phd.html.mlx"
;;

let () = !Camlmix.printer 
# 80 "phd.html.mlx";;
                                 "\n";;

let () =
  Camlmix.line := 81;
  Camlmix.char := 3;
  Camlmix.source := "phd.html.mlx"
;;

# 81 "phd.html.mlx";;
   get "letter.pdf" 
let () =
  Camlmix.line := 81;
  Camlmix.char := 23;
  Camlmix.source := "phd.html.mlx"
;;

let () = !Camlmix.printer 
# 81 "phd.html.mlx";;
                       "\n";;

let () =
  Camlmix.line := 82;
  Camlmix.char := 3;
  Camlmix.source := "phd.html.mlx"
;;

# 82 "phd.html.mlx";;
   get "letter-oneside.pdf" 
let () =
  Camlmix.line := 82;
  Camlmix.char := 31;
  Camlmix.source := "phd.html.mlx"
;;

let () = !Camlmix.printer 
# 82 "phd.html.mlx";;
                               "\n</tr>\n</table>\n\n<h2>Abstract</h2>\n\n<p>\nSuMo is a bioinformatic system for comparing 3D&nbsp;structures of\nproteins. This approach was designed to help along the exploration of\nstructural data by biologists and the formulation of accurate\nhypotheses concerning the biological implication of proteins.\n\n<p>\nAs opposed to existing approaches in this field, SuMo does not solve a\nformal problem that would derive from a model for biological function.\nThis allows constant development of the heuristics, by getting closer\nto intuitive concepts for biological function rather than stick to\na mathematical model with poor relevance.\n\n<p>\nThe heuristics that has been developed is based on a representation of\nmacromolecules using chemical groups that are associated with\nheterogeneous geometrical properties and grouped into triplets.\n\n<p>\nSuMo can be used directly from the web server\n";;

let () =
  Camlmix.line := 108;
  Camlmix.char := 3;
  Camlmix.source := "phd.html.mlx"
;;

# 108 "phd.html.mlx";;
   download "http://sumo-pbil.ibcp.fr" 
let () =
  Camlmix.line := 108;
  Camlmix.char := 42;
  Camlmix.source := "phd.html.mlx"
;;

let () = !Camlmix.printer 
# 108 "phd.html.mlx";;
                                          ". Screening SuMo's database of ligand\nbinding sites allows in a convenient way to discover potential\ntherapeutic targets. \n\n\n<h2>R\195\169sum\195\169</h2>\n\n<p>\nSuMo est un syst\195\168me bioinformatique de comparaison de structures&nbsp;3D\nde prot\195\169ines. Le but de cette approche est de faciliter l'exploration\ndes donn\195\169es structurales par les biologistes et la formulation\nd'hypoth\195\168ses fines sur l'implication biologique des prot\195\169ines.\n\n<p>\nContrairement aux approches existantes dans ce domaine, SuMo ne\ns'attache pas \195\160 r\195\169soudre un probl\195\168me formel d\195\169rivant d'une\nmod\195\169lisation de la notion de fonction biologique. Ceci autorise \ndes efforts constants de d\195\169veloppement \nde l'heuristique mise en oeuvre, permettant de\nse rapprocher des notions intuitives de fonction biologique plut\195\180t que\nde coller \195\160 un mod\195\168le math\195\169matique peu r\195\169aliste.\n\n<p>\nL'heuristique d\195\169velopp\195\169e est bas\195\169e sur la repr\195\169sentation des\nmacromol\195\169cules par des groupements chimiques aux\npropri\195\169t\195\169s g\195\169om\195\169triques h\195\169t\195\169rog\195\168nes et associ\195\169s en triplets.\n\n<p>\nL'utilisation de SuMo s'effectue directement \195\160 partir du serveur web\n";;

let () =
  Camlmix.line := 137;
  Camlmix.char := 3;
  Camlmix.source := "phd.html.mlx"
;;

# 137 "phd.html.mlx";;
   download "http://sumo-pbil.ibcp.fr" 
let () =
  Camlmix.line := 137;
  Camlmix.char := 42;
  Camlmix.source := "phd.html.mlx"
;;

let () = !Camlmix.printer 
# 137 "phd.html.mlx";;
                                          ". \nLe criblage de la banque de sites de\nfixation de ligands g\195\169n\195\169r\195\169e par et pour SuMo permet de rep\195\169rer de fa\195\167on\nconviviale de potentielles cibles th\195\169rapeutiques.\n\n\n";;

let () =
  Camlmix.line := 143;
  Camlmix.char := 3;
  Camlmix.source := "phd.html.mlx"
;;

# 143 "phd.html.mlx";;
   camlmix_footer () 
let () =
  Camlmix.line := 143;
  Camlmix.char := 24;
  Camlmix.source := "phd.html.mlx"
;;

let () = !Camlmix.printer 
# 143 "phd.html.mlx";;
                        "\n";;

let () =
  Camlmix.line := 144;
  Camlmix.char := 3;
  Camlmix.source := "phd.html.mlx"
;;

# 144 "phd.html.mlx";;
   include_file "end_big_table" 
let () =
  Camlmix.line := 144;
  Camlmix.char := 35;
  Camlmix.source := "phd.html.mlx"
;;

let () = !Camlmix.printer 
# 144 "phd.html.mlx";;
                                   "\n</body>\n</html>\n";;

