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

# 1 "search-protein-3D-sites.html.mlx";;

let () =
  Camlmix.line := 1;
  Camlmix.char := 1;
  Camlmix.source := "search-protein-3D-sites.html.mlx"
;;

let () = !Camlmix.printer 
# 1 "search-protein-3D-sites.html.mlx";;
 "";;

let () =
  Camlmix.line := 1;
  Camlmix.char := 3;
  Camlmix.source := "search-protein-3D-sites.html.mlx"
;;

# 1 "search-protein-3D-sites.html.mlx";;
  
#load "utils.cmo";;
open Utils

let () =
  Camlmix.line := 4;
  Camlmix.char := 3;
  Camlmix.source := "search-protein-3D-sites.html.mlx"
;;

let () = !Camlmix.printer 
# 4 "search-protein-3D-sites.html.mlx";;
   "\n";;

let () =
  Camlmix.line := 5;
  Camlmix.char := 3;
  Camlmix.source := "search-protein-3D-sites.html.mlx"
;;

# 5 "search-protein-3D-sites.html.mlx";;
   include_file "doctype" 
let () =
  Camlmix.line := 5;
  Camlmix.char := 29;
  Camlmix.source := "search-protein-3D-sites.html.mlx"
;;

let () = !Camlmix.printer 
# 5 "search-protein-3D-sites.html.mlx";;
                             "\n<html>\n<head>\n";;

let () =
  Camlmix.line := 8;
  Camlmix.char := 3;
  Camlmix.source := "search-protein-3D-sites.html.mlx"
;;

# 8 "search-protein-3D-sites.html.mlx";;
   title "Comparison-based approaches to the automated prediction of 
interesting 3D sites in a protein structure" 
let () =
  Camlmix.line := 9;
  Camlmix.char := 48;
  Camlmix.source := "search-protein-3D-sites.html.mlx"
;;

let () = !Camlmix.printer 
# 9 "search-protein-3D-sites.html.mlx";;
                                                "\n";;

let () =
  Camlmix.line := 10;
  Camlmix.char := 3;
  Camlmix.source := "search-protein-3D-sites.html.mlx"
;;

# 10 "search-protein-3D-sites.html.mlx";;
   include_file "charset" 
let () =
  Camlmix.line := 10;
  Camlmix.char := 29;
  Camlmix.source := "search-protein-3D-sites.html.mlx"
;;

let () = !Camlmix.printer 
# 10 "search-protein-3D-sites.html.mlx";;
                             "\n";;

let () =
  Camlmix.line := 11;
  Camlmix.char := 3;
  Camlmix.source := "search-protein-3D-sites.html.mlx"
;;

# 11 "search-protein-3D-sites.html.mlx";;
   include_file "stylesheet" 
let () =
  Camlmix.line := 11;
  Camlmix.char := 32;
  Camlmix.source := "search-protein-3D-sites.html.mlx"
;;

let () = !Camlmix.printer 
# 11 "search-protein-3D-sites.html.mlx";;
                                "\n";;

let () =
  Camlmix.line := 12;
  Camlmix.char := 3;
  Camlmix.source := "search-protein-3D-sites.html.mlx"
;;

# 12 "search-protein-3D-sites.html.mlx";;
   include_file "icon" 
let () =
  Camlmix.line := 12;
  Camlmix.char := 26;
  Camlmix.source := "search-protein-3D-sites.html.mlx"
;;

let () = !Camlmix.printer 
# 12 "search-protein-3D-sites.html.mlx";;
                          "\n";;

let () =
  Camlmix.line := 13;
  Camlmix.char := 3;
  Camlmix.source := "search-protein-3D-sites.html.mlx"
;;

# 13 "search-protein-3D-sites.html.mlx";;
   include_file "commonlinks" 
let () =
  Camlmix.line := 13;
  Camlmix.char := 33;
  Camlmix.source := "search-protein-3D-sites.html.mlx"
;;

let () = !Camlmix.printer 
# 13 "search-protein-3D-sites.html.mlx";;
                                 "\n</head>\n<body>\n";;

let () =
  Camlmix.line := 16;
  Camlmix.char := 3;
  Camlmix.source := "search-protein-3D-sites.html.mlx"
;;

# 16 "search-protein-3D-sites.html.mlx";;
   include_file "hitcounter" 
let () =
  Camlmix.line := 16;
  Camlmix.char := 32;
  Camlmix.source := "search-protein-3D-sites.html.mlx"
;;

let () = !Camlmix.printer 
# 16 "search-protein-3D-sites.html.mlx";;
                                "\n";;

