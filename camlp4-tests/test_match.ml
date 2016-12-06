let _ =
  match 1 = 1 with
      true -> print_endline "Right"
    | false -> print_endline "Wrong"

let f = function 
    false -> print_endline "Uncool"
  | _ -> print_endline "Cool"

let g = function 
    false when true -> print_endline "Uncool"
  | _ -> print_endline "Cool"

let _ = 
  f true;
  g true
