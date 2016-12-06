(*
Copyright (c) 2006 Martin Jambon <martin_jambon@emailuser.net>
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions
are met:
1. Redistributions of source code must retain the above copyright
   notice, this list of conditions and the following disclaimer.
2. Redistributions in binary form must reproduce the above copyright
   notice, this list of conditions and the following disclaimer in the
   documentation and/or other materials provided with the distribution.
3. The name of the author may not be used to endorse or promote products
   derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR
IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT,
INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*)

(*
  This is a syntax extension of OCaml which allows out-of-bounds accesses 
  of arrays and alike to be reported with the exact location 
  in the source code.

  See http://martin.jambon.free.fr/pa_bounds/README for details.
*)


open Printf
open Lexing

let prefix = "__pa_bounds"
let unique = let n = ref 0 in fun () -> incr n; prefix ^ (string_of_int !n)

let locate kind _loc (dim, format, format_index, format_length) =
  let start, stop = _loc in
  let index, length = 
    match dim with
	1 -> "index", "length"
      | n -> "indices", "lengths" in
  let msg = 
    let char1 = start.pos_cnum - start.pos_bol in
    let char2 = char1 + stop.pos_cnum - start.pos_cnum in
    sprintf "File %S, line %i, characters %i-%i:\n\
             index out of %s bounds (%s = %%%s; %s = %%%s)"
      !Pcaml.input_file (*start.pos_fname*) start.pos_lnum 
      char1 char2 kind index format length format in
  let s = String.escaped msg in
  <:expr< do { raise 
		 (Invalid_argument 
		    (Printf.sprintf $str:s$ $format_index$ $format_length$)) }
  >>

let vector_set name modul _loc e1 e2 e3 = 
  let v = prefix ^ "v" in
  let i = prefix ^ "i" in
  let x = prefix ^ "x" in
  let msg = (1, "i", 
	     <:expr< $lid:i$ >>,
	     <:expr< $uid:modul$.length $lid:v$ >>) in
  <:expr< 
  let $lid:x$ = $e3$ in
  let $lid:v$ = $e1$ in
  let $lid:i$ = $e2$ in 
  if $lid:i$ < 0 || $lid:i$ >= $uid:modul$.length $lid:v$ then
    $locate name _loc msg$
  else 
    $uid:modul$.unsafe_set $lid:v$ $lid:i$ $lid:x$ 
  >>

let array_set = vector_set "array" "Array"
let string_set = vector_set "string" "String"

let print_ints _loc l =
  let sformat =
    "(" ^ String.concat ", " (List.map (fun id -> "%i") l) ^ ")" in
  let f = <:expr< Printf.sprintf $str:String.escaped sformat$ >> in
  List.fold_left (fun f e -> <:expr< $f$ $e$ >>) f l

let print_int_array _loc len x =
  let a = Array.init len 
	    (fun i -> <:expr< $lid:x$.($int:string_of_int i$) >>) in
  let l = Array.to_list a in
  print_ints _loc l

let bigarray1_msg _loc i x =
  1, "i", <:expr< $lid:i$ >>, <:expr< Bigarray.Array1.dim $lid:x$ >>

let bigarray2_msg _loc i j x =
  2, "s", 
  <:expr< Printf.sprintf "(%i, %i)" $lid:i$ $lid:j$ >>, 
  <:expr< Printf.sprintf "(%i, %i)" 
            (Bigarray.Array2.dim1 $lid:x$)
            (Bigarray.Array2.dim2 $lid:x$) >>

let bigarray3_msg _loc i j k x =
  3, "s", 
  <:expr< Printf.sprintf "(%i, %i, %i)" $lid:i$ $lid:j$ $lid:k$ >>, 
  <:expr< Printf.sprintf "(%i, %i, %i)" 
	    (Bigarray.Array3.dim1 $lid:x$)
	    (Bigarray.Array3.dim2 $lid:x$)
	    (Bigarray.Array3.dim3 $lid:x$) >>

let bigarrayn_msg _loc len indices x =
  len, "s",
  print_int_array _loc len indices,
  <:expr< let dims = Bigarray.Genarray.dims $lid:x$ in
          $print_int_array _loc len "dims"$ >>


