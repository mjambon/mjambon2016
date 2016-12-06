let _ = 
  let a = [| 123; 456 |] in
  List.iter 
    (fun i -> print_int i; 
       print_newline ()) 
    (LIST 1 2 3 a.(1))
