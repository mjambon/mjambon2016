open Printf

let super_formula x =
  FLOAT
    begin
      1.23 * 10 - x
    end

let _ =
  printf "%g\n" (super_formula 3.)
