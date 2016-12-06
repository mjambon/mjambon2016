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

# 1 "other.html.mlx";;

let () =
  Camlmix.line := 1;
  Camlmix.char := 1;
  Camlmix.source := "other.html.mlx"
;;

let () = !Camlmix.printer 
# 1 "other.html.mlx";;
 "";;

let () =
  Camlmix.line := 1;
  Camlmix.char := 3;
  Camlmix.source := "other.html.mlx"
;;

# 1 "other.html.mlx";;
   
#load "utils.cmo";;
open Utils

let () =
  Camlmix.line := 4;
  Camlmix.char := 3;
  Camlmix.source := "other.html.mlx"
;;

let () = !Camlmix.printer 
# 4 "other.html.mlx";;
   "\n";;

let () =
  Camlmix.line := 5;
  Camlmix.char := 3;
  Camlmix.source := "other.html.mlx"
;;

# 5 "other.html.mlx";;
   include_file "doctype" 
let () =
  Camlmix.line := 5;
  Camlmix.char := 29;
  Camlmix.source := "other.html.mlx"
;;

let () = !Camlmix.printer 
# 5 "other.html.mlx";;
                             "\n<html>\n<head>\n";;

let () =
  Camlmix.line := 8;
  Camlmix.char := 3;
  Camlmix.source := "other.html.mlx"
;;

# 8 "other.html.mlx";;
   title "Other" 
let () =
  Camlmix.line := 8;
  Camlmix.char := 20;
  Camlmix.source := "other.html.mlx"
;;

let () = !Camlmix.printer 
# 8 "other.html.mlx";;
                    "\n";;

let () =
  Camlmix.line := 9;
  Camlmix.char := 3;
  Camlmix.source := "other.html.mlx"
;;

# 9 "other.html.mlx";;
   include_file "charset" 
let () =
  Camlmix.line := 9;
  Camlmix.char := 29;
  Camlmix.source := "other.html.mlx"
;;

let () = !Camlmix.printer 
# 9 "other.html.mlx";;
                             "\n";;

let () =
  Camlmix.line := 10;
  Camlmix.char := 3;
  Camlmix.source := "other.html.mlx"
;;

# 10 "other.html.mlx";;
   include_file "stylesheet" 
let () =
  Camlmix.line := 10;
  Camlmix.char := 32;
  Camlmix.source := "other.html.mlx"
;;

let () = !Camlmix.printer 
# 10 "other.html.mlx";;
                                "\n";;

let () =
  Camlmix.line := 11;
  Camlmix.char := 3;
  Camlmix.source := "other.html.mlx"
;;

# 11 "other.html.mlx";;
   include_file "icon" 
let () =
  Camlmix.line := 11;
  Camlmix.char := 26;
  Camlmix.source := "other.html.mlx"
;;

let () = !Camlmix.printer 
# 11 "other.html.mlx";;
                          "\n";;

let () =
  Camlmix.line := 12;
  Camlmix.char := 3;
  Camlmix.source := "other.html.mlx"
;;

# 12 "other.html.mlx";;
   include_file "commonlinks" 
let () =
  Camlmix.line := 12;
  Camlmix.char := 33;
  Camlmix.source := "other.html.mlx"
;;

let () = !Camlmix.printer 
# 12 "other.html.mlx";;
                                 "\n</head>\n<body>\n";;

let () =
  Camlmix.line := 15;
  Camlmix.char := 3;
  Camlmix.source := "other.html.mlx"
;;

# 15 "other.html.mlx";;
   include_file "hitcounter" 
let () =
  Camlmix.line := 15;
  Camlmix.char := 32;
  Camlmix.source := "other.html.mlx"
;;

let () = !Camlmix.printer 
# 15 "other.html.mlx";;
                                "\n";;

let () =
  Camlmix.line := 16;
  Camlmix.char := 3;
  Camlmix.source := "other.html.mlx"
;;

# 16 "other.html.mlx";;
   include_file "start_big_table" 
let () =
  Camlmix.line := 16;
  Camlmix.char := 37;
  Camlmix.source := "other.html.mlx"
;;

let () = !Camlmix.printer 
# 16 "other.html.mlx";;
                                     "\n";;

let () =
  Camlmix.line := 17;
  Camlmix.char := 3;
  Camlmix.source := "other.html.mlx"
;;

# 17 "other.html.mlx";;
   top_menu ~here:true other 
let () =
  Camlmix.line := 17;
  Camlmix.char := 32;
  Camlmix.source := "other.html.mlx"
;;

let () = !Camlmix.printer 
# 17 "other.html.mlx";;
                                "\n<h1>Various documents</h1>\n\n<p>\n<ul>\n<li> <a href=\"/ocaml.html\">Software</a>\n<li> <a href=\"bedbug-advice.html\">Peace, Love and Bedbugs:\nSurviving a Bedbug Infestation</a>\n</ul>\n\n<h1>Aging documents</h1>\n\n<p>\n<ul>\n<li> my scientific <a href=\"publications.html\">publications</a>\n<li> documents about my research in \n<a href=\"/bioinformatics.html\">bioinformatics, including my PhD</a>\n</ul>\n\n\n";;

let () =
  Camlmix.line := 37;
  Camlmix.char := 3;
  Camlmix.source := "other.html.mlx"
;;

# 37 "other.html.mlx";;
   camlmix_footer ~years:"2004-2012" () 
let () =
  Camlmix.line := 37;
  Camlmix.char := 43;
  Camlmix.source := "other.html.mlx"
;;

let () = !Camlmix.printer 
# 37 "other.html.mlx";;
                                           "\n";;

let () =
  Camlmix.line := 38;
  Camlmix.char := 3;
  Camlmix.source := "other.html.mlx"
;;

# 38 "other.html.mlx";;
   include_file "end_big_table" 
let () =
  Camlmix.line := 38;
  Camlmix.char := 35;
  Camlmix.source := "other.html.mlx"
;;

let () = !Camlmix.printer 
# 38 "other.html.mlx";;
                                   "\n</body>\n</html>\n";;

