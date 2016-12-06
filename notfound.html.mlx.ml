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

# 1 "notfound.html.mlx";;

let () =
  Camlmix.line := 1;
  Camlmix.char := 1;
  Camlmix.source := "notfound.html.mlx"
;;

let () = !Camlmix.printer 
# 1 "notfound.html.mlx";;
 "";;

let () =
  Camlmix.line := 1;
  Camlmix.char := 3;
  Camlmix.source := "notfound.html.mlx"
;;

# 1 "notfound.html.mlx";;
  
#load "utils.cmo";;
open Utils

let () =
  Camlmix.line := 4;
  Camlmix.char := 3;
  Camlmix.source := "notfound.html.mlx"
;;

let () = !Camlmix.printer 
# 4 "notfound.html.mlx";;
   "\n";;

let () =
  Camlmix.line := 5;
  Camlmix.char := 3;
  Camlmix.source := "notfound.html.mlx"
;;

# 5 "notfound.html.mlx";;
   include_file "doctype" 
let () =
  Camlmix.line := 5;
  Camlmix.char := 29;
  Camlmix.source := "notfound.html.mlx"
;;

let () = !Camlmix.printer 
# 5 "notfound.html.mlx";;
                             "\n<html>\n<head>\n";;

let () =
  Camlmix.line := 8;
  Camlmix.char := 3;
  Camlmix.source := "notfound.html.mlx"
;;

# 8 "notfound.html.mlx";;
   title "Page not found..." 
let () =
  Camlmix.line := 8;
  Camlmix.char := 32;
  Camlmix.source := "notfound.html.mlx"
;;

let () = !Camlmix.printer 
# 8 "notfound.html.mlx";;
                                "\n";;

let () =
  Camlmix.line := 9;
  Camlmix.char := 3;
  Camlmix.source := "notfound.html.mlx"
;;

# 9 "notfound.html.mlx";;
   include_file "charset" 
let () =
  Camlmix.line := 9;
  Camlmix.char := 29;
  Camlmix.source := "notfound.html.mlx"
;;

let () = !Camlmix.printer 
# 9 "notfound.html.mlx";;
                             "\n";;

let () =
  Camlmix.line := 10;
  Camlmix.char := 3;
  Camlmix.source := "notfound.html.mlx"
;;

# 10 "notfound.html.mlx";;
   include_file "stylesheet" 
let () =
  Camlmix.line := 10;
  Camlmix.char := 32;
  Camlmix.source := "notfound.html.mlx"
;;

let () = !Camlmix.printer 
# 10 "notfound.html.mlx";;
                                "\n";;

let () =
  Camlmix.line := 11;
  Camlmix.char := 3;
  Camlmix.source := "notfound.html.mlx"
;;

# 11 "notfound.html.mlx";;
   include_file "icon" 
let () =
  Camlmix.line := 11;
  Camlmix.char := 26;
  Camlmix.source := "notfound.html.mlx"
;;

let () = !Camlmix.printer 
# 11 "notfound.html.mlx";;
                          "\n";;

let () =
  Camlmix.line := 12;
  Camlmix.char := 3;
  Camlmix.source := "notfound.html.mlx"
;;

# 12 "notfound.html.mlx";;
   include_file "commonlinks" 
let () =
  Camlmix.line := 12;
  Camlmix.char := 33;
  Camlmix.source := "notfound.html.mlx"
;;

let () = !Camlmix.printer 
# 12 "notfound.html.mlx";;
                                 "\n</head>\n<body>\n";;

let () =
  Camlmix.line := 15;
  Camlmix.char := 3;
  Camlmix.source := "notfound.html.mlx"
;;

# 15 "notfound.html.mlx";;
   include_file "start_big_table" 
let () =
  Camlmix.line := 15;
  Camlmix.char := 37;
  Camlmix.source := "notfound.html.mlx"
;;

let () = !Camlmix.printer 
# 15 "notfound.html.mlx";;
                                     "\n";;

let () =
  Camlmix.line := 16;
  Camlmix.char := 3;
  Camlmix.source := "notfound.html.mlx"
;;

# 16 "notfound.html.mlx";;
   top_menu nowhere 
let () =
  Camlmix.line := 16;
  Camlmix.char := 23;
  Camlmix.source := "notfound.html.mlx"
;;

let () = !Camlmix.printer 
# 16 "notfound.html.mlx";;
                       "\n<h1>Page not found...</h1>\n\n";;

let () =
  Camlmix.line := 19;
  Camlmix.char := 3;
  Camlmix.source := "notfound.html.mlx"
;;

# 19 "notfound.html.mlx";;
   camlmix_footer () 
let () =
  Camlmix.line := 19;
  Camlmix.char := 24;
  Camlmix.source := "notfound.html.mlx"
;;

let () = !Camlmix.printer 
# 19 "notfound.html.mlx";;
                        "\n";;

let () =
  Camlmix.line := 20;
  Camlmix.char := 3;
  Camlmix.source := "notfound.html.mlx"
;;

# 20 "notfound.html.mlx";;
   include_file "end_big_table" 
let () =
  Camlmix.line := 20;
  Camlmix.char := 35;
  Camlmix.source := "notfound.html.mlx"
;;

let () = !Camlmix.printer 
# 20 "notfound.html.mlx";;
                                   "\n</body>\n</html>\n";;

