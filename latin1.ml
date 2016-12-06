(* 
   Alphabetical ordering of ASCII or Latin1 (iso-8859-1) characters
   and strings of characters.

   Function "compare" compares characters.
   Function "compare_strings" compares strings.

   Uppercase/lowercase conversions are already implemented in the standard
   Char module.
*)

(* 
   Author(s): Martin Jambon
   Requirements: Objective Caml (OCaml)
   This file is in the public domain. 
*)

let characters = 
  [| (* non-alphanumeric characters in original order *)
    '\000'; '\001'; '\002'; '\003'; '\004'; '\005'; '\006'; '\007'; '\008';
    '\t'; '\n'; '\011'; '\012'; '\013'; '\014'; '\015'; '\016'; '\017'; '\018';
    '\019'; '\020'; '\021'; '\022'; '\023'; '\024'; '\025'; '\026'; '\027';
    '\028'; '\029'; '\030'; '\031'; ' '; '!'; '"'; '#'; '$'; '%'; '&'; '\'';
    '('; ')'; '*'; '+'; ','; '-'; '.'; '/'; 
    ':'; ';'; '<'; '='; '>'; '?'; '@'; 
    '['; '\\'; ']'; '^'; '_'; '`';
    '{'; '|'; '}'; '~'; '\127'; 

    '\128';
    '\129'; '\130'; '\131'; '\132'; '\133'; '\134'; '\135'; '\136'; '\137';
    '\138'; '\139'; '\140'; '\141'; '\142'; '\143'; '\144'; '\145'; '\146';
    '\147'; '\148'; '\149'; '\150'; '\151'; '\152'; '\153'; '\154'; '\155';
    '\156'; '\157'; '\158'; '\159'; '�'; '�'; '�'; '�'; '�'; '�'; '�'; '�';
    '�'; '�'; '�'; '�'; '�'; '�'; '�'; '�'; '�'; '�'; '�'; '�'; '�';
    '�'; '�'; '�'; '�'; '�';
    '�'; '�';
    
    (* digits and numbers *)
    '0'; '�'; '�'; '�'; '1'; '�'; '2'; '�'; '3'; '�'; '4'; 
    '5'; '6'; '7'; '8'; '9'; 
    
    (* letters *)
    'A'; '�'; '�'; '�'; '�'; '�'; '�'; '�'; 'a'; '�'; '�'; '�'; '�'; 
    '�'; '�'; '�'; 
    'B'; 'b'; 
    'C'; '�'; 'c'; '�'; 
    'D'; 'd'; 
    'E'; '�'; '�'; '�'; '�'; 'e'; '�'; '�'; '�'; '�'; 
    
    'F'; 'f'; 'G'; 'g'; 'H'; 'h'; 
    'I'; 'i'; '�'; '�'; '�'; '�'; '�'; '�'; '�'; '�'; 
    'J'; 'j'; 'K'; 'k'; 'L'; 'l'; 'M'; 'm'; 'N'; '�'; 'n'; '�'; 
    
    'O'; '�'; '�'; '�'; '�'; '�'; '�'; 'o'; '�';
    '�'; '�'; '�'; '�'; '�'; 
    
    'P'; 'p'; 'Q'; 'q'; 'R'; 'r'; 'S'; '�'; 's'; 'T'; 't'; 
    'U'; '�'; '�'; '�'; '�'; 'u'; '�'; '�'; '�'; '�'; 
    
    'V'; 'v'; 'W'; 'w'; 'X'; 'x'; 

    'Y'; '�'; 'y'; '�'; '�'; 

    'Z'; 'z'; 
   
    (* old English letters *)
    '�'; '�'; '�'; '�' |]

let _ = assert (Array.length characters = 256)

let tbl = 
  let a = Array.make 256 0 in
  for i = 0 to 255 do
    a.(Char.code characters.(i)) <- i
  done;
  a

let compare c1 c2 =
  Pervasives.compare tbl.(Char.code c1) tbl.(Char.code c2)

exception Int of int

let compare_strings s1 s2 =
  let len1 = String.length s1 
  and len2 = String.length s2 in
  try
    for i = 0 to min len1 len2 - 1 do
      let x = compare s1.[i] s2.[i] in
      if x <> 0 then raise (Int x)
    done;
    Pervasives.compare len1 len2
  with Int x -> x
