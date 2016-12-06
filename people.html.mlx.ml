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

# 1 "people.html.mlx";;

let () =
  Camlmix.line := 1;
  Camlmix.char := 1;
  Camlmix.source := "people.html.mlx"
;;

let () = !Camlmix.printer 
# 1 "people.html.mlx";;
 "";;

let () =
  Camlmix.line := 1;
  Camlmix.char := 3;
  Camlmix.source := "people.html.mlx"
;;

# 1 "people.html.mlx";;
   
#load "utils.cmo";;
open Utils

let () =
  Camlmix.line := 4;
  Camlmix.char := 3;
  Camlmix.source := "people.html.mlx"
;;

let () = !Camlmix.printer 
# 4 "people.html.mlx";;
   "\n";;

let () =
  Camlmix.line := 5;
  Camlmix.char := 3;
  Camlmix.source := "people.html.mlx"
;;

# 5 "people.html.mlx";;
   include_file "doctype-loose" 
let () =
  Camlmix.line := 5;
  Camlmix.char := 35;
  Camlmix.source := "people.html.mlx"
;;

let () = !Camlmix.printer 
# 5 "people.html.mlx";;
                                   "\n<html>\n<head>\n";;

let () =
  Camlmix.line := 8;
  Camlmix.char := 3;
  Camlmix.source := "people.html.mlx"
;;

# 8 "people.html.mlx";;
   title "People" 
let () =
  Camlmix.line := 8;
  Camlmix.char := 21;
  Camlmix.source := "people.html.mlx"
;;

let () = !Camlmix.printer 
# 8 "people.html.mlx";;
                     "\n";;

let () =
  Camlmix.line := 9;
  Camlmix.char := 3;
  Camlmix.source := "people.html.mlx"
;;

# 9 "people.html.mlx";;
   include_file "charset" 
let () =
  Camlmix.line := 9;
  Camlmix.char := 29;
  Camlmix.source := "people.html.mlx"
;;

let () = !Camlmix.printer 
# 9 "people.html.mlx";;
                             "\n";;

let () =
  Camlmix.line := 10;
  Camlmix.char := 3;
  Camlmix.source := "people.html.mlx"
;;

# 10 "people.html.mlx";;
   include_file "stylesheet" 
let () =
  Camlmix.line := 10;
  Camlmix.char := 32;
  Camlmix.source := "people.html.mlx"
;;

let () = !Camlmix.printer 
# 10 "people.html.mlx";;
                                "\n";;

let () =
  Camlmix.line := 11;
  Camlmix.char := 3;
  Camlmix.source := "people.html.mlx"
;;

# 11 "people.html.mlx";;
   include_file "icon" 
let () =
  Camlmix.line := 11;
  Camlmix.char := 26;
  Camlmix.source := "people.html.mlx"
;;

let () = !Camlmix.printer 
# 11 "people.html.mlx";;
                          "\n";;

let () =
  Camlmix.line := 12;
  Camlmix.char := 3;
  Camlmix.source := "people.html.mlx"
;;

# 12 "people.html.mlx";;
   include_file "commonlinks" 
let () =
  Camlmix.line := 12;
  Camlmix.char := 33;
  Camlmix.source := "people.html.mlx"
;;

let () = !Camlmix.printer 
# 12 "people.html.mlx";;
                                 "\n</head>\n<body>\n";;

let () =
  Camlmix.line := 15;
  Camlmix.char := 3;
  Camlmix.source := "people.html.mlx"
;;

# 15 "people.html.mlx";;
   include_file "hitcounter" 
let () =
  Camlmix.line := 15;
  Camlmix.char := 32;
  Camlmix.source := "people.html.mlx"
;;

let () = !Camlmix.printer 
# 15 "people.html.mlx";;
                                "\n";;

let () =
  Camlmix.line := 16;
  Camlmix.char := 3;
  Camlmix.source := "people.html.mlx"
;;

# 16 "people.html.mlx";;
   include_file "start_big_table" 
let () =
  Camlmix.line := 16;
  Camlmix.char := 37;
  Camlmix.source := "people.html.mlx"
;;

let () = !Camlmix.printer 
# 16 "people.html.mlx";;
                                     "\n";;

let () =
  Camlmix.line := 17;
  Camlmix.char := 3;
  Camlmix.source := "people.html.mlx"
;;

# 17 "people.html.mlx";;
   top_menu ~here:true people 
let () =
  Camlmix.line := 17;
  Camlmix.char := 33;
  Camlmix.source := "people.html.mlx"
;;

let () = !Camlmix.printer 
# 17 "people.html.mlx";;
                                 "\n<h1>People</h1>\n<h2><a class=anchor name=martin><img src=\"/mini-martin-color.png\" alt=\"Portrait\">Martin Jambon, PhD</a></h2>\n\n\n<table>\n<tr valign=top>\n<td>\n<p>\nStuff that matters:\n<ul>\n<li> <a href=\"/ocaml.html\">my public OCaml software</a>\n<li> <a href=\"http://www.linkedin.com/in/mjambon\">LinkedIn</a>\n<li> <a href=\"https://github.com/mjambon\">GitHub</a>\n<li> <a href=\"http://twitter.com/mjambontech\">Twitter</a>\n<li> my scientific <a href=\"publications.html\">publications</a>\n<li> documents about my research in \n<a href=\"/bioinformatics.html\">bioinformatics, including my PhD</a>\n<li> <a href=\"bedbug-advice.html\">Peace, Love and Bedbugs:\nSurviving a Bedbug Infestation</a>\n</ul>\n\n</td>\n\n<td class=\"picture\">\n<a href=\"/martin.png\" title=\"Click to enlarge\"><img src=\"/mini-martin.png\" alt=\"Portrait\"></a>\n<br>\n<a href=\"/martin.png\">Click to enlarge</a> my photo, \nas transformed by <a href=\"ocaml.html\">Asciipict</a>\n(no, it's not Perl code)\n</td>\n</tr>\n</table>\n\n\n";;

let () =
  Camlmix.line := 52;
  Camlmix.char := 3;
  Camlmix.source := "people.html.mlx"
;;

# 52 "people.html.mlx";;
   camlmix_footer ~years:"2004, 2005" () 
let () =
  Camlmix.line := 52;
  Camlmix.char := 44;
  Camlmix.source := "people.html.mlx"
;;

let () = !Camlmix.printer 
# 52 "people.html.mlx";;
                                            "\n";;

let () =
  Camlmix.line := 53;
  Camlmix.char := 3;
  Camlmix.source := "people.html.mlx"
;;

# 53 "people.html.mlx";;
   include_file "end_big_table" 
let () =
  Camlmix.line := 53;
  Camlmix.char := 35;
  Camlmix.source := "people.html.mlx"
;;

let () = !Camlmix.printer 
# 53 "people.html.mlx";;
                                   "\n</body>\n</html>\n";;

