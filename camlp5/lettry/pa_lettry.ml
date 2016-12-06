EXTEND
  GLOBAL: Pcaml.expr;

  Pcaml.expr: LEVEL "expr1" [
    [ "let"; "try"; o = OPT "rec"; l = LIST1 Pcaml.let_binding SEP "and"; 
      "in"; e = Pcaml.expr;
      "with"; pwel = LIST1 lettry_case SEP "|" ->
        <:expr< (try 
                   let $opt: o <> None$ $list:l$ in 
                   fun () -> $e$ 
		 with 
                   [ $list:pwel$ ]) () >>  ]
  ];

  lettry_case: [ 
    [ p = Pcaml.patt; 
      w = OPT [ "when"; e = Pcaml.expr -> e ]; "->"; 
      e = Pcaml.expr -> (p, Ploc.VaVal w, <:expr< fun () -> $e$ >>) ]
  ];
END;;
