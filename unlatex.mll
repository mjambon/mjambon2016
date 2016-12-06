let command_name = '\\' (( ['@''A'-'Z' 'a'-'z']+ '*'?) | [^ 'A'-'Z' 'a'-'z'])
rule get = parse
  | '%' [^'\n']* '\n'   { let s = Lexing.lexeme lexbuf in
			  `Comment s :: get lexbuf }
  | '%' [^'\n']* eof    { [`Comment (Lexing.lexeme lexbuf)] }
  | '$' [^'$']* '$'     { let s = Lexing.lexeme lexbuf in
			  `Math s :: get lexbuf }
  | '$' [^'$']* eof     { [`Math (Lexing.lexeme lexbuf)] }
  | command_name        { let s = Lexing.lexeme lexbuf in
			  `Command s :: get lexbuf }
  | [^'%' '$' '\\']+ 
  | _                   { let s = Lexing.lexeme lexbuf in
			  `Text s :: get lexbuf }
  
  | eof                 { [] }
