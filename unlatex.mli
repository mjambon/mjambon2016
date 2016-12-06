val get :
  Lexing.lexbuf ->
  [ `Command of string
  | `Comment of string
  | `Math of string
  | `Text of string ] list
