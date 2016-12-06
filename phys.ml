(*
  Polymorphic hash table using physical equality on the keys.

  Released in the Public Domain. Use at your own risk.
  Author: Martin Jambon (January 2009)

  <a href="phys.mli">Download phys.mli</a>
  <a href="phys.ml">Download phys.ml</a>
*)

(*
  This implementation uses the Obj module which allows to transgress
  the type system. It is not regular OCaml.
*)

module Magic_key =
struct
  type t = Obj.t
  let equal = ( == )
  let hash = Hashtbl.hash
end

module Magic_table = Hashtbl.Make (Magic_key)


type ('a, 'b) t = 'b Magic_table.t

let add tbl k v = Magic_table.add tbl (Obj.repr k) v
let clear tbl = Magic_table.clear tbl
let copy tbl = Magic_table.copy tbl
let create n = Magic_table.create n
let find tbl k = Magic_table.find tbl (Obj.repr k)
let find_all tbl k = Magic_table.find_all tbl (Obj.repr k)
let fold f tbl accu = Magic_table.fold (Obj.magic f) (Obj.magic tbl) accu
let iter f tbl = Magic_table.iter (Obj.magic f) (Obj.magic tbl)
let length tbl = Magic_table.length tbl
let mem tbl k = Magic_table.mem tbl (Obj.repr k)
let remove tbl k = Magic_table.remove tbl (Obj.repr k)
let replace tbl k v = Magic_table.replace tbl (Obj.repr k) v
