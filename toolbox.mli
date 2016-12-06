(* The contents of this file is in the Public Domain. *)


(*** Scanning a whole channel ***)
val read_chan : (char -> 'a) -> in_channel -> unit


(*** Including a file ***)
val include_file : string -> unit


(*** Verbatim input in a HTML document ***)
val html_verbatim : string -> unit


(*** Calling an external program ***)
val command : string -> unit


(*** Recursive call to Camlmix ***)
val camlmix : string -> unit


(*** Catching the output of a command ***)
val slurp_command : string -> string


(*** Using an external filter or converter ***)
val kfeed : (char -> 'a) -> string -> string -> unit
val feed : string -> string -> unit
val ffeed : out_channel -> string -> string -> unit
val bfeed : Buffer.t -> string -> string -> unit
val sfeed : string -> string -> string


(*** Changing the printer only for the next block ***)
val print_with : (string -> unit) -> unit


(*** Conditional output of the next block ***)
val print_if : bool -> unit

