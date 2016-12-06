open Printf
  
let param = Caml2html.Output.default_param
  
let code_param = param
  
let pre_param = param
  
let nature_param = { (param) with Caml2html.Output.line_numbers = true; }
  
let __mikmatch_regexp_1 =
  Pcre.regexp ~flags: [ `ANCHORED; `DOLLAR_ENDONLY ]
    "\n*([\\000\001-\255]*?)\n*$"
  
let compact __mikmatch_any_target =
  let __mikmatch_match_target_1 = __mikmatch_any_target
  in
    (try
       let __mikmatch_regexp_1_target = __mikmatch_match_target_1 in
       let __mikmatch_regexp_1_target_result =
         try
           Pcre.exec ~rex: __mikmatch_regexp_1 ~pos: 0
             __mikmatch_regexp_1_target
         with | Not_found -> raise Run_mikmatch_pcre.Mikmatch_exit in
       let s = Pcre.get_substring __mikmatch_regexp_1_target_result 1
       in fun () -> s
     with
     | Run_mikmatch_pcre.Mikmatch_exit ->
         (fun () ->
            match () with _ ->
                           raise (Match_failure ("print_ocaml.mml", 9, 14))))
      ()
  
let ocamlcode =
  let param = Some code_param
  in fun s -> print_string (Caml2html.Output.ocamlcode ?param s)
  
let ocamlpre =
  let param = Some pre_param
  in fun s -> print_string (Caml2html.Output.ocamlpre ?param (compact s))
  
let ocamlnature =
  let param = Some nature_param
  in
    fun s ->
      print_string
        (Caml2html.Output.ocamlpre ?param ~tag_open: "<pre class=nature>"
           (compact s))
  
let delim s = printf "<span style=\"color:990000\">%s</span>" s
  
let tags ?clas =
  function
  | Some s ->
      ((sprintf "<%s%s>" s
          (match clas with | None -> "" | Some c -> sprintf " class=%s" c)),
       (sprintf "</%s>" s))
  | None -> ("", "")
  
let html_quote s =
  let buf = Buffer.create 100
  in
    (String.iter
       (function
        | '<' -> Buffer.add_string buf "&lt;"
        | '>' -> Buffer.add_string buf "&gt;"
        | '&' -> Buffer.add_string buf "&amp;"
        | c -> Buffer.add_char buf c)
       s;
     Buffer.contents buf)
  
