type 'a gstring = string constraint 'a = [< `R | `W ]

type 'a readable = 'a gstring constraint 'a = [> `R]
type 'a writable = 'a gstring constraint 'a = [> `W]

type rstring = [ `R ] gstring
type rwstring = [ `R | `W ] gstring
type wstring = [ `W ] gstring

external import : string -> rwstring = "%identity"
external export : rwstring -> string = "%identity"

let freeze = String.copy
let freeze_import = String.copy
external unsafe_freeze : 'a readable -> rstring = "%identity"
external unsafe_import : string -> rstring = "%identity"

module Op =
struct
  let ( !! ) = String.copy
  external ( !% ) : string -> rwstring = "%identity"
  let ( ^% ) = ( ^ )
end

let output = output_string
let print = print_string
let print_endline = print_endline
let append = ( ^ )

include String