let bigarray_set _loc f b args x =
  let b_id = unique () in
  let arg_bindings = List.map (fun arg -> (unique (), arg)) args in
  let x_id = unique () in
  let msg = 
    match arg_bindings with
       [ (indices, <:expr< [| $list:l$ |] >>) ] -> 
	  let len = List.length l in
	  bigarrayn_msg _loc len indices b_id
      |	[ (i, _) ] -> bigarray1_msg _loc i b_id
      | [ (i, _); (j, _) ] -> bigarray2_msg _loc i j b_id
      | [ (i, _); (j, _); (k, _) ] -> bigarray3_msg _loc i j k b_id
      | _ -> assert false in
  let bindings = (b_id, b) :: (arg_bindings @ [(x_id, x)]) in
  let app = 
    List.fold_left (fun f (id, _) -> <:expr< $f$ $lid:id$ >>) f bindings in
  let catch =
    <:expr< 
    try $app$
    with [ Invalid_argument _ -> 
	     $locate "bigarray" _loc msg$ ] >> in
  List.fold_right 
    (fun (id, arg) e -> <:expr< let $lid:id$ = $arg$ in $e$ >>)
    bindings catch

let bigarray1_set _loc b c1 x =
  bigarray_set _loc <:expr< Bigarray.Array1.set >> b [ c1 ] x

let bigarray2_set _loc b c1 c2 x =
  bigarray_set _loc <:expr< Bigarray.Array2.set >> b [ c1; c2 ] x

let bigarray3_set _loc b c1 c2 c3 x =
  bigarray_set _loc <:expr< Bigarray.Array3.set >> b [ c1; c2; c3 ] x

let bigarrayn_set _loc b l x =
  bigarray_set _loc <:expr< Bigarray.Genarray.set >> 
  b [ <:expr< [| $list:l$ |] >> ] x


let vector_get initial name modul _loc e1 e2 = 
  let v = prefix ^ initial in
  let i = prefix ^ "i" in
  let msg = (1, "i", 
	     <:expr< $lid:i$ >>, <:expr< $uid:modul$.length $lid:v$ >>) in
  <:expr< 
  let $lid:v$ = $e1$ in
  let $lid:i$ : int = $e2$ in 
  if $lid:i$ < 0 || $lid:i$ >= $uid:modul$.length $lid:v$ then
    $locate name _loc msg$
  else
    $uid:modul$.unsafe_get $lid:v$ $lid:i$
  >>

let array_get = vector_get "a" "array" "Array"
let string_get = vector_get "s" "string" "String"

let bigarray_get _loc arr coords =
  let b1 = prefix ^ "b1" in
  let b2 = prefix ^ "b2" in
  let b3 = prefix ^ "b3" in
  let bn = prefix ^ "bn" in
  let i = prefix ^ "i" in
  let j = prefix ^ "j" in
  let k = prefix ^ "k" in
  let indices = prefix ^ "indices" in
  let pi = <:patt< $lid:i$ >> and ei = <:expr< $lid:i$ >> in
  let pj = <:patt< $lid:j$ >> and ej = <:expr< $lid:j$ >> in
  let pk = <:patt< $lid:k$ >> and ek = <:expr< $lid:k$ >> in
  match coords with
      [c1] -> 
	(let msg = bigarray1_msg _loc i b1 in
	 <:expr< 
	 let $lid:b1$ = $arr$ in 
	 let $pi$ : int = $c1$ in 
	 try Bigarray.Array1.get $lid:b1$ $ei$
	 with [ Invalid_argument _ -> $locate "bigarray" _loc msg$ ] >>)
    | [c1; c2] ->
	(let msg = bigarray2_msg _loc i j b2 in
	 <:expr< 
	 let $lid:b2$ = $arr$ in
	 let $pi$ : int = $c1$ in
	 let $pj$ : int = $c2$ in 
	 try Bigarray.Array2.get $lid:b2$ $ei$ $ej$
	 with [ Invalid_argument _ -> $locate "bigarray" _loc msg$ ] >>)
    | [c1; c2; c3] ->
	(let msg = bigarray3_msg _loc i j k b3 in
	 <:expr< 
	 let $lid:b3$ = $arr$ in
	 let $pi$ : int = $c1$ in
	 let $pj$ : int = $c2$ in
	 let $pk$ : int = $c3$ in 
	 try Bigarray.Array3.get $lid:b3$ $ei$ $ej$ $ek$
	 with [ Invalid_argument _ -> $locate "bigarray" _loc msg$ ] >>)
    | coords ->
	(let len = List.length coords in
	 let msg = bigarrayn_msg _loc len indices bn in
	 <:expr< 
	 let $lid:bn$ = $arr$ in
	 let $lid:indices$ = [| $list:coords$ |] in
	 try Bigarray.Genarray.get $lid:bn$ $lid:indices$
	 with [ Invalid_argument _ -> $locate "bigarray" _loc msg$ ] >>)