let color_camlmix ?(text = html_quote) ?(true_html = true) ?wrap s =
  let lexbuf = Lexing.from_string s in
  let l = Unmix.get lexbuf in
  let (start_tag, end_tag) = tags wrap
  in
    (print_string start_tag;
     List.iter
       (function
        | `Text s -> print_string (text s)
        | `Code s ->
            let buf = Buffer.create (10 * (String.length s))
            in
              (Caml2html.Output.ocaml ~param ~nbsp: true_html buf
                 (Caml2html.Input.string s);
               print_string (Buffer.contents buf))
        | `Sep s -> delim s)
       l;
     print_string end_tag)
  
let camlmixcode = color_camlmix ~true_html: true ~wrap: "code"
  
let camlmixpre = color_camlmix ~true_html: false ~wrap: "pre"
  
let a f (any_channel : out_channel) = f
  
let ocamldoc ?impl_oc ?intf_oc title description intf impl =
  (printf
     "<table class=ocamldoc cellspacing=\"0px\">
<tr>
<td>
<div class=descr>
<b>%s</b> %s
%s
</div>
<div class=intf>%a</div>
%a
</td>
</tr>
</table>
"
     title (if description <> "" then "-" else "") description (a ocamlpre)
     intf (a ocamlpre) impl;
   let export ?(add1 = ")\n") ?(add2 = "") opt s =
     match opt with
     | None -> ()
     | Some oc -> fprintf oc "\n(*** %s ***%s%s\n%s\n" title add1 s add2
   in
     (export intf_oc intf;
      export impl_oc ~add1: (sprintf ":\n%s\n*)\n\n" intf) ~add2: ";;\n" impl))
  
let file_link ?(html = false) file =
  let name = Filename.basename file
  in
    (printf "<p>File <a href=\"%s\">%s</a>" file name;
     if html
     then printf " [<a href=\"%s\">html</a>]" (file ^ ".html")
     else ();
     printf ":\n")
  
let __mikmatch_regexp_3 =
  Pcre.regexp ~flags: [ `DOLLAR_ENDONLY ] "@([!-~]+?)@([\\000\001-\255]*?)@@"
  
let __mikmatch_regexp_2 =
  Pcre.regexp ~flags: [ `ANCHORED; `DOLLAR_ENDONLY ] "=([\\000\001-\255]*)"
  
let bgcolor_ocaml ?file ?(html = false) ?(header = "") s =
  let map =
    Run_mikmatch_pcre.map __mikmatch_regexp_3
      (fun __mikmatch_regexp_3_target_result ->
         let tag = Pcre.get_substring __mikmatch_regexp_3_target_result 1 in
         let contents =
           Pcre.get_substring __mikmatch_regexp_3_target_result 2
         in
           (let __mikmatch_match_target_2 = tag
            in
              (try
                 let __mikmatch_regexp_2_target =
                   __mikmatch_match_target_2 in
                 let __mikmatch_regexp_2_target_result =
                   try
                     Pcre.exec ~rex: __mikmatch_regexp_2 ~pos: 0
                       __mikmatch_regexp_2_target
                   with | Not_found -> raise Run_mikmatch_pcre.Mikmatch_exit in
                 let style =
                   Pcre.get_substring __mikmatch_regexp_2_target_result 1
                 in fun () -> `Style ((Some style), contents)
               with
               | Run_mikmatch_pcre.Mikmatch_exit ->
                   (match __mikmatch_match_target_2 with
                    | "verb" when true -> (fun () -> `Style (None, contents))
                    | color when true ->
                        (fun () ->
                           `Style ((Some ("background:" ^ color)), contents))
                    | _ ->
                        (fun () ->
                           match () with _ ->
                                          raise
                                            (Match_failure
                                               ("print_ocaml.mml", 113, 6)))))
                ())) in
  let buf = Buffer.create 500 in
  let (file_link, export, finish) =
    match file with
    | None -> ((fun () -> ()), (fun _ -> ()), (fun () -> ()))
    | Some name ->
        let oc = open_out name
        in
          ((fun () -> file_link ~html name), (fun s -> output_string oc s),
           (fun () -> close_out oc))
  in
    (export header;
     Buffer.add_string buf header;
     List.iter
       (function
        | `Text s ->
            (export s;
             let l = Caml2html.Input.string s in Caml2html.Output.ocaml buf l)
        | `Style (style, s) ->
            (export s;
             (match style with
              | Some st ->
                  let l = Caml2html.Input.string s
                  in
                    (bprintf buf "<span style=\"%s\">" st;
                     Caml2html.Output.ocaml buf l;
                     bprintf buf "</span>")
              | None -> Buffer.add_string buf (html_quote s))))
       (map s);
     finish ();
     (file_link, (Buffer.contents buf)))
  
let bg_ocaml ?file ?html s =
  let (link, code) = bgcolor_ocaml ?file ?html s
  in (link (); printf "<pre>%s</pre>" code)
  
let __mikmatch_regexp_4 =
  Pcre.regexp ~flags: [ `ANCHORED; `DOLLAR_ENDONLY ]
    "([\\000\001-\255]*?(?:^|(?<=\n))[\t-\r ]+Objective Caml version[\\000\001-\255]*?(?:$|(?=\n))(?:[\t-\r ]+Camlp4 Parsing version[\\000\001-\255]*?(?:$|(?=\n)))?[\t-\r ]*)([\\000\001-\255]*)"
  
let __mikmatch_regexp_5 =
  Pcre.regexp ~flags: [ `DOLLAR_ENDONLY ]
    "(?:^|(?<=\n))# ([\\000\001-\255]*?;;)((?:(?!(?:^|(?<=\n))(?:#|(?:(?:(?:(?:(?:(?:val |- : )|exception )|type )|module )|class )|external )))[\\000\001-\255])*)((?:(?:^|(?<=\n))(?:(?:(?:(?:(?:(?:val |- : )|exception )|type )|module )|class )|external )(?:(?!(?:^|(?<=\n))#)[\\000\001-\255])*)*)|((((?:^|(?<=\n))# [\t-\r ]*$)))"
  
let ocamltop s =
  let (header, rest) =
    let __mikmatch_match_target_3 = s
    in
      (try
         let __mikmatch_regexp_4_target = __mikmatch_match_target_3 in
         let __mikmatch_regexp_4_target_result =
           try
             Pcre.exec ~rex: __mikmatch_regexp_4 ~pos: 0
               __mikmatch_regexp_4_target
           with | Not_found -> raise Run_mikmatch_pcre.Mikmatch_exit in
         let rest = Pcre.get_substring __mikmatch_regexp_4_target_result 2 in
         let header =
           let s = Pcre.get_substring __mikmatch_regexp_4_target_result 1
           in if s = "" then None else Some s
         in fun () -> (header, rest)
       with | Run_mikmatch_pcre.Mikmatch_exit -> (fun () -> (None, s))) () in
  let color_this ?pos __mikmatch_regexp_5_target =
    Pcre.substitute_substrings ~rex: __mikmatch_regexp_5 ?pos
      ~subst:
        (fun __mikmatch_regexp_5_target_result ->
           let result =
             try Pcre.get_substring __mikmatch_regexp_5_target_result 3
             with
             | Not_found ->
                 (ignore
                    (Pcre.get_substring __mikmatch_regexp_5_target_result 4);
                  "") in
           let prog =
             try Pcre.get_substring __mikmatch_regexp_5_target_result 1
             with
             | Not_found ->
                 (ignore
                    (Pcre.get_substring __mikmatch_regexp_5_target_result 6);
                  "") in
           let output =
             try Pcre.get_substring __mikmatch_regexp_5_target_result 2
             with
             | Not_found ->
                 (ignore
                    (Pcre.get_substring __mikmatch_regexp_5_target_result 5);
                  "")
           in
             (sprintf
                "@=font-style:italic;color:red@#@@ \
                 %s\
                 @verb@%s@@\
                 @=font-style:italic@%s@@"
                prog output result))
      __mikmatch_regexp_5_target in
  let (_, code) = bgcolor_ocaml ?header (color_this rest)
  in printf "<pre>%s</pre>" code
  
let ocaml_file ?html file =
  (file_link ?html file; ocamlpre (Mikmatch.Text.file_contents file))
  

