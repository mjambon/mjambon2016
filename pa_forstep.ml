(*
  Public Domain. Use at your own risk!
  Author: Martin Jambon <martin_jambon@emailuser.net>

  This is an extension of the "for" loop construct with an optional
  "step" specification:

  for i = n1 to n2 step n3 do
    expr
  done

  for i = n1 downto n2 step n3 do
    expr
  done

  The step specifier is an int which is evaluated once, before 
  the first iteration. This value is added to the loop counter
  after each iteration, so it will usually be positive when used
  with "to" loops and negative when used with "downto" loops. 

  Example:
  The following program prints "9630":
  let a = [| 0; 1; 2; 3; 4; 5; 6; 7; 8; 9 |]
  let _ =
    for i = Array.length a - 1 downto 0 step -3 do
      print_int a.(i)
    done;
    print_newline ()
*)

let unique =
  let n = ref 0 in
  fun () -> incr n; "__pa_forstep" ^ string_of_int !n

let forloop _loc var first df last e =
  <:expr< for $var$ = $first$ $to:df$ $last$ do { $e$ } >>

let expand _loc var first df last step e =
  match step with
      None -> forloop _loc var first df last e
    | Some <:expr< 1 >> when df -> forloop _loc var first true last e
    | Some <:expr< -1 >> when not df -> forloop _loc var first false last e
    | Some step ->
	let counter = unique () in
	let lastid = unique () in
	let stepid = unique () in
	let cmp = 
	  if df then "<="
	  else ">=" in
	<:expr< 
	let $lid:counter$ = ref ($first$ : int) in
	let $lid:lastid$ = $last$ in
	let $lid:stepid$ = $step$ in
	while $lid:cmp$ $lid:counter$.val $lid:lastid$ do
	  { let $lid:var$ = $lid:counter$.val in $e$; 
	    $lid:counter$.val := $lid:counter$.val + $lid:stepid$ } >>

EXTEND
  GLOBAL: Pcaml.expr;
  Pcaml.expr: LEVEL "expr1" [
    [ "for"; var = LIDENT; "="; first = SELF; 
      df = direction_flag; last = SELF; 
      step = OPT [ "step"; step = Pcaml.expr -> step ]; 
      "do"; e = SELF; "done" -> 
	expand _loc var first df last step e ]
  ];
  
  direction_flag: [ 
    [ "to" -> true
    | "downto" -> false ] 
  ];
END

