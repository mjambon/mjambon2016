##
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
      references : (string * url) list }

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
    references = references }

let list x =
  [ x.name; x.elements; x.shape; x.partial_match;
    x.rmsd_based; x.sites_scan; x.prot_scan;
    x.prot_prot; 
    (match x.web_server with
	 None -> "no"
       | Some url -> sprintf "<a href=\"%s\">yes</a>" url);
    x.license; 
    (String.concat ", "
       (List.map 
	  (fun (name, url) ->
	     sprintf "<a href=\"%s\">%s</a>" url name)
	  x.references)) ]

let print_row ?(th = false) l =
  let tag = if th then "th" else "td" in
  printf "<tr>";
  List.iter (fun s -> printf "<%s>%s</%s>" tag s tag) l;
  printf "</tr>\n"

let print_table l =
  let columns = 
    [ "Name";
      "Basic elements in the representation of a protein";
      "Molecular shape is used";
      "Sites can match partially";
      "Global RMSD-based scoring";
      "Scan protein vs. functional sites";
      "Scan site vs. proteins";
      "Protein vs. protein comparison";
      "Web server";
      "Conditions of use";
      "References" ] in
  printf "<table class=real-table>\n";
  print_row ~th:true columns;
  List.iter (fun x -> print_row (list x)) l;
  printf "</table>\n"


let unsorted_table =
  [ line 
      ~name:"PINTS"
      ~elements:"selected atoms from lateral chains"
      ~shape:"no"
      ~partial_match:"yes"
      ~rmsd_based:"yes"
      ~sites_scan:"yes"
      ~prot_prot:"yes"
      ~web_server:"http://www.russell.embl.de/pints/"
      ~license:"web version freely accessible to everyone"
      ();

    line
      ~name:"SuMo"
      ~elements:"triplets of chemical groups"
      ~shape:"yes"
      ~partial_match:"yes"
      ~rmsd_based:"no"
      ~sites_scan:"yes"
      ~prot_prot:"yes (expert mode only)"
      ~web_server:"http://sumo-pbil.ibcp.fr/"
      ~license:"web version freely accessible to non-profit users, \
                custom installation and services available on demand"
      ();
  ]

let table = 
  List.sort 
    (fun x y -> compare (String.lowercase x.name) (String.lowercase y.name))
    unsorted_table