let bigarray_native_get _loc arr coords =
  match coords with
      [c1] -> <:expr< Bigarray.Array1.get $arr$ $c1$ >>
    | [c1; c2] -> <:expr< Bigarray.Array2.get $arr$ $c1$ $c2$ >>
    | [c1; c2; c3] -> <:expr< Bigarray.Array3.get $arr$ $c1$ $c2$ $c3$ >>
    | coords -> <:expr< Bigarray.Genarray.get $arr$ [| $list:coords$ |] >>

let bigarray_native_set _loc var newval =
  match var with
      <:expr< Bigarray.Array1.get $arr$ $c1$ >> ->
       Some <:expr< Bigarray.Array1.set $arr$ $c1$ $newval$ >>
    | <:expr< Bigarray.Array2.get $arr$ $c1$ $c2$ >> ->
       Some <:expr< Bigarray.Array2.set $arr$ $c1$ $c2$ $newval$ >>
    | <:expr< Bigarray.Array3.get $arr$ $c1$ $c2$ $c3$ >> ->
       Some <:expr< Bigarray.Array3.set $arr$ $c1$ $c2$ $c3$ $newval$ >>
    | <:expr< Bigarray.Genarray.get $arr$ [| $list:coords$ |] >> ->
       Some <:expr< Bigarray.Genarray.set $arr$ [| $list:coords$ |] $newval$ >>
    | _ -> None

let native_set _loc e1 e2 =
  match bigarray_native_set _loc e1 e2 with
      None -> <:expr< $e1$ := $e2$ >>
    | Some e -> e

let set _loc access e3 =
  let _loc = MLast.loc_of_expr access in
  assert (prefix = "__pa_bounds");
  match access with
      <:expr< 
      let __pa_boundsa = $e1$ in
      let __pa_boundsi = $e2$ in $_$ >> -> array_set _loc e1 e2 e3
    | <:expr< 
      let __pa_boundss = $e1$ in
      let __pa_boundsi = $e2$ in $_$ >> -> string_set _loc e1 e2 e3
    | <:expr< 
      let __pa_boundsb1 = $b$ in 
      let __pa_boundsi = $c1$ in 
      $_$ >> -> bigarray1_set _loc b c1 e3
    | <:expr< 
      let __pa_boundsb2 = $b$ in
      let __pa_boundsi = $c1$ in
      let __pa_boundsj = $c2$ in 
      $_$ >> -> bigarray2_set _loc b c1 c2 e3
    | <:expr< 
      let __pa_boundsb3 = $b$ in
      let __pa_boundsi = $c1$ in
      let __pa_boundsj = $c2$ in
      let __pa_boundsk = $c3$ in 
      $_$ >> -> bigarray3_set _loc b c1 c2 c3 e3
    | <:expr< 
      let __pa_boundsbn = $b$ in
      let __pa_boundsindices = [| $list:coords$ |] in
      $_$ >> -> bigarrayn_set _loc b coords e3
    | e -> native_set _loc e e3


open Pcaml

let extend native regular =
  if regular then
    begin
      (try DELETE_RULE expr : SELF; "<-"; expr LEVEL "expr1" END
       with Not_found -> eprintf "Warning: cannot delete \"<-\" rule\n%!");

       EXTEND
         expr: LEVEL ":=" [
	   [ e1 = SELF; "<-"; e2 = expr LEVEL "expr1" -> 
	       if !native then native_set _loc e1 e2
	       else set _loc e1 e2 ]
         ];
       END
    end
  else
    begin
      EXTEND
	expr: LEVEL ":=" [
	  [ e1 = SELF; ":="; e2 = expr LEVEL "top" ->
	      if !native then native_set _loc e1 e2
	      else set _loc e1 e2 ]
	];
      END;
    end;

  EXTEND
    expr: LEVEL "." [
      [ e1 = SELF; "#"; "("; e2 = SELF; ")" -> 
	  if !native then <:expr< $e1$.($e2$) >>
	  else array_get _loc e1 e2
      | e1 = SELF; "#"; "["; e2 = SELF; "]" -> 
	  if !native then <:expr< $e1$.[$e2$] >>
	  else string_get _loc e1 e2
      | e1 = SELF; "#"; "{"; e2 = LIST1 expr LEVEL ":=" SEP ","; "}" ->
	  if !native then bigarray_native_get _loc e1 e2
	  else bigarray_get _loc e1 e2 ]
    ];
   END


let _ =
  let native = ref false in
  Pcaml.add_option "-native" 
    (Arg.Set native)
    " use native array, string or bigarray access";

  extend native (!Pcaml.syntax_name = "OCaml")
