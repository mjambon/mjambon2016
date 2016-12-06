let rec cat () =
  let try c = input_char stdin in
  print_char c;
  cat ()
  with End_of_file -> ()

let _ = cat ()
