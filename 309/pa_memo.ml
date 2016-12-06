(*
  Public Domain. Use at your own risk!
  Author: Martin Jambon <martin_jambon@emailuser.net>

  Compilation of this syntax extension:
    ocamlc -c \
      -pp 'camlp4o pa_extend.cmo q_MLast.cmo -loc _loc' \
      -I +camlp4 pa_memo.ml
  
  Compilation of a program using this syntax extension:
    ocamlopt -o prog \
      -pp 'camlp4o -I . pa_memo.cmo' \
      prog.ml

  Description:

  Implements functions with memoization by providing a keyword "memo"
  which can be used as a replacement for "function".
  Results of such functions are stored permanently in a hidden hash table.

  Example:

  The following function returns the sum of integers from 0 to n,
  and prints a + each time an addition is actually performed:

  let rec sum = memo 
      0 -> 0
    | n when n > 0 ->
        (print_char '+';
         n + sum (n - 1))
    | _ -> invalid_arg "sum"

*)

let unique =
  let n = ref 0 in
  fun () -> incr n; "__pa_memo" ^ string_of_int !n

EXTEND
  GLOBAL: Pcaml.expr;

  Pcaml.expr: LEVEL "expr1" [
    [ "memo"; OPT "|"; pel = LIST1 match_case SEP "|" ->
	let tbl = unique () in
	let x = unique () in
	let result = unique () in
	<:expr< 
	let $lid:tbl$ = Hashtbl.create 100 in
	fun $lid:x$ ->
	  try Hashtbl.find $lid:tbl$ $lid:x$ 
	  with [ Not_found -> 
		   let $lid:result$ = match $lid:x$ with [ $list:pel$ ] in
		   do { Hashtbl.replace $lid:tbl$ $lid:x$ $lid:result$; 
			$lid:result$ } ]
    >> ]
  ];

  match_case: [
    [ p = Pcaml.patt; w = OPT [ "when"; e = Pcaml.expr -> e ]; 
      "->"; e = Pcaml.expr -> 
	(p, w, e) ]
  ];
END