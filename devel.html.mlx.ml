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

# 1 "devel.html.mlx";;

let () =
  Camlmix.line := 1;
  Camlmix.char := 1;
  Camlmix.source := "devel.html.mlx"
;;

let () = !Camlmix.printer 
# 1 "devel.html.mlx";;
 "";;

let () =
  Camlmix.line := 1;
  Camlmix.char := 3;
  Camlmix.source := "devel.html.mlx"
;;

# 1 "devel.html.mlx";;
  
#use "topfind";;
#require "caml2html";;
#require "mikmatch_pcre";;
#load "unmix.cmo";;
#load "print_ocaml.cmo";;
#load "utils.cmo";;
open Print_ocaml
open Utils

let () =
  Camlmix.line := 10;
  Camlmix.char := 3;
  Camlmix.source := "devel.html.mlx"
;;

let () = !Camlmix.printer 
# 10 "devel.html.mlx";;
   "\n";;

let () =
  Camlmix.line := 11;
  Camlmix.char := 3;
  Camlmix.source := "devel.html.mlx"
;;

# 11 "devel.html.mlx";;
   include_file "doctype" 
let () =
  Camlmix.line := 11;
  Camlmix.char := 29;
  Camlmix.source := "devel.html.mlx"
;;

let () = !Camlmix.printer 
# 11 "devel.html.mlx";;
                             "\n<html>\n<head>\n";;

let () =
  Camlmix.line := 14;
  Camlmix.char := 3;
  Camlmix.source := "devel.html.mlx"
;;

# 14 "devel.html.mlx";;
   title "Software by Martin Jambon" 
let () =
  Camlmix.line := 14;
  Camlmix.char := 40;
  Camlmix.source := "devel.html.mlx"
;;

let () = !Camlmix.printer 
# 14 "devel.html.mlx";;
                                        "\n";;

let () =
  Camlmix.line := 15;
  Camlmix.char := 3;
  Camlmix.source := "devel.html.mlx"
;;

# 15 "devel.html.mlx";;
   include_file "charset" 
let () =
  Camlmix.line := 15;
  Camlmix.char := 29;
  Camlmix.source := "devel.html.mlx"
;;

let () = !Camlmix.printer 
# 15 "devel.html.mlx";;
                             "\n";;

let () =
  Camlmix.line := 16;
  Camlmix.char := 3;
  Camlmix.source := "devel.html.mlx"
;;

# 16 "devel.html.mlx";;
   include_file "stylesheet" 
let () =
  Camlmix.line := 16;
  Camlmix.char := 32;
  Camlmix.source := "devel.html.mlx"
;;

let () = !Camlmix.printer 
# 16 "devel.html.mlx";;
                                "\n";;

let () =
  Camlmix.line := 17;
  Camlmix.char := 3;
  Camlmix.source := "devel.html.mlx"
;;

# 17 "devel.html.mlx";;
   include_file "ocaml-stylesheet" 
let () =
  Camlmix.line := 17;
  Camlmix.char := 38;
  Camlmix.source := "devel.html.mlx"
;;

let () = !Camlmix.printer 
# 17 "devel.html.mlx";;
                                      "\n";;

let () =
  Camlmix.line := 18;
  Camlmix.char := 3;
  Camlmix.source := "devel.html.mlx"
;;

# 18 "devel.html.mlx";;
   include_file "icon" 
let () =
  Camlmix.line := 18;
  Camlmix.char := 26;
  Camlmix.source := "devel.html.mlx"
;;

let () = !Camlmix.printer 
# 18 "devel.html.mlx";;
                          "\n";;

let () =
  Camlmix.line := 19;
  Camlmix.char := 3;
  Camlmix.source := "devel.html.mlx"
;;

# 19 "devel.html.mlx";;
   include_file "commonlinks" 
let () =
  Camlmix.line := 19;
  Camlmix.char := 33;
  Camlmix.source := "devel.html.mlx"
;;

let () = !Camlmix.printer 
# 19 "devel.html.mlx";;
                                 "\n</head>\n<body>\n";;

let () =
  Camlmix.line := 22;
  Camlmix.char := 3;
  Camlmix.source := "devel.html.mlx"
