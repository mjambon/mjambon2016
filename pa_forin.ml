(*
  Public Domain. Use at your own risk!
  Author: Martin Jambon <martin_jambon@emailuser.net>

  This syntax extension provides an efficient "for in" construct,
  which can replace List.iter for better readability.

  The general syntax is:

  for pattern in list do
    expr
  done

  Example 1:

    for s in ["Hello"; "World"] do 
      fprintf oc ">>>%s<<< " s
    done

  is a replacement for:

    List.iter 
      (fun s -> fprintf oc ">>>%s<<< " s) 
      ["Hello"; "World"]

  with these important differences:

  1) the implementation uses a while loop and doesn't build a closure.

  2) the list constructor is inlined, i.e. the ["Hello"; "World"] list
  is not built at all. Tuples in lists of tuples are not built either.
  Because of point (1), the loop body will be replicated, which can
  result in pretty big preprocessed programs if not used wisely.

  3) side effect of list inlining: the list items do not have to have 
  the same type. The following works:
    for l in [ []; [1]; ["a";"b"] ] do
      Printf.printf "%i " (List.length l)
    done


  Example 2:

  let pairs = [ (1, "OCaml"); (3, "Python"); (2, "C") ] in
  for (id, lang) in pairs do
    Printf.printf "(%i, %s) " id lang
  done

  Here, the list definition is part of regular OCaml code so it is
  not inlined. We want to illustrate that the loop variable can be 
  destructured directly just as if we were using "fun" or "let".
*)

let unique =
  let n = ref 0 in
  fun () -> incr n; "__pa_forin" ^ string_of_int !n

let iter _loc p l e =
  let id = unique () in
  let id2 = unique () in
  <:expr< 
  let $lid:id$ = ref $l$ in 
  while $lid:id$.val != [] do { 
    let $lid:id2$ = $lid:id$.val in
    let $p$ = List.hd $lid:id2$ in do { 
      $e$; 
      $lid:id$.val := List.tl $lid:id2$ 
    } 
  } >>

let rec expand ?(use_list_iter = false) _loc p l e =
  match l with
      <:expr< [ $head$ :: $tail$ ] >> -> 
	    let pel =
	      match p, head with
		  <:patt< ( $list:pl$ ) >>, <:expr< ( $list:el$ ) >> -> 
			List.combine pl el
		| _ -> [(p, head)] in
	    let e1 = <:expr< let $list:pel$ in $e$ >> in
	    (match tail with
		 <:expr< [ ] >> -> e1
	       | _ ->
		 <:expr< do { $e1$; $expand _loc p tail e$ } >>)
    | <:expr< [ ] >> -> <:expr< () >>
    | _ -> 
	if use_list_iter then
	  <:expr< List.iter (fun [ $p$ -> $e$ ]) $l$ >>
	else 
	  iter _loc p l e

EXTEND
  Pcaml.expr: LEVEL "expr1" [
    [ "for"; p = Pcaml.patt; "in"; l = Pcaml.expr; 
      "do"; e = Pcaml.expr; "done" -> expand _loc p l e ]
  ];
END
