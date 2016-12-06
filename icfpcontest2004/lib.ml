open Language.Types
open Shortcuts

type f = string -> string -> string instr

let f1 f st = f st st
let f2 f st1 st2 = f st1

let ign = f1
let dup = f2

(* Higher order functions dealing with type f *)

let l_or subtasks = 
  let rec build i = function
      [last] -> ["or" ^^ i, last return fail]
    | a :: rest -> 
	("or" ^^ i, a return ("or" ^^ (i+1))) :: build (i+1) rest
    | [] -> invalid_arg "log_or" in
  sub (build 0 subtasks)

let l_and subtasks = 
  let rec build i = function
      [last] -> ["and" ^^ i, last return fail]
    | a :: rest -> 
	("and" ^^ i, a ("and" ^^ (i+1)) fail) :: build (i+1) rest
    | [] -> invalid_arg "log_and" in
  sub (build 0 subtasks)

let l_not subt st1 st2 = subt st2 st1

let ( |* ) subt1 subt2 = l_or [subt1; subt2]
let ( &* ) subt1 subt2 = l_and [subt1; subt2]

let l_xor subt1 subt2 = 
  (subt1 &* l_not subt2) |* (l_not subt1 &* subt2)

let l_while subt1 subt2 = sub [ 
  "while0", subt1 "while1" return;
  "while1", subt2 "while0" "while0";
]

let l_until subt1 subt2 = sub [
  "until0", subt1 "until1" "until1";
  "until1", subt2 return "until0";
]

let l_if subt1 subt2 = sub [
  "if0", subt1 "if1" return;
  "if1", subt2 return return;
]

let l_ifnot subt = l_if (l_not subt)

let l_ifelse subt1 subt2 subt3 = sub [
  "ifelse0", subt1 "ifelse1" "ifelse2";
  "ifelse1", subt2 return return;
  "ifelse2", subt3 return return;
]

let exec subt = subt return fail

let l_return st1 st2 = Return
let l_fail st1 st2 = Fail

let l_choose l =
  let p = List.length l in
  if p <= 0 then invalid_arg "l_choose";
  let a = Array.of_list l in
  let b = 
    Array.mapi 
      (fun i subt ->
	 if i < p - 1 then
	   [ ("choose" ^^ i, flip (p - i) ("exec" ^^ i) ("choose" ^^ (i + 1)));
	     ("exec" ^^ i, exec subt) ]
	 else [("choose" ^^ i, exec subt)])
       a in
  sub (List.flatten (Array.to_list b))

let l_sequence l =
  let rec build i = function
      [last] -> [("seq" ^^ i, exec last)]
    | hd :: tl ->
	("seq" ^^ i, ign hd ("seq" ^^ (i + 1))) :: build (i + 1) tl
    | [] -> invalid_arg "l_sequence" in
  sub (build 0 l)


let l_case a b = sub [
  "case0", a "case1" fail;
  "case1", b return return 
]

let l_switch l =
  let rec build i = function
      [(case, action)] -> [("switch" ^^ i, (case &* action) return fail)]
    | (case, action) :: rest ->
	("switch" ^^ i, l_case case action return ("switch" ^^ (i + 1))) ::
	  build (i + 1) rest
    | [] -> invalid_arg "l_switch" in
  sub (build 0 l)
  
let l_flip p = l_ifelse (flip p)

(* Specialized functions *)

let sense_food d : f = sense' Food d
let sense_home d : f = sense' Home d 
let sense_rock d : f = sense' Rock d 
let sense_friend d : f = sense' Friend d 
let sense_foe d : f = sense' Foe d
let sense_mark d i : f = sense' (Marker i) d

let test_food : f = sense_food Here 
let test_home : f = sense_home Here 
let test_mark i : f = sense_mark Here i
let test_mark0 = test_mark 0
let test_mark1 = test_mark 1
let test_mark2 = test_mark 2
let test_mark3 = test_mark 3
let test_mark4 = test_mark 4
let test_mark5 = test_mark 5

let turn_left st = turn Left st
let turn_right st = turn Right st

let set_mark i : f = f2 mark i
let set_mark0 = set_mark 0
let set_mark1 = set_mark 1
let set_mark2 = set_mark 2
let set_mark3 = set_mark 3
let set_mark4 = set_mark 4
let set_mark5 = set_mark 5

let clear_mark i : f = f2 unmark i
let clear_mark0 = clear_mark 0
let clear_mark1 = clear_mark 1
let clear_mark2 = clear_mark 2
let clear_mark3 = clear_mark 3
let clear_mark4 = clear_mark 4
let clear_mark5 = clear_mark 5

let sense_if_empty d =
  l_not (l_or [sense_rock d; sense_friend d; sense_foe d])

let go_if_empty d =
  if d = Ahead then
    l_and [sense_if_empty d; move]
  else
    l_and [sense_if_empty d; dup (turn (lr d)); move]

let go_where_you_can = 
  l_or [go_if_empty Ahead; go_if_empty RightAhead; go_if_empty LeftAhead]

let u_turn =
  let t = f2 turn_right in
  l_sequence [t; t; t]

let wait n =
  let l = Array.to_list (Array.make n (flip 1)) in
  l_sequence l
