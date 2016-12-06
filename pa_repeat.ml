(*
  Public Domain. Use at your own risk!
  Author: Martin Jambon <martin_jambon@emailuser.net>

  This is a tiny extension of OCaml which provides a "repeat" loop syntax.
  It is like a Pascal-style repeat-until loop, without the "until" part:
  it is expressed by the returned value of the loop expression:
  - true means continue,
  - false means stop
  
  Syntax:
    repeat e
  expands to:
    while e do () done

  Example:
  This code read stdin and writes the lines to stdout until 
  an empty line is found:

  repeat (match read_line () with
              "" -> false
            | s -> print_endline s; true)
*)

EXTEND
  Pcaml.expr: LEVEL "expr1" [
    [ "repeat"; e = SELF -> <:expr< while $e$ do { () } >> ]
  ];
END
