#use "topfind";;
#camlp4o;;
#require "mikmatch_pcre";;

open Mikmatch

let _ =
  let s = Text.channel_contents stdin in
  let replace =
    REPLACE_FIRST "<" space* "body"~ _* Lazy ">" space* as body -> 
      body ^ Text.file_contents "hitcounter" in
  print_string (replace s)
