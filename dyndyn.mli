(** This module implements arrays that are extensible from both sides. *)

type 'a t
(** The abstract type of double-extensible arrays.
  They can be considered as mutable double-ended lists as well 
  as regular arrays. The first index is 0 as in the standard array type. *)

val create : unit -> 'a t
(** creation of an empty array *)

val compact : 'a t -> unit
(** resize the array to minimize its memory occupancy *)

val add_first : 'a t -> 'a -> unit
(** add an element at the beginning of the list. Index of element [i]
   becomes [i+1]. *)

val add_last : 'a t -> 'a -> unit
(** add an element at the end of the list *)

exception Empty
exception Out_of_bounds

val length : 'a t -> int

val get : 'a t -> int -> 'a

val get_first : 'a t -> 'a
val get_last : 'a t -> 'a

val pop_slice : (int -> 'a -> 'b) -> 'a t -> int -> int -> unit
val remove_slice : 'a t -> int -> int -> unit

val pop_sub : (int -> 'a -> 'b) -> 'a t -> int -> int -> unit
val remove_sub : 'a t -> int -> int -> unit

val pop_first : 'a t -> 'a
val pop_last : 'a t -> 'a

val remove_first : 'a t -> unit
val remove_last : 'a t -> unit

val iter : ('a -> 'b) -> 'a t -> unit
val iteri : (int -> 'a -> 'b) -> 'a t -> unit
val rev_iter : ('a -> 'b) -> 'a t -> unit
val rev_iteri : (int -> 'a -> 'b) -> 'a t -> unit

val map : ('a -> 'b) -> 'a t -> 'b t
val mapi : (int -> 'a -> 'b) -> 'a t -> 'b t

val iter_slice : (int -> 'a -> 'b) -> 'a t -> int -> int -> unit
val iter_sub : (int -> 'a -> 'b) -> 'a t -> int -> int -> unit

val fold_left : ('a -> 'b -> 'a) -> 'a -> 'b t -> 'a
val fold_right : ('a -> 'b -> 'b) -> 'a t -> 'b -> 'b

val slice : 'a t -> int -> int -> 'a t
val sub : 'a t -> int -> int -> 'a t

val to_list : 'a t -> 'a list
val to_array : 'a t -> 'a array

val of_list : 'a list -> 'a t
val of_array : 'a array -> 'a t

val sort : ('a -> 'a -> int) -> 'a t -> unit
val rev : 'a t -> unit
