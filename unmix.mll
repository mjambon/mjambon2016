{
  let buf = Buffer.create 10000
  let add lexbuf = 
    Buffer.add_string buf (Lexing.lexeme lexbuf)
  let get () = 
    let s = Buffer.contents buf in
    Buffer.clear buf;
    s
}
rule code = parse
  "."? "###" "#"*    { add lexbuf; code lexbuf }
| "."? "##"          { let x = get () in
		       let sep = Lexing.lexeme lexbuf in
		       `Code x :: `Sep sep :: text lexbuf }
| [^'.' '#']+ 
| _                  { add lexbuf; code lexbuf }
| eof                { [`Code (get ())] }
and text = parse
  "###" "#"*         { add lexbuf; text lexbuf }
| "##" "."?          { let x = get () in
		       let sep = Lexing.lexeme lexbuf in
		       `Text x :: `Sep sep :: code lexbuf }
| [^'.' '#']+ 
| _                  { add lexbuf; text lexbuf }
| eof                { [`Text (get ())] }
{
  let get lexbuf =
    Buffer.clear buf;
    text lexbuf
}
