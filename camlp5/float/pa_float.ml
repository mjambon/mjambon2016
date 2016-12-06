(* The following function takes an expr syntax node and replaces 
   all occurrences of int constants and operators by their float equivalent.

   The code is directly derived from the section on the quotations 
   for manipulating OCaml syntax trees in the reference manual.

   This code can be easily reused by copy-pasting.
*)
let rec subst_float expr =
  let loc = MLast.loc_of_expr expr in
  let se = subst_float in
  let sel = List.map subst_float in
  let spwel = List.map (fun (p, w, e) -> (p, w, se e)) in
  match expr with
      <:expr< $e1$ . $e2$ >> ->          <:expr< $se e1$ . $se e2$ >>
    | <:expr< $anti:e$ >> ->             <:expr< $anti:se e$ >>
    | <:expr< $e1$ $e2$ >> ->            <:expr< $se e1$ $se e2$ >>
    | <:expr< $e1$ .( $e2$ ) >> ->       <:expr< $se e1$ .( $se e2$ ) >>
    | <:expr< [| $list:el$ |] >> ->      <:expr< [| $list:sel el$ |] >>
    | <:expr< $e1$ := $e2$ >> ->         <:expr< $se e1$ := $se e2$ >>
    | <:expr< $chr:c$ >> ->              expr
    | <:expr< ($e$ :> $t$) >> ->         <:expr< ($se e$ :> $t$) >>
    | <:expr< ($e$ : $t1$ :> $t2$) >> -> <:expr< ($se e$ : $t1$ :> $t2$) >>
    | <:expr< $flo:s$ >> ->              expr
    | <:expr< for $s$ = $e1$ $to:b$ $e2$ do { $list:el$ } >> -> 
          <:expr< for $s$ = $se e1$ $to:b$ $se e2$ do { $list:sel el$ } >>
    | <:expr< fun [ $list:pwel$ ] >> ->  <:expr< fun [ $list:spwel pwel$ ] >>
    | <:expr< if $e1$ then $e2$ else $e3$ >> -> 
        <:expr< if $se e1$ then $se e2$ else $se e3$ >>

    | <:expr< $int:s$ >> -> (* we change the int constants into floats *)
        let x = string_of_float (float (int_of_string s)) in
	<:expr< $flo:x$ >>

    | <:expr< ~ $i$ : $e$ >> ->          <:expr< ~ $i$ : $se e$ >>
    | <:expr< lazy $e$ >> ->             <:expr< lazy $se e$ >>
    | <:expr< let $opt:b$ $list:pel$ in $e$ >> -> 
        let pel' = List.map (fun (p, e) -> (p, se e)) pel in
        <:expr< let $opt:b$ $list:pel'$ in $se e$ >>

    | <:expr< $lid:s$ >> -> (* we override the basic operators + - * / *)
        (match s with
	     "+" | "-" | "*" | "/" -> <:expr< $lid: s ^ "."$ >>
	   | _ -> expr)

    | <:expr< match $e$ with [ $list:pwel$ ] >> ->
	<:expr< match $se e$ with [ $list:spwel pwel$ ] >> 
    | <:expr< { $list:pel$ } >> -> 
        let pel' = List.map (fun (p, e) -> (p, se e)) pel in
        <:expr< { $list:pel'$ } >>
    | <:expr< do { $list:el$ } >> ->     <:expr< do { $list:sel el$ } >>
    | <:expr< $e1$ .[ $e2$ ] >> ->       <:expr< $se e1$ .[ $se e2$ ] >>
    | <:expr< $str:s$ >> -> expr
    | <:expr< try $e$ with [ $list:pwel$ ] >> -> 
	<:expr< try $e$ with [ $list:spwel pwel$ ] >>
    | <:expr< ( $list:el$ ) >> ->        <:expr< ( $list:sel el$ ) >>
    | <:expr< ( $e$ : $t$ ) >> ->        <:expr< ( $se e$ : $t$ ) >>
    | <:expr< $uid:s$ >> ->              expr
    | <:expr< while $e$ do { $list:el$ } >> -> 
        <:expr< while $se e$ do { $list:sel el$ } >>

    | _ -> 
	Stdpp.raise_with_loc loc 
	  (Failure 
	     "syntax not supported due to the \
              lack of Camlp5 documentation")

EXTEND
  Pcaml.expr: LEVEL "expr1" [
    [ "FLOAT"; e = Pcaml.expr -> subst_float e ]
  ];
END;;
