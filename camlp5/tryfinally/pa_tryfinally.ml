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

(* The statement that extends the default grammar, 
   i.e. the regular syntax of OCaml if we use camlp5o 
   or the revised syntax if we use camlp5r *)
EXTEND
  Pcaml.expr: LEVEL "expr1" [
    [ "try"; e1 = Pcaml.expr; "finally"; e2 = Pcaml.expr -> expand loc e1 e2 ]
  ];
END;;
