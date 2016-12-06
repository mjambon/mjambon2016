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

# 1 "biblio_php.html.mlx";;

let () =
  Camlmix.line := 1;
  Camlmix.char := 1;
  Camlmix.source := "biblio_php.html.mlx"
;;

let () = !Camlmix.printer 
# 1 "biblio_php.html.mlx";;
 "";;

let () =
  Camlmix.line := 1;
  Camlmix.char := 3;
  Camlmix.source := "biblio_php.html.mlx"
;;

# 1 "biblio_php.html.mlx";;
  
#use "topfind";;
#require "caml2html";;
#require "mikmatch_pcre";;
#load "unmix.cmo";;
#load "print_ocaml.cmo";;
#load "utils.cmo";;
open Print_ocaml
open Utils
open Camlmix

let () =
  Camlmix.line := 11;
  Camlmix.char := 3;
  Camlmix.source := "biblio_php.html.mlx"
;;

let () = !Camlmix.printer 
# 11 "biblio_php.html.mlx";;
   "\n";;

let () =
  Camlmix.line := 12;
  Camlmix.char := 3;
  Camlmix.source := "biblio_php.html.mlx"
;;

# 12 "biblio_php.html.mlx";;
   include_file "doctype" 
let () =
  Camlmix.line := 12;
  Camlmix.char := 29;
  Camlmix.source := "biblio_php.html.mlx"
;;

let () = !Camlmix.printer 
# 12 "biblio_php.html.mlx";;
                             "\n<html>\n<head>\n";;

let () =
  Camlmix.line := 15;
  Camlmix.char := 3;
  Camlmix.source := "biblio_php.html.mlx"
;;

# 15 "biblio_php.html.mlx";;
   title "Biblio.php" 
let () =
  Camlmix.line := 15;
  Camlmix.char := 25;
  Camlmix.source := "biblio_php.html.mlx"
;;

let () = !Camlmix.printer 
# 15 "biblio_php.html.mlx";;
                         "\n";;

let () =
  Camlmix.line := 16;
  Camlmix.char := 3;
  Camlmix.source := "biblio_php.html.mlx"
;;

# 16 "biblio_php.html.mlx";;
   include_file "charset" 
let () =
  Camlmix.line := 16;
  Camlmix.char := 29;
  Camlmix.source := "biblio_php.html.mlx"
;;

let () = !Camlmix.printer 
# 16 "biblio_php.html.mlx";;
                             "\n";;

let () =
  Camlmix.line := 17;
  Camlmix.char := 3;
  Camlmix.source := "biblio_php.html.mlx"
;;

# 17 "biblio_php.html.mlx";;
   include_file "stylesheet" 
let () =
  Camlmix.line := 17;
  Camlmix.char := 32;
  Camlmix.source := "biblio_php.html.mlx"
;;

let () = !Camlmix.printer 
# 17 "biblio_php.html.mlx";;
                                "\n";;

let () =
  Camlmix.line := 18;
  Camlmix.char := 3;
  Camlmix.source := "biblio_php.html.mlx"
;;

# 18 "biblio_php.html.mlx";;
   include_file "ocaml-stylesheet" 
let () =
  Camlmix.line := 18;
  Camlmix.char := 38;
  Camlmix.source := "biblio_php.html.mlx"
;;

let () = !Camlmix.printer 
# 18 "biblio_php.html.mlx";;
                                      "\n";;

let () =
  Camlmix.line := 19;
  Camlmix.char := 3;
  Camlmix.source := "biblio_php.html.mlx"
;;

# 19 "biblio_php.html.mlx";;
   include_file "icon" 
let () =
  Camlmix.line := 19;
  Camlmix.char := 26;
  Camlmix.source := "biblio_php.html.mlx"
;;

let () = !Camlmix.printer 
# 19 "biblio_php.html.mlx";;
                          "\n";;

let () =
  Camlmix.line := 20;
  Camlmix.char := 3;
  Camlmix.source := "biblio_php.html.mlx"
;;

# 20 "biblio_php.html.mlx";;
   include_file "commonlinks" 
let () =
  Camlmix.line := 20;
  Camlmix.char := 33;
  Camlmix.source := "biblio_php.html.mlx"
;;

let () = !Camlmix.printer 
# 20 "biblio_php.html.mlx";;
                                 "\n</head>\n<body>\n";;

let () =
  Camlmix.line := 23;
  Camlmix.char := 3;
  Camlmix.source := "biblio_php.html.mlx"
;;

# 23 "biblio_php.html.mlx";;
   include_file "hitcounter" 
let () =
  Camlmix.line := 23;
  Camlmix.char := 32;
  Camlmix.source := "biblio_php.html.mlx"