let () =
  Camlmix.line := 17;
  Camlmix.char := 3;
  Camlmix.source := "search-protein-3D-sites.html.mlx"
;;

# 17 "search-protein-3D-sites.html.mlx";;
   include_file "start_big_table" 
let () =
  Camlmix.line := 17;
  Camlmix.char := 37;
  Camlmix.source := "search-protein-3D-sites.html.mlx"
;;

let () = !Camlmix.printer 
# 17 "search-protein-3D-sites.html.mlx";;
                                     "\n";;

let () =
  Camlmix.line := 18;
  Camlmix.char := 3;
  Camlmix.source := "search-protein-3D-sites.html.mlx"
;;

# 18 "search-protein-3D-sites.html.mlx";;
   top_menu bioinformatics 
let () =
  Camlmix.line := 18;
  Camlmix.char := 30;
  Camlmix.source := "search-protein-3D-sites.html.mlx"
;;

let () = !Camlmix.printer 
# 18 "search-protein-3D-sites.html.mlx";;
                              "\n\n\n<h1>Comparison-based approaches to the automated prediction of \ninteresting 3D sites in a protein structure<br>\n<span class=title2>A side-by-side comparison of available \ntechniques and tools</span></h1>\n\n\n<p>\n<span style=\"color:#a00; font-size:120%\">[October 27, 2005] \nThis page was transferred to \n<a href=\"http://wikiomics.org/wiki/Searching_for_3D_functional_sites_in_a_protein_structure\">wikiomics.org</a>, the bioinformatics wiki\nand is evolving there.\n<a href=\"http://wikiomics.org/wiki/Searching_for_3D_functional_sites_in_a_protein_structure\"><img \n   src=\"http://wikiomics.org/skins/common/images/wikiomics-ob-135x72.png\"\n   alt=\"Wikiomics - Open Bioinformatics\"\n   title=\"Wikiomics - Open Bioinformatics\"\n   style=\"vertical-align:middle\"></a></span>\n\n<p>\nThe quality of this document depends on your feedback.\nPlease notify me of any erroneous or missing information \n(email: ";;

let () =
  Camlmix.line := 41;
  Camlmix.char := 11;
  Camlmix.source := "search-protein-3D-sites.html.mlx"
;;

# 41 "search-protein-3D-sites.html.mlx";;
           author_email () 
let () =
  Camlmix.line := 41;
  Camlmix.char := 30;
  Camlmix.source := "search-protein-3D-sites.html.mlx"
;;

let () = !Camlmix.printer 
# 41 "search-protein-3D-sites.html.mlx";;
                              ").\n\n<p>\nFor now, only methods which can be used directly on the web are listed, \nsorry.\n\n<p>\nAlso, this document is exclusively restricted to the different ways of\nfinding similarities between a given protein structure and some \nexisting or averaged 3D sites. \nIt excludes methods which are based only on the \namino acid sequence (such as Prosite search) \nor which do not return correspondences between \n3D sites.\n\n<p>\nThis table is big. To zoom-out or zoom-in, use the wheel of your mouse while \npressing the Ctrl key of your keyboard.\n\n<p>\n";;

let () =
  Camlmix.line := 61;
  Camlmix.char := 3;
  Camlmix.source := "search-protein-3D-sites.html.mlx"
;;

# 61 "search-protein-3D-sites.html.mlx";;
  
open Printf

type url = string

type entry =
    { name : string;
      elements : string;
      shape : string;
      partial_match : string;
      rmsd_based : string;
      sites_scan : string;
      prot_scan : string;
      prot_prot : string;
      web_server : url option;
      license : string;
      references : (string * url) list;
      notes : string }

let line
  ~name 
  ?(elements = "?")
  ?(shape = "?")
  ?(partial_match = "?")
  ?(rmsd_based = "?") 
  ?(sites_scan = "?")
  ?(prot_scan = "?")
  ?(prot_prot = "?")
  ?web_server
  ?(license = "?")
  ?(references = [])
  ?(notes = "")
  () =

  { name = name;
    elements = elements;
    shape = shape;
    partial_match = partial_match;
    rmsd_based = rmsd_based;
    sites_scan = sites_scan;
    prot_scan = prot_scan;
    prot_prot = prot_prot;
    web_server = web_server;
    license = license;
    references = references;
    notes = notes }

