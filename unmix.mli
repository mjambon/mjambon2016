val get :
  Lexing.lexbuf -> [ `Code of string | `Sep of string | `Text of string ] list