;;

let () = !Camlmix.printer 
# 23 "biblio_php.html.mlx";;
                                "\n";;

let () =
  Camlmix.line := 24;
  Camlmix.char := 3;
  Camlmix.source := "biblio_php.html.mlx"
;;

# 24 "biblio_php.html.mlx";;
   include_file "start_big_table" 
let () =
  Camlmix.line := 24;
  Camlmix.char := 37;
  Camlmix.source := "biblio_php.html.mlx"
;;

let () = !Camlmix.printer 
# 24 "biblio_php.html.mlx";;
                                     "\n";;

let () =
  Camlmix.line := 25;
  Camlmix.char := 3;
  Camlmix.source := "biblio_php.html.mlx"
;;

# 25 "biblio_php.html.mlx";;
   top_menu prog 
let () =
  Camlmix.line := 25;
  Camlmix.char := 20;
  Camlmix.source := "biblio_php.html.mlx"
;;

let () = !Camlmix.printer 
# 25 "biblio_php.html.mlx";;
                    "\n<h1>Biblio.php download</h1>\n\n<p>\n<b>\nThis MediaWiki extension is no longer being maintained.\nSee <a href=\"http://www.mediawiki.org/wiki/Extension:BiblioPlus\">BiblioPlus</a>\nfor a drop-in replacement that works with newer versions of MediaWiki.\n</b>\n</p>\n\n<p>\nDownload ";;

let () =
  Camlmix.line := 37;
  Camlmix.char := 12;
  Camlmix.source := "biblio_php.html.mlx"
;;

# 37 "biblio_php.html.mlx";;
            download "biblio-0.8.1.tar.gz" 
let () =
  Camlmix.line := 37;
  Camlmix.char := 46;
  Camlmix.source := "biblio_php.html.mlx"
;;

let () = !Camlmix.printer 
# 37 "biblio_php.html.mlx";;
                                              " for MediaWiki 1.5, 1.6, 1.7.\n\n<p>\nThis is only the download page for the Biblio extension of\n<a href=\"http://www.mediawiki.org\">MediaWiki</a>.\nThe main page for Biblio is\n<a href=\"http://openwetware.org/wiki/Wikiomics:Biblio\">http://openwetware.org/wiki/Wikiomics:Biblio</a>.\n<p>\nHere is the list of all available versions:\n";;

let () =
  Camlmix.line := 46;
  Camlmix.char := 3;
  Camlmix.source := "biblio_php.html.mlx"
;;

# 46 "biblio_php.html.mlx";;
  
(*
let l = List.rev (Mikmatch.Glob.list [FILTER "Biblio.php-"] @
		  Mikmatch.Glob.list [FILTER "biblio-" _* ".tar.gz" eos]) in
*)
let l = ["Biblio.php-0.5a"; "Biblio.php-0.5b"; "Biblio.php-0.6";
   "Biblio.php-0.6.1"; "Biblio.php-0.6.2"; "Biblio.php-0.6.3";
   "Biblio.php-0.7.0"; "Biblio.php-0.7.1"; "Biblio.php-0.7.2";
   "Biblio.php-0.7.4"; "Biblio.php-0.7.4+1"; "Biblio.php-0.7.5";
   "Biblio.php-0.7.5+1"; "biblio-0.8.0.tar.gz"; "biblio-0.8.1.tar.gz"]
in
List.iter (fun s -> print_string "<br>"; download s) l

let () =
  Camlmix.line := 58;
  Camlmix.char := 3;
  Camlmix.source := "biblio_php.html.mlx"
;;

let () = !Camlmix.printer 
# 58 "biblio_php.html.mlx";;
   "\n\n\n";;

let () =
  Camlmix.line := 61;
  Camlmix.char := 3;
  Camlmix.source := "biblio_php.html.mlx"
;;

# 61 "biblio_php.html.mlx";;
   camlmix_footer ~years:"2005, 2006" () 
let () =
  Camlmix.line := 61;
  Camlmix.char := 44;
  Camlmix.source := "biblio_php.html.mlx"
;;

let () = !Camlmix.printer 
# 61 "biblio_php.html.mlx";;
                                            "\n";;

let () =
  Camlmix.line := 62;
  Camlmix.char := 3;
  Camlmix.source := "biblio_php.html.mlx"
;;

# 62 "biblio_php.html.mlx";;
   include_file "end_big_table" 
let () =
  Camlmix.line := 62;
  Camlmix.char := 35;
  Camlmix.source := "biblio_php.html.mlx"
;;

let () = !Camlmix.printer 
# 62 "biblio_php.html.mlx";;
                                   "\n</body>\n</html>\n";;