let list x =
  [ x.name; x.elements; x.shape; x.partial_match;
    x.rmsd_based; 
    (match x.web_server with
	 None -> "none"
       | Some url -> sprintf "<a href=\"%s\">%s</a>" url url);
    x.sites_scan; x.prot_scan;
    x.prot_prot;    
    x.license; 
    (String.concat ", "
       (List.map 
	  (fun (name, url) ->
	     sprintf "<a href=\"%s\">%s</a>" url name)
	  x.references));
    x.notes ]

let print_row ?(th = false) l =
  let tag = if th then "th" else "td" in
  printf "<tr>";
  List.iter (fun s -> printf "<%s>%s</%s>" tag s tag) l;
  printf "</tr>\n"

let print_table l =
  let columns = 
    [ "Name (alphabetic order)";
      "Basic elements in the representation of a protein";
      "Molecular shape is used";
      "Sites can match partially";
      "Rigid superposition of sites";
      "Web server";
      "Scan protein vs. functional sites online";
      "Scan site vs. proteins online";
      "Protein vs. protein comparison online";
      "Conditions of use";
      "Major references";
      "Notes" ] in
  printf "<table class=real-table style=\"font-size:50%%\">\n";
  print_row ~th:true columns;
  List.iter (fun x -> print_row (list x)) l;
  printf "</table>\n"

let pubmed ?descr id =
  let name = string_of_int id in
  ((match descr with
	None -> name
      | Some s -> s),
   sprintf
     "http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=pubmed&dopt=Abstract&list_uids=%s"
     name)

let dvd ?(descr = "(reprint)") id =
  (descr,
   sprintf
     "http://xray.bmc.uu.se/cgi-bin/gerard/reprint_mailer.pl?pref=%i"
     id)

