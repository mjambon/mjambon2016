
(* The function that returns unique identifiers *)
let new_id = 
  let counter = ref 0 in
  fun () ->
    incr counter;
    "__finally" ^ string_of_int !counter

(* The function that converts our syntax into a single OCaml expression,
   i.e. an "expr" node of the syntax tree *)
let expand loc e1 e2 =
  let id = new_id () in
  let id_patt = <:patt< $lid:id$ >> in
  let id_expr = <:expr< $lid:id$ >> in
  <:expr<
  let $id_patt$ =
    try do { $e1$; None } 
    with [ exn -> Some exn ] in
  do { $e2$;
       match $id_expr$ with
	   [ None -> ()
	   | Some exn -> raise exn ] }
  >>

let rec subst_float expr =
  let loc = MLast.loc_of_expr expr in
  let se = subst_float in
  let sel = List.map subst_float in
  let spwel = List.map (fun (p, w, e) -> (p, w, se e)) in
  match expr with
      <:expr< $e1$ . $e2$ >> -> <:expr< $se e1$ . $se e2$ >>
    | <:expr< $anti:e$ >> -> <:expr< $anti:se e$ >>
    | <:expr< $e1$ $e2$ >> -> <:expr< $se e1$ $se e2$ >>
    | <:expr< $e1$ .( $e2$ ) >> -> <:expr< $se e1$ .( $se e2$ ) >>
    | <:expr< [| $list:el$ |] >> -> <:expr< [| $list:sel el$ |] >>
    | <:expr< $e1$ := $e2$ >> -> <:expr< $se e1$ := $se e2$ >>
    | <:expr< $chr:c$ >> -> expr
    | <:expr< ($e$ :> $t$) >> -> <:expr< ($se e$ :> $t$) >>
    | <:expr< ($e$ : $t1$ :> $t2$) >> -> <:expr< ($se e$ : $t1$ :> $t2$) >>
    | <:expr< $flo:s$ >> -> expr
    | <:expr< for $s$ = $e1$ $to:b$ $e2$ do { $list:el$ } >> -> 
          <:expr< for $s$ = $se e1$ $to:b$ $se e2$ do { $list:sel el$ } >>
    | <:expr< fun [ $list:pwel$ ] >> -> 
	<:expr< fun [ $list:spwel pwel$ ] >>
    | <:expr< if $e1$ then $e2$ else $e3$ >> -> 
        <:expr< if $se e1$ then $se e2$ else $se e3$ >>
    | <:expr< $int:s$ >> ->
        let x = string_of_float (float (int_of_string s)) in
	<:expr< $flo:x$ >> (* specific change! *)

    | <:expr< ~ $i$ : $e$ >> -> <:expr< ~ $i$ : $se e$ >>
    | <:expr< lazy $e$ >> -> <:expr< lazy $se e$ >>
    | <:expr< let $opt:b$ $list:pel$ in $e$ >> -> 
        let pel' = List.map (fun (p, e) -> (p, se e)) pel in
        <:expr< let $opt:b$ $list:pel'$ in $se e$ >>
    | <:expr< $lid:s$ >> -> expr
    | <:expr< match $e$ with [ $list:pwel$ ] >> ->
	<:expr< match $se e$ with [ $list:spwel pwel$ ] >> 
    | <:expr< { $list:pel$ } >> -> 
        let pel' = List.map (fun (p, e) -> (p, se e)) pel in
        <:expr< { $list:pel'$ } >>
    | <:expr< do { $list:el$ } >> -> <:expr< do { $list:sel el$ } >>
    | <:expr< $e1$ .[ $e2$ ] >> -> <:expr< $se e1$ .[ $se e2$ ] >>
    | <:expr< $str:s$ >> -> expr
    | <:expr< try $e$ with [ $list:pwel$ ] >> -> 
	<:expr< try $e$ with [ $list:spwel pwel$ ] >>
    | <:expr< ( $list:el$ ) >> -> <:expr< ( $list:sel el$ ) >>
    | <:expr< ( $e$ : $t$ ) >> -> <:expr< ( $se e$ : $t$ ) >>
    | <:expr< $uid:s$ >> -> expr
    | <:expr< while $e$ do { $list:el$ } >> -> 
        <:expr< while $se e$ do { $list:sel el$ } >>

    | _ -> 
	Stdpp.raise_with_loc loc 
	  (Failure 
	     "syntax not supported due to the \
              lack of documentation for Camlp4")


(* The statement that extends the default grammar, 
   i.e. the regular syntax of OCaml if we use camlp4o 
   or the revised syntax if we use camlp4r *)
EXTEND
  Pcaml.expr: LEVEL "expr1" [
    [ "try"; e1 = Pcaml.expr; "finally"; e2 = Pcaml.expr -> expand loc e1 e2
    | "FLOAT"; e = Pcaml.expr -> 
	<:expr< 
	let \+ = \+.
	and \- = \-.
	and \/ = \/.
	and \* = \*.
	and \mod = mod_float in 
	$subst_float e$ >> ]
  ];
END;;
