type 'a t = 
    { mutable array : 'a option array;
      mutable first : int;
      mutable last : int }

let create () =
  { array = Array.make 2 None;
    first = 1;
    last = 0 }

let copy t =
  { array = Array.copy t.array;
    first = t.first;
    last = t.last }

let grow t =
  let array = t.array in
  let first = t.first in
  let len = Array.length array in
  let new_len = min (len * 2) Sys.max_array_length in
  let new_first = 
    if first > 0 then first
    else len in
  let size = t.last - first + 1 in
  let new_array = Array.make new_len None in
  for i = 0 to size - 1 do
    new_array.(new_first + i) <- array.(first + i)
  done;
  t.array <- new_array;
  t.first <- new_first;
  t.last <- new_first + size - 1

let compact t =
  let array = t.array in
  let len = Array.length array in
  if len > 2 then
    let first = t.first in
    let new_len = t.last - first + 1 in
    let new_array = Array.make new_len None in
    for i = 0 to new_len - 1 do
      new_array.(i) <- array.(first + i)
    done;
    t.first <- 0;
    t.last <- new_len - 1;
    t.array <- new_array 

let maybe_compact t =
  if (t.last - t.first + 1) < Array.length t.array / 4 then
    compact t


let rec add_first t x =
  if t.first = 0 then
    (grow t;
     add_first t x)
  else
    let i = t.first - 1 in
    t.first <- i;
    t.array.(i) <- Some x

let rec add_last t x =
  if t.last = Array.length t.array - 1 then
    (grow t;
     add_last t x)
  else
    let i = t.last + 1 in
    t.last <- i;
    t.array.(i) <- Some x

exception Empty
exception Out_of_bounds

let unopt = function
    Some x -> x
  | None -> assert false

let length t = t.last - t.first + 1

let get t i =
  let j = t.first + i in
  if j >= t.first && j <= t.last then
    unopt t.array.(j)
  else
    raise Out_of_bounds

let set t i x =
  let j = t.first + i in
  if j >= t.first && j <= t.last then
    t.array.(j) <- Some x
  else
    raise Out_of_bounds

let get_first t =
  if length t = 0 then
    raise Empty
  else
    unopt t.array.(t.first)

let get_last t =
  if length t = 0 then
    raise Empty
  else
    unopt t.array.(t.last)


let pop_slice f t i j =
  let first = t.first in
  let last = t.last in
  let ii = first + i in
  let jj = first + j in
  if ii >= first && jj <= last then
    let a = t.array in
    let n = j - i + 1 in
    for k = ii to jj do
      f (k - first) (unopt a.(k));
    done;
    let new_last = last - n in
    for k = jj + 1 to last do
      a.(k - n) <- a.(k);
      if k >= new_last then
	a.(k) <- None
    done;
    t.last <- last - n;
    maybe_compact t
  else
    raise Out_of_bounds

let remove_slice t i j = pop_slice (fun k x -> ()) t i j

let pop_sub f t first len = 
  pop_slice f t first (first + len - 1)

let remove_sub t first len =
  pop_slice (fun k x -> ()) t first (first + len - 1)


let pop_first t =
  if length t = 0 then
    raise Empty
  else
    (let j = t.first in
     let a = t.array in
     let x = unopt a.(j) in
     a.(j) <- None;
     t.first <- succ j;
     maybe_compact t;
     x)

let pop_last t =
  if length t = 0 then
    raise Empty
  else
    (let j = t.last in
     let a = t.array in
     let x = unopt a.(j) in
     a.(j) <- None;
     t.last <- pred j;
     maybe_compact t;
     x)

let remove_first t = ignore (pop_first t)
let remove_last t = ignore (pop_last t)


let iter f t =
  let a = t.array in
  for j = t.first to t.last do
    f (unopt a.(j))
  done

let iteri f t =
  let a = t.array in
  let first = t.first in
  for j = first to t.last do
    f (j - first) (unopt a.(j))
  done

let rev_iter f t =
  let a = t.array in
  for j = t.last downto t.first do
    f (unopt a.(j))
  done

