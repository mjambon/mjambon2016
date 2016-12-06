(*
  This code is in public domain.
  Written by Alain Frisch.  2002-02-05.
*)

let no = ref 0

let local_struct loc st e = 
  incr no;
  let x = "OPENIN_" ^ (string_of_int !no) in
  let st = st @ [<:str_item< value res = $e$ >>] in
  <:expr<  let module $x$ = struct $list: st$ end in ($uid:x$.res) >>

EXTEND
 GLOBAL: Pcaml.expr;

 Pcaml.expr: LEVEL "expr1" [
   [ "open"; i = LIST1 UIDENT SEP "."; "in";
        e = Pcaml.expr LEVEL "top" -> 
	  local_struct loc [<:str_item< open $i$ >>] e
   | "struct"; st = LIST0 [ s = Pcaml.str_item; OPT ";;" -> s ]; "end"; "in";
	  e = Pcaml.expr LEVEL "top" -> 
	    local_struct loc st e
   ]
 ];

END
