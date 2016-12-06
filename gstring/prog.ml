open Gstring.Op

let msg = !! "hello"

let _ =
  let args = Array.map Gstring.freeze_import Sys.argv in
  Array.iter Gstring.print_endline args
