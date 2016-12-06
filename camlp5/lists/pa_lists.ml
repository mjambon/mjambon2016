let expr_list loc l =
  List.fold_right 
    (fun head tail -> <:expr< [ $head$ :: $tail$ ] >>)
    l
    <:expr< [] >>


EXTEND
  Pcaml.expr: [
    [ "LIST"; l = LIST0 Pcaml.expr LEVEL "." -> expr_list loc l ]
  ];
END;;
