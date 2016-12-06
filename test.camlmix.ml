module Camlmix =
struct
  let printer = ref (fun s -> print_string s; flush stdout)
end
let _ =
  !Camlmix.printer "";;
# 1 "test.camlmix"
   #use "toolbox.ml" let _ =
  !Camlmix.printer "\n\nHello World!\n";;
