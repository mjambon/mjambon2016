(* 
   Gstring: mixed mutable and immutable string type based on the standard 
   string type.

   This is just a demonstration, but anyone is welcome to use
   and modify any part of this package.

   Author: Martin Jambon
   Date: May 2006
*)

(* Polymorphic string type which includes read-only, write-only and read-write
   string types: *)
type 'a gstring constraint 'a = [< `R | `W ]

(* Other polymorphic types. Readability refers to the content of the string,
   not its length which is always accessible, even in the write-only type. *)
type 'a readable = 'a gstring constraint 'a = [> `R]
type 'a writable = 'a gstring constraint 'a = [> `W]

(* Non polymorphic types: read-only, read-write and write-only *)
type rstring = [ `R ] gstring
type rwstring = [ `R | `W ] gstring
type wstring = [ `W ] gstring

(* The goal of this module is to provide constant strings, 
   so it is the "default" type: *)
type t = rstring

(* Type conversions from/to the standard string type (shared, no copy) *)
external import : string -> 'a writable = "%identity"
external export : 'a writable -> string = "%identity"

(* Conversions involving copy (safe) *)
val freeze : 'a readable -> rstring
val freeze_import : string -> rstring

(* Conversion without copy! The argument is physically the same
   as the result. *)
external unsafe_freeze : 'a readable -> rstring = "%identity"
external unsafe_import : string -> rstring = "%identity"

(* Shortcuts *)
module Op :
sig
  (* import + freeze *)
  val ( !! ) : string -> rstring
  (* import *)
  external ( !% ) : string -> 'a writable = "%identity"
  (* mixed append *)
  val ( ^% ) : 'a readable -> 'b readable -> rstring
end

(* Copy (export) *)
val copy : 'a readable -> string

(* Stuff from Pervasives *)
val output : out_channel -> 'a readable -> unit
val print : 'a readable -> unit
val print_endline : 'a readable -> unit
val append : 'a readable -> 'a readable -> 'a readable

(* Modified interface of String *)
external length : 'a gstring -> int = "%string_length"
external get : 'a readable -> int -> char = "%string_safe_get"
external set : 'a writable -> int -> char -> unit = "%string_safe_set"
external create : int -> 'a writable = "caml_create_string"
val make : int -> char -> rstring
val sub : 'a readable -> int -> int -> 'a readable
val fill : 'a writable -> int -> int -> char -> unit
val blit : 'a readable -> int -> 'b writable -> int -> int -> unit
val concat : 'a readable -> 'b readable list -> 'b readable
val iter : (char -> unit) -> 'a readable -> unit
val escaped : 'a readable -> 'a readable
val index : 'a readable -> char -> int
val rindex : 'a readable -> char -> int
val index_from : 'a readable -> int -> char -> int
val rindex_from : 'a readable -> int -> char -> int
val contains : 'a readable -> char -> bool
val contains_from : 'a readable -> int -> char -> bool
val rcontains_from : 'a readable -> int -> char -> bool
val uppercase : 'a readable -> 'a readable
val lowercase : 'a readable -> 'a readable
val capitalize : 'a readable -> 'a readable
val uncapitalize : 'a readable -> 'a readable
val compare : 'a readable -> 'a readable -> int
external unsafe_get : 'a readable -> int -> char = "%string_unsafe_get"
external unsafe_set : 'a writable -> int -> char -> unit = "%string_unsafe_set"
external unsafe_blit : 'a readable -> int -> 'b writable -> int -> int -> unit
  = "caml_blit_string" "noalloc"
external unsafe_fill : 'a writable -> int -> int -> char -> unit
  = "caml_fill_string" "noalloc"
