open Bigarray

let main () =
  let a = [| 0; 1; 2 |] in
  let s = "abc" in
  let b1 = Array1.create float64 c_layout 3 in
  let b2 = Array2.create float64 c_layout 3 3 in
  let b3 = Array3.create float64 c_layout 3 3 3 in
  let bn = Genarray.create float64 c_layout [| 3; 3; 3; 3 |] in
  a#(5) <- 0;
  bn#{0,0,0,0} <- 1.2;
  bn#{-1,12,5,22} <- 1.2;
  b2#{-1,12} <- 1.2;
  s#[12] <- 'z';
  ignore a#(10+10);
  ignore b1#{10+10};
  ignore b1.{0};
  ignore s#[10+10];
  b1#{128} <- 1.23;
  b3#{-1,12,5} <- 1.2

let _ = 
  try main ()
  with Invalid_argument s -> 
    Printf.eprintf "Invalid argument:\n%s\n" s; exit 1