let rev_iteri f t =
  let a = t.array in
  let first = t.first in
  for j = t.last downto first do
    f (j - first) (unopt a.(j))
  done

let map f t =
  let a = t.array in
  let b = Array.make (Array.length a) None in
  for j = t.first to t.last do
    b.(j) <- Some (f (unopt a.(j)))
  done;
  { array = b;
    first = t.first;
    last = t.last }

let mapi f t =
  let a = t.array in
  let b = Array.make (Array.length a) None in
  let first = t.first in
  for j = first to t.last do
    b.(j) <- Some (f (j - first) (unopt a.(j)))
  done;
  { array = b;
    first = first;
    last = t.last }

let iter_slice f t i j =
  let a = t.array in
  let first = t.first in
  let first_k = first + i
  and last_k = first + j in
  if first < 0 || last_k > t.last - first then
  for k = first_k to last_k do
    f (k - first) (unopt a.(k))
  done

let iter_sub f t first len = iter_slice f t first (first + len - 1)

let fold_left f init t =
  let result = ref init in
  let a = t.array in
  for j = t.first to t.last do
    result := f !result (unopt a.(j))
  done;
  !result

let fold_right f t init =
  let result = ref init in
  let a = t.array in
  for j = t.last downto t.first do
    result := f (unopt a.(j)) !result 
  done;
  !result
 

let slice t first last =
  let result = create () in
  iter_slice (fun k x -> add_last result x) t first last;
  result

let sub t first len = slice t first (first + len - 1)


let to_list t = fold_right (fun x accu -> x :: accu) t []

let to_array t =
  let first = t.first
  and last = t.last in
  let len = last - first + 1 in
  if len = 0 then [| |]
  else
    let a = t.array in
    let b = Array.make len (unopt a.(first)) in
    for i = 0 to len - 1 do
      b.(i) <- unopt a.(i + first)
    done;
    b

let of_list l =
  let t = create () in
  List.iter (add_last t) l;
  t

let of_array a =
  let t = create () in
  Array.iter (add_last t) a;
  t

let sort cmp t =
  let b = to_array t in
  Array.sort cmp b;
  let a = t.array in
  let first = t.first in
  Array.iteri (fun i x -> a.(i + first) <- Some x) b


let rev t =
  let a = t.array in
  let rec swap first last =
    if first < last then
      let tmp = a.(first) in
      a.(first) <- a.(last);
      a.(last) <- tmp;
      swap (succ first) (pred last)
    else () in
  swap t.first t.last



let append_last t1 t2 =
  iter (add_last t1) t2

let append_first t1 t2 =
  iter (add_first t1) t2

let concat l =
  let t = create () in
  List.iter (append_last t) l;
  t

let exists p t =
  try iter (fun x -> if p x then raise Exit) t; false
  with Exit -> true

let find p t =
  let result = ref None in
  try 
    iter (fun x -> if p x then (result := Some x; raise Exit)) t;
    raise Not_found
  with Exit -> unopt !result

let filter p t =
  let result = create () in
  iter (fun x -> if p x then add_last result x) t;
  result

let mem x t = exists (( = ) x) t
let memq x t = exists (( == ) x) t


let a = create ();;
add_first a 1;;
add_first a 2;;
add_first a 3;;
add_last a 4;;
add_last a 5;;
add_last a 6;;
get_first a;;
get_last a;;
compact a;;
add_first a 7;;
get a 0;;
length a;;
get a (length a - 1);;
pop_last a;;
pop_first a;;
iter_slice (fun i x -> print_int x) a 1 2;;
map string_of_int a;;
to_array (slice a 2 4);;
to_list (sub a 2 3);;
to_list a;;
sort compare a;;
to_list a;;
remove_slice a 2 3;;
to_list a;;
add_last a 8;;
add_first a 9;;
to_list a;;
pop_slice (fun i x -> print_int x) a 1 3;;
to_list a;;
rev a;;
to_list a;;
let b = of_list [0;1;2;3;4;5;6;7;8;9];;
b;;
remove_sub b 1 8;;
b;;
