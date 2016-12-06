let insert_this () =
  let loc = Token.dummy_loc in
  (<:str_item< value version = "1.2.3" >>, loc)

let _ =
  let first = ref true in
  let parse strm =
    let (l, stopped) = Grammar.Entry.parse Pcaml.implem strm in
    let l' = 
      if !first then
	insert_this () :: l
      else l in
    (l', stopped) in
  Pcaml.parse_implem := parse