;;

# 22 "devel.html.mlx";;
   include_file "hitcounter" 
let () =
  Camlmix.line := 22;
  Camlmix.char := 32;
  Camlmix.source := "devel.html.mlx"
;;

let () = !Camlmix.printer 
# 22 "devel.html.mlx";;
                                "\n";;

let () =
  Camlmix.line := 23;
  Camlmix.char := 3;
  Camlmix.source := "devel.html.mlx"
;;

# 23 "devel.html.mlx";;
   include_file "start_big_table" 
let () =
  Camlmix.line := 23;
  Camlmix.char := 37;
  Camlmix.source := "devel.html.mlx"
;;

let () = !Camlmix.printer 
# 23 "devel.html.mlx";;
                                     "\n";;

let () =
  Camlmix.line := 24;
  Camlmix.char := 3;
  Camlmix.source := "devel.html.mlx"
;;

# 24 "devel.html.mlx";;
   top_menu ~here:false ocaml 
let () =
  Camlmix.line := 24;
  Camlmix.char := 33;
  Camlmix.source := "devel.html.mlx"
;;

let () = !Camlmix.printer 
# 24 "devel.html.mlx";;
                                 "\n<h1>Non-OCaml software being developed here</h1>\n<p>\n<a href=\"http://caml.inria.fr\">OCaml</a> programming is my main occupation.\nI have a dedicated <a href=\"/ocaml.html\">OCaml page</a>.\n\n<p>\n<table class=list cellspacing=\"1em\">\n";;

let () =
  Camlmix.line := 32;
  Camlmix.char := 3;
  Camlmix.source := "devel.html.mlx"
;;

# 32 "devel.html.mlx";;
  
let section_row s = 
  Printf.printf 
    "<tr><td colspan=\"2\" \
     style=\"background:silver; text-align:center; font-weight:bold\">\
     %s</td></tr>" s

let () =
  Camlmix.line := 38;
  Camlmix.char := 3;
  Camlmix.source := "devel.html.mlx"
;;

let () = !Camlmix.printer 
# 38 "devel.html.mlx";;
   "\n\n";;

let () =
  Camlmix.line := 40;
  Camlmix.char := 3;
  Camlmix.source := "devel.html.mlx"
;;

# 40 "devel.html.mlx";;
   section_row "PHP programs" 
let () =
  Camlmix.line := 40;
  Camlmix.char := 33;
  Camlmix.source := "devel.html.mlx"
;;

let () = !Camlmix.printer 
# 40 "devel.html.mlx";;
                                 "\n\n<tr><th>Biblio.php</th>\n<td class=normal> <a href=\"biblio_php.html\">Biblio.php</a>\nis an extension of the MediaWiki wiki engine (the one used by\n<a href=\"http://www.wikipedia.org\">Wikipedia</a>). It provides a citation\nsystem based on keys, a bit like like LaTeX with Bibtex. \nThe cool thing is that\n<a href=\"http://www.ncbi.nlm.nih.gov/entrez/query.fcgi\">PubMed</a> \nreferences are automatically downloaded from the PubMed webservice, so that\nyou only need to give the PubMed identifier (PMID) \ninstead of a complete citation with a link to the PubMed abstract.\n</td>\n</tr>\n\n</table>\n\n";;

let () =
  Camlmix.line := 57;
  Camlmix.char := 3;
  Camlmix.source := "devel.html.mlx"
;;

# 57 "devel.html.mlx";;
   camlmix_footer ~years:"2005" () 
let () =
  Camlmix.line := 57;
  Camlmix.char := 38;
  Camlmix.source := "devel.html.mlx"
;;

let () = !Camlmix.printer 
# 57 "devel.html.mlx";;
                                      "\n";;

let () =
  Camlmix.line := 58;
  Camlmix.char := 3;
  Camlmix.source := "devel.html.mlx"
;;

# 58 "devel.html.mlx";;
   include_file "end_big_table" 
let () =
  Camlmix.line := 58;
  Camlmix.char := 35;
  Camlmix.source := "devel.html.mlx"
;;

let () = !Camlmix.printer 
# 58 "devel.html.mlx";;
                                   "\n</body>\n</html>\n";;

