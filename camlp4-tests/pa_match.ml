let expand_match loc e l =
  match l with
      [ <:patt< True >>, None, e1;
	(<:patt< False >> | <:patt< _ >>), None, e2 ] 
    | [ <:patt< False >>, None, e2;
	(<:patt< True >> | <:patt< _ >>), None, e1 ] -> 

	true, <:expr< if $e$ then $e1$ else $e2$ >>

    | _ -> false, <:expr< match $e$ with [ $list:l$ ] >>

let expand_function loc l =
  match expand_match loc <:expr< __matchbool >> l with
      true, e -> <:expr< fun __matchbool -> $e$ >>
    | false, _ -> <:expr< fun [ $list:l$ ] >>


let match_case = Grammar.Entry.create Pcaml.gram "match_case";;

EXTEND
  GLOBAL: match_case;

  Pcaml.expr: LEVEL "expr1" [
    [ "match"; e = Pcaml.expr; "with"; 
	OPT "|"; cases = LIST1 match_case SEP "|" -> 
	  snd (expand_match loc e cases)
    | "function"; 
	OPT "|"; cases = LIST1 match_case SEP "|" -> 
	  expand_function loc cases ]
  ];

  match_case: [ 
    [ x1 = Pcaml.patt; 
      w = OPT [ "when"; e = Pcaml.expr -> e ]; "->"; 
      x2 = Pcaml.expr -> (x1, w, x2) ]
  ];
END;;
