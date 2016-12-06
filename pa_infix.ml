(*
  Public Domain. Use at your own risk!
  Author: Martin Jambon <martin_jambon@emailuser.net>

  Compilation of this syntax extension:
    ocamlc -c \
      -pp 'camlp4o pa_extend.cmo q_MLast.cmo -loc loc' \
      -I +camlp4 pa_infix.ml
  
  Compilation of a program using this syntax extension:
    ocamlopt -o prog \
      -pp 'camlp4o -I . pa_infix.cmo' \
      prog.ml

  Description:
    It provides a new "infix" keyword which can be used to declare
    new lowercase identifiers which will act as left-associative 
    infix operators, with the same precedence as function application.

  Example:
    (* code using the syntax extension *)
    infix plus = ( + )
    infix times = ( * )
    let fortynine = pred 3 plus 5 times 7

    (* is converted into: *)
    let fortynine = ((pred 3) + 5) * 7
*)

let add_operator name f =
  EXTEND
    Pcaml.expr: LEVEL "apply" [
      [ x = SELF; $name$; y = SELF -> <:expr< $f$ $x$ $y$ >> ]
    ];
  END

EXTEND
  Pcaml.str_item: [
    [ "infix"; name = LIDENT; "="; f = Pcaml.expr ->
	add_operator (Token.eval_string loc name) f;
        <:str_item< declare end >> ]
  ];
END
