(*
  Polymorphic hash table using physical equality on the keys.

  In order for two keys to be considered identical, not only must 
  they have the same contents at any time (as seen by Hashtbl.hash),
  but they must also be physically identical. In general, mutable keys
  won't work.

  Released in the Public Domain. Use at your own risk.
  Author: Martin Jambon (January 2009)

  <a href="phys.mli">Download phys.mli</a>
  <a href="phys.ml">Download phys.ml</a>

*)

type ('a, 'b) t

val add : ('a, 'b) t -> 'a -> 'b -> unit
val clear : ('a, 'b) t -> unit
val copy : ('a, 'b) t -> ('a, 'b) t
val create : int -> ('a, 'b) t
val find : ('a, 'b) t -> 'a -> 'b
val find_all : ('a, 'b) t -> 'a -> 'b list
val fold : ('a -> 'b -> 'c -> 'c) -> ('a, 'b) t -> 'c -> 'c
val iter : ('a -> 'b -> unit) -> ('a, 'b) t -> unit
val length : ('a, 'b) t -> int
val mem : ('a, 'b) t -> 'a -> bool
val remove : ('a, 'b) t -> 'a -> unit
val replace : ('a, 'b) t -> 'a -> 'b -> unit
