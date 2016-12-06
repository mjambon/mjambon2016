let _ =
  try
    failwith "this is not an error"
  finally
    print_endline "OK"
