open Language.Types
open Shortcuts
open Lib

let dangerous =
  (sense_foe LeftAhead &* 
   (sense_foe RightAhead |* sense_foe Ahead)) |*
    (sense_foe Ahead &* sense_foe RightAhead)

let escape_if_dangerous =
  l_and [dangerous; u_turn; move]

let incr_mark : f =
  (l_ifelse test_mark0
     (l_ifelse test_mark1
	(l_ifelse test_mark2 
	   l_return (* 111 *)
	   set_mark2 (* 110 *))
	(l_ifelse test_mark2 
	   (l_sequence [clear_mark2; set_mark1]) (* 101 *)
	   set_mark2) (* 100 *)))
    (l_ifelse test_mark1
       (l_ifelse test_mark2 
	  (l_sequence [clear_mark2; clear_mark1; set_mark0]) (*011*)
	  set_mark2 (* 010 *))
       (l_ifelse test_mark2 
	  (l_sequence [clear_mark2; set_mark1]) (* 001 *)
	  set_mark2 (* 000 *)))

let all_empty = 
  l_and [sense_if_empty Ahead;
	 sense_if_empty RightAhead;
	 sense_if_empty LeftAhead]

let start_corner =
  l_or [
    all_empty; l_not (f2 turn_right);
    all_empty; l_not (f2 turn_right);
    all_empty; l_not (f2 turn_right);
    all_empty; l_not (f2 turn_right);
    all_empty; l_not (f2 turn_right);
    all_empty; l_not (f2 turn_right);
  ]

let see_food = sense_mark Ahead 4
let set_food_mark = mark 4
let has_food_mark = sense_mark Here 4

let see_guard = sense_mark Ahead 5
let set_guard_mark = mark 5

let protect_food =
  l_or [
    see_food; l_not (f2 turn_right);
    see_food; l_not (f2 turn_right);
    see_food; l_not (f2 turn_right);
    see_food; l_not (f2 turn_right);
    see_food; l_not (f2 turn_right);
    see_food; l_not (f2 turn_right);
  ]

let become_guard =
  l_or [
    l_and [see_guard; sense_if_empty Ahead; move]; l_not (f2 turn_right);
    l_and [see_guard; sense_if_empty Ahead; move]; l_not (f2 turn_right);
    l_and [see_guard; sense_if_empty Ahead; move]; l_not (f2 turn_right);
    l_and [see_guard; sense_if_empty Ahead; move]; l_not (f2 turn_right);
    l_and [see_guard; sense_if_empty Ahead; move]; l_not (f2 turn_right);
    l_and [see_guard; sense_if_empty Ahead; move]; l_not (f2 turn_right);
  ]

let set_guard_marks =
  l_and [
    f2 turn_left;
    move;
    f2 set_guard_mark;
    f2 turn_right;
    f2 turn_right;
    move;
    f2 turn_right;
    move;
    f2 set_guard_mark;
    u_turn;
    move;
    f2 turn_right;
  ]

let straight_mark = sub [
  "mark1", mark 1 "move1";
  "move1", f1 (l_while (l_not move) l_fail) "test-rock2";
  "mark2", mark 2 "move2";
  "move2", f1 (l_while (l_not move) l_fail) "test-rock0";
  "mark0", mark 0 "move0";
  "move0", f1 (l_while (l_not move) l_fail) "test-rock1";
  "test-rock0", sense_rock Ahead return "mark0";
  "test-rock1", sense_rock Ahead return "mark1";
  "test-rock2", sense_rock Ahead return "mark2";
]

let step = 
  l_sequence [escape_if_dangerous;
	      l_while (l_not go_where_you_can) (f2 turn_right)]

let maybe_mark : f =
  l_flip 15 incr_mark l_return

let miam = 
  l_and [test_food; l_not test_home]


let move_insist =
  let cycle = Array.to_list (Array.make (2 * 15) move) in
  l_or cycle


let search_home_path =
  l_sequence [
    escape_if_dangerous;
    l_switch [
      l_or [sense_mark Ahead 0;
	    sense_mark Ahead 1;
	    sense_mark Ahead 2], 
      move_insist;
      
      l_or [sense_mark RightAhead 0;
	    sense_mark RightAhead 1;
	    sense_mark RightAhead 2],
      l_sequence [f2 turn_right; move_insist];
      
      l_or [sense_mark LeftAhead 0;
	    sense_mark LeftAhead 1;
	    sense_mark LeftAhead 2],
      l_sequence [f2 turn_left; move_insist];
      
      l_return, step &* l_fail;
    ]]
    


let previous n =
  let n' = n - 1 in
  if n' < 0 then 2
  else n'

let orient_home_from n =
  l_while (l_not (sense_mark Ahead (previous n))) (f2 turn_right)

let straight_to_home =
  l_sequence [l_while (l_not test_home &* move_insist) l_return;
	      test_home]
  
let orient_home_path =
  l_switch [
    (sense_mark Here 0), orient_home_from 0;
    (sense_mark Here 1), orient_home_from 1;
    (sense_mark Here 2), orient_home_from 2;
  ]

let search_home =
  l_until 
    l_return
    (l_sequence [l_while (l_not search_home_path) (f2 turn_right);
		 orient_home_path;
		 straight_to_home])
  
let ant = [
  "start", start_corner "set-food-mark" "wait-a-little";
  "wait-a-little", f1 (wait 80) "protect-food";
  "protect-food", protect_food "set-first-guard-mark" "wait-for-guard-marks";
  "set-first-guard-mark", set_guard_mark "loop";
  "loop", Goto "loop";
  "wait-for-guard-marks", f1 (wait 60) "search-food";
  "set-food-mark", set_food_mark "set-first-mark";
  "set-first-mark", mark 0 "set-guard-marks";
  "set-guard-marks", set_guard_marks "straight-mark" "search-food";
  "straight-mark", f1 straight_mark "search-food";
  "search-food", f1 step "test-food";
  "test-food", miam "load-and-back" "search-food";
  "load-and-back", ign pickup "search-home";
  "search-home", ign step "test-safe-home";
  "test-safe-home", test_home "drop-and-go" "search-home";
  "drop-and-go", drop "maybe-become-guard";
  "maybe-become-guard", become_guard "protect-food" "search-food";
]
