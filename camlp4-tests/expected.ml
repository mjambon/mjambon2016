
let _ =
  let __finally1 =
    try
      failwith "this is not an error";
      None
    with exn ->
      Some exn in
  print_endline "OK";
  match __finally1 with
      None -> ()
    | Some exn -> raise exn
