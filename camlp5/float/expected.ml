let f x =
  let pi = acos (-1.) in
  x /. (2. *. pi) -. x ** (2. /. 3.)

let _ = 
  let x = 2.5 in
  Printf.printf "%g -> %g\n" x (f x)