let unsorted_table =
  [ line 
      ~name:"PINTS"
      ~elements:"selected atoms from lateral chains"
      ~shape:"no"
      ~partial_match:"yes"
      ~rmsd_based:"yes (using RMSD)"
      ~sites_scan:"yes"
      ~prot_scan:"yes"
      ~prot_prot:"yes"
      ~web_server:"http://www.russell.embl.de/pints/"
      ~license:"web version freely accessible to everyone"
      ~references:[ pubmed ~descr:"method" 9642096; 
		    pubmed ~descr:"assessment" 12595245 ]
      ();

    line
      ~name:"SuMo"
      ~elements:"selected triplets of functional groups of heterogeneous \
                 geometric types, \
                 with local molecular shape around each triplet \
                 given by surrounding non-H atoms"
      ~shape:"yes"
      ~partial_match:"yes"
      ~rmsd_based:"no"
      ~sites_scan:"yes"
      ~prot_scan:"yes"
      ~prot_prot:"yes (expert mode only)"
      ~web_server:"http://sumo-pbil.ibcp.fr/"
      ~license:"web version freely accessible to non-profit users, \
                custom installation and services available on demand \
                from <a href=\"http://www.medit.fr\">MEDIT</a>"
      ~references:[ pubmed ~descr:"method (about 60% obsolete)" 12833538;
		    "detailed method (95% up-to-date)", 
		    "http://martin.jambon.free.fr/phd.html";
		    "patent WO03104388", "http://v3.espacenet.com/textdoc?DB=EPODOC&IDX=WO03104388&F=0&QPN=WO03104388" ]
      ();

    line
      ~name:"PDBSiteScan"
      ~elements:"amino acids represented by the \
                 C, C-alpha and N atoms of the main chain"
      ~shape:"no"
      ~partial_match:"yes"
      ~rmsd_based:"yes, using MDM (maximum distance mismatch)"
      ~sites_scan:"yes"
      ~prot_scan:"no"
      ~prot_prot:"no"
      ~web_server:"http://wwwmgs.bionet.nsc.ru/mgs/gnw/pdbsitescan/"
      ~license:"free access"
      ~references:[ pubmed ~descr:"PDBSiteScan" 15215447;
		    pubmed ~descr:"PDBSite" 15608173 ]
      ();

    line
      ~name:"SiteEngine"
      ~elements:"surface exposed functional groups that describe \
                 the physico-chemical properties of amino acids"
      ~shape:"yes"
      ~partial_match:"yes"
      ~rmsd_based:"yes (using RMSD)"
      ~sites_scan:"no"
      ~prot_scan:"no"
      ~prot_prot:"yes (protein vs. site)"
      ~web_server:"http://bioinfo3d.cs.tau.ac.il/SiteEngine/"
      ~license:"web server open to anyone, downloadable software under the terms of a specific <a href=\"http://bioinfo3d.cs.tau.ac.il/cgi-bin/pdownload/progdownload.pl/?pname=SiteEngine\">license</a>"
      ~references:[ pubmed ~descr:"method" 15147845 ]
      ();

    line
      ~name:"pvSOAR"
      ~elements:"centroids of amino acids forming pockets \
                 and the pseudosequence they form \
                 (sequence without non-pocket residues)"
      ~shape:"yes"
      ~partial_match:"yes"
      ~rmsd_based:"yes"
      ~sites_scan:"yes (pockets)"
      ~prot_scan:"pocket vs. database of pockets"
      ~prot_prot:"no"
      ~web_server:"http://pvsoar.bioengr.uic.edu/"
      ~license:"free access"
      ~references:[ pubmed ~descr:"method and validation" 12948498;
		    pubmed ~descr:"web server" 15215448 ]
      ();

    line
      ~name:"PROCAT/TESS/Jess/Catalytic Site Atlas"
      ~elements:"atoms"
      ~shape:"no"
      ~partial_match:"no"
      ~rmsd_based:"yes (using RMSD)"
      ~sites_scan:"yes (catalytic sites)"
      ~prot_scan:"no"
      ~prot_prot:"no"
      ~web_server:"http://www.ebi.ac.uk/thornton-srv/databases/CSA/"
      ~license:"free access"
      ~references:[ pubmed ~descr:"original algorithm" 8762132;
		    pubmed ~descr:"faster algorithm (TESS)" 9385633;
		    pubmed ~descr:"Jess algorithm, successor of TESS" 12967960;
		    pubmed ~descr:"CSA" 14681376; 
		    pubmed ~descr:"CSA" 12421562; 
		    pubmed ~descr:"CSA" 15755451 ]
      ~notes:"Catalytic Site Atlas (CSA) is the successor of the PROCAT \
              webserver and database of templates of catalytic sites"
      ();

    line
      ~name:"SPASM/RIGOR"
      ~elements:"C-alpha or centroid of lateral chains"
      ~shape:"no"
      ~partial_match:"yes"
      ~rmsd_based:"yes (using RMSD)"
      ~sites_scan:"yes (RIGOR)"
      ~prot_scan:"yes (SPASM)"
      ~prot_prot:"no"
      ~web_server:"http://portray.bmc.uu.se/cgi-bin/spasm/scripts/spasm.pl"
      ~license:"free access"
      ~references:[ pubmed ~descr:"method (SPASM and RIGOR)" 9917419;
		    dvd 64 ]
      ();

    line
      ~name:"PdbFun"
      ~elements:"centroid of amino acids"
      ~shape:"no"
      ~partial_match:"yes"
      ~rmsd_based:"yes"
      ~sites_scan:"yes"
      ~prot_scan:"yes"
      ~prot_prot:"yes"
      ~web_server:"http://pdbfun.uniroma2.it/"
      ~license:"free access"
      ~references:[ pubmed ~descr:"features and user interface (no details \
                                   concerning the comparison algorithm \
                                   in this paper)"
		      15980442; ]
      ();
  ]

let table = 
  List.sort 
    (fun x y -> compare (String.lowercase x.name) (String.lowercase y.name))
    unsorted_table

let _ =
  print_table table

let () =
  Camlmix.line := 311;
  Camlmix.char := 3;
  Camlmix.source := "search-protein-3D-sites.html.mlx"
;;

let () = !Camlmix.printer 
# 311 "search-protein-3D-sites.html.mlx";;
   "\n\n";;

let () =
  Camlmix.line := 313;
  Camlmix.char := 3;
  Camlmix.source := "search-protein-3D-sites.html.mlx"
;;

# 313 "search-protein-3D-sites.html.mlx";;
   camlmix_footer ~years:"2005" () 
let () =
  Camlmix.line := 313;
  Camlmix.char := 38;
  Camlmix.source := "search-protein-3D-sites.html.mlx"
;;

let () = !Camlmix.printer 
# 313 "search-protein-3D-sites.html.mlx";;
                                      "\n";;

let () =
  Camlmix.line := 314;
  Camlmix.char := 3;
  Camlmix.source := "search-protein-3D-sites.html.mlx"
;;

# 314 "search-protein-3D-sites.html.mlx";;
   include_file "end_big_table" 
let () =
  Camlmix.line := 314;
  Camlmix.char := 35;
  Camlmix.source := "search-protein-3D-sites.html.mlx"
;;

let () = !Camlmix.printer 
# 314 "search-protein-3D-sites.html.mlx";;
                                   "\n</body>\n</html>\n";;

