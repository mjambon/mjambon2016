(* Camlp4 syntax extension which allows the conversion of string literals
   without a copy *)

EXTEND
  Pcaml.expr: LEVEL "apply" [
    [ "!!"; e = [ s = STRING -> <:expr< Gstring.unsafe_import $str:s$ >>
		| e = Pcaml.expr -> <:expr< Gstring.freeze_import $e$ >> ] -> e ]
  ];
END
