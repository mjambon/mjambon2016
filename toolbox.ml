(* The contents of this file is in the Public Domain. *)

(*
   This file was automatically generated from a set of examples for Camlmix.
   You can use it directly in a Camlmix file with the #use directive.

   If you want to compile it with ocamlc or ocamlopt, you must
   remove the references to the Camlmix module and remove the #load
   directives.
*)

(*** Scanning a whole channel ***:
val read_chan : (char -> 'a) -> in_channel -> unit
*)

let read_chan f ic =
  try
    while true do
      f (input_char ic)
    done
  with End_of_file -> ()
;;


(*** Including a file ***:
val include_file : string -> unit
*)

let include_file file =
  let ic = open_in_bin file in
  read_chan print_char ic;
  close_in ic
;;


(*** Verbatim input in a HTML document ***:
val html_verbatim : string -> unit
*)

let html_verbatim file =
  let ic = open_in_bin file in
  print_string "<pre>\n";
  read_chan 
    (function
	 '<' -> print_string "&lt;"
       | '>' -> print_string "&gt;"
       | '&' -> print_string "&amp;"
       | c -> print_char c)
    ic;
  print_string "</pre>";
  close_in ic
;;


(*** Calling an external program ***:
val command : string -> unit
*)

let command s =
  if Sys.command s = 0 then ()
  else invalid_arg ("command: " ^ s)
;;


(*** Recursive call to Camlmix ***:
val camlmix : string -> unit
*)

let camlmix file = command ("camlmix " ^ file)
;;


(*** Catching the output of a command ***:
val slurp_command : string -> string
*)

#load "unix.cma"

let read_command_output f s =
  let ic = Unix.open_process_in s in
  (try
     while true do
       f (input_char ic)
     done
   with End_of_file -> ());
  match Unix.close_process_in ic with
      Unix.WEXITED 0 -> ()
    | _ -> invalid_arg ("read_command_output: " ^ s)

let slurp_command s =
  let buf = Buffer.create 100 in
  read_command_output (Buffer.add_char buf) s;
  Buffer.contents buf
;;


(*** Using an external filter or converter ***:
val kfeed : (char -> 'a) -> string -> string -> unit
val feed : string -> string -> unit
val ffeed : out_channel -> string -> string -> unit
val bfeed : Buffer.t -> string -> string -> unit
val sfeed : string -> string -> string
*)

(* Warning: the following function crashes in OCaml 3.09.2,
   because of that bug: http://caml.inria.fr/mantis/view.php?id=4062
   (close_out is applied a second time during Unix.close_process) *)
let kfeed f command data =
  let (ic, oc) as channels = Unix.open_process command in
  output_string oc data;
  close_out oc;
  let exn = ref None in
  (try
     while true do
       f (input_char ic)
     done
   with
       End_of_file -> ()
     | e -> exn := Some e);
  (match Unix.close_process channels with
       Unix.WEXITED 0 -> ()
     | _ -> invalid_arg ("feed_command: " ^ command));
  match !exn with
      Some e -> raise e
    | None -> ()

let feed = kfeed print_char

let ffeed oc command data = kfeed (output_char oc) command data

let bfeed buf command data = kfeed (Buffer.add_char buf) command data

let sfeed command data = 
  let buf = Buffer.create (2 * String.length data) in
  bfeed buf command data;
  Buffer.contents buf
;;


(*** Changing the printer only for the next block ***:
val print_with : (string -> unit) -> unit
*)

let print_with f =
  let saved_printer = !Camlmix.printer in
  Camlmix.printer := (fun s -> f s; Camlmix.printer := saved_printer)
;;


(*** Conditional output of the next block ***:
val print_if : bool -> unit
*)

let print_if test =
  if not test then print_with ignore
;;

