let print s = print_string s; flush stdout
module Camlmix =
struct
  let source = ref ""
  let line = ref 1
  let char = ref 1
  let printer = ref print
  let print_with f =
    let saved_printer = !printer in
    printer := (fun s -> f s; printer := saved_printer)
  let print_if test =
    if not test then print_with ignore
end
;;

# 1 "external_colors.ml";;

let () =
  Camlmix.line := 1;
  Camlmix.char := 1;
  Camlmix.source := "external_colors.ml"
;;

let () = !Camlmix.printer 
# 1 "external_colors.ml";;
 "";;

let () =
  Camlmix.line := 1;
  Camlmix.char := 3;
  Camlmix.source := "external_colors.ml"
;;

# 1 "external_colors.ml";;
  
let foreground_color () = print_string "#000000"
let background_color () = print_string "#f0f0f0"
let main_color () = print_string "#0000f0"
let link_color = main_color
let vlink_color () = print_string "#909090"
let alink_color () = print_string "#5050f0"

let () =
  Camlmix.line := 8;
  Camlmix.char := 3;
  Camlmix.source := "external_colors.ml"
;;

let () = !Camlmix.printer 
# 8 "external_colors.ml";;
   "\n";;

# 1 "base.css.mlx";;

let () =
  Camlmix.line := 1;
  Camlmix.char := 1;
  Camlmix.source := "base.css.mlx"
;;

let () = !Camlmix.printer 
# 1 "base.css.mlx";;
 "body {\n  font-family: arial,sans-serif;\n  color: ";;

let () =
  Camlmix.line := 3;
  Camlmix.char := 12;
  Camlmix.source := "base.css.mlx"
;;

# 3 "base.css.mlx";;
            foreground_color () 
let () =
  Camlmix.line := 3;
  Camlmix.char := 35;
  Camlmix.source := "base.css.mlx"
;;

let () = !Camlmix.printer 
# 3 "base.css.mlx";;
                                   ";\n  background-color: ";;

let () =
  Camlmix.line := 4;
  Camlmix.char := 23;
  Camlmix.source := "base.css.mlx"
;;

# 4 "base.css.mlx";;
                       background_color () 
let () =
  Camlmix.line := 4;
  Camlmix.char := 46;
  Camlmix.source := "base.css.mlx"
;;

let () = !Camlmix.printer 
# 4 "base.css.mlx";;
                                              ";\n  margin: 0px;\n  padding: 0px;\n}\n\n#page {\n  padding: 0px;\n  margin-top: 0px;\n  margin-left: auto;\n  margin-right: auto;\n  width: 45em;\n  text-align: left;\n  background-color: ";;

let () =
  Camlmix.line := 16;
  Camlmix.char := 23;
  Camlmix.source := "base.css.mlx"
;;

# 16 "base.css.mlx";;
                       background_color () 
let () =
  Camlmix.line := 16;
  Camlmix.char := 46;
  Camlmix.source := "base.css.mlx"
;;

let () = !Camlmix.printer 
# 16 "base.css.mlx";;
                                              ";\n}\n\n.transparent {\n  zoom: 1;\n  filter: alpha(opacity=90);\n  opacity: 0.9;\n}\n\np.social-networks {\n  margin-top: 2em;\n  margin-bottom: 2em;\n  margin-left: 15em;\n}\n\np.inline-images img {\n  vertical-align: middle;\n}\n\nimg {\n  border: 0px;\n}\n\nimg.sun {\n  position: absolute;\n  top: 1em;\n  right: 1em;\n  height: 4em;\n  width: 4em;\n}\n\na {\n  text-decoration: none;\n}\n\na:link {\n  color: ";;

let () =
  Camlmix.line := 52;
  Camlmix.char := 12;
  Camlmix.source := "base.css.mlx"
;;

# 52 "base.css.mlx";;
            link_color () 
let () =
  Camlmix.line := 52;
  Camlmix.char := 29;
  Camlmix.source := "base.css.mlx"
;;

let () = !Camlmix.printer 
# 52 "base.css.mlx";;
                             ";\n}\n\na:visited {\n  color: ";;

let () =
  Camlmix.line := 56;
  Camlmix.char := 12;
  Camlmix.source := "base.css.mlx"
;;

# 56 "base.css.mlx";;
            vlink_color () 
let () =
  Camlmix.line := 56;
  Camlmix.char := 30;
  Camlmix.source := "base.css.mlx"
;;

let () = !Camlmix.printer 
# 56 "base.css.mlx";;
                              ";\n}\n\na:hover {\n  color: ";;

let () =
  Camlmix.line := 60;
  Camlmix.char := 12;
  Camlmix.source := "base.css.mlx"
;;

# 60 "base.css.mlx";;
            alink_color () 
let () =
  Camlmix.line := 60;
  Camlmix.char := 30;
  Camlmix.source := "base.css.mlx"
;;

let () = !Camlmix.printer 
# 60 "base.css.mlx";;
                              ";\n  text-decoration: underline;\n}\n\na:active {\n  color: ";;

let () =
  Camlmix.line := 65;
  Camlmix.char := 12;
  Camlmix.source := "base.css.mlx"
;;

# 65 "base.css.mlx";;
            alink_color () 
let () =
  Camlmix.line := 65;
  Camlmix.char := 30;
  Camlmix.source := "base.css.mlx"
;;

let () = !Camlmix.printer 
# 65 "base.css.mlx";;
                              ";\n  text-decoration: underline;\n}\n\na.toc0 { margin-left: 1em; }\na.toc1 { margin-left: 4em; }\na.toc2 { margin-left: 7em; }\n\na:link.toc0, a:link.toc1, a:link.toc2 { color: black; }\na:visited.toc0, a:visited.toc1, a:visited.toc2 { color: black; }\na:hover.toc0, a:hover.toc1, a:hover.toc2, \na:active.toc0, a:active.toc1, a:active.toc2 {\n  color: ";;

let () =
  Camlmix.line := 77;
  Camlmix.char := 12;
  Camlmix.source := "base.css.mlx"
;;

# 77 "base.css.mlx";;
            alink_color () 
let () =
  Camlmix.line := 77;
  Camlmix.char := 30;
  Camlmix.source := "base.css.mlx"
;;

let () = !Camlmix.printer 
# 77 "base.css.mlx";;
                              ";\n  text-decoration: underline;\n}\n\n\na.anchor {\n  color: ";;

let () =
  Camlmix.line := 83;
  Camlmix.char := 12;
  Camlmix.source := "base.css.mlx"
;;

# 83 "base.css.mlx";;
            foreground_color () 
let () =
  Camlmix.line := 83;
  Camlmix.char := 35;
  Camlmix.source := "base.css.mlx"
;;

let () = !Camlmix.printer 
# 83 "base.css.mlx";;
                                   ";\n  text-decoration: none;\n}\n\nh1, h2, h3, h4 {\n  margin-top: 2em;\n  margin-bottom: 1.5em;\n  margin-left: 0px;\n  margin-right: 0px;\n  font-family: arial,sans-serif;\n  font-weight: bold;\n  padding: 0px;\n}\n\nh1 {\n  font-size: 200%;\n  text-align: center;\n  margin-top: 2em;\n  margin-bottom: 1.5em;\n}\n\n.title2 {\n  font-size: 80%;\n  font-style: italic;\n}\n\n.longtitle {\n  text-align: center;\n  font-size: 150%;\n  font-weight: bold;\n  margin-bottom: 1em;\n}\n\nh2 {\n  font-size: 140%;\n}\n\nh3 {\n  font-size: 120%;\n}\n\n\np, pre, blockquote, ul, ol {\n  margin-left: 1em;\n  margin-right: 1em;\n  margin-top: 0em;\n  margin-bottom: 0.5em;\n  padding: 0px;\n}\n\np.comment {\n  margin-left: 10em;\n  padding-left: 0.5em;\n  margin-bottom: 1em;\n  color: #800000;\n}\n\nli {\n  margin-left: 1em;\n  padding: 0px;\n}\n\ncode, pre, blockquote {\n  font: 100% monospace, fixed;\n}\n\n\npre, blockquote {\n  border-left: silver solid 3px;\n  margin-bottom: 1.5em;\n  margin-left: 3em;\n  padding-left: 1em;\n  padding-right: 0.5em;\n  line-height: 1.2;\n}\n\npre.nature {\n  border: 0px;\n}\n\ntable {\n  border: 0px;\n  margin: 0px;\n  padding: 0px;\n}\n\ntable td {\n  margin: 0px;\n  padding: 0px;\n}\n\ntable th {\n  margin: 0px;\n  padding-left: 1em;\n  padding-right: 1em;\n  text-align: center;\n  font-weight: bold;\n}\n\ntable.real-table, table.light-table {\n  margin: 0px;\n  padding: 0px;\n  border-collapse: collapse;\n}\n\ntable.light-table td {\n  margin: 0px;\n  padding: 0.5em;\n}\n\ntable.real-table td {\n  border: solid 1px;\n  margin: 0px;\n  padding: 0.5em;\n}\n\ntable.light-table pre, table.real-table pre {\n  border-width: 0px;\n  margin: 0.5em;\n  padding: 0.5em;\n}\n\ntable.ocamldoc {\n  border: solid silver 3px;\n  margin: 1em;\n  line-height: 1;\n}\n\ntable.ocamldoc td pre {\n  border-left: none;\n  margin-left: 0px;\n  padding-left: 0.5em;\n  padding-right: 0.5em;\n}\n\ndiv.descr {\n  margin-left: 1em;\n  margin-right: 1em;\n}\n\ndiv.intf {\n  background-color: silver;\n  margin-top: 0.5em;\n  margin-bottom: 0.5em;\n}\n\ndiv.toc {\n  margin: 1em;\n  padding: 0.5em;\n  border: solid silver 3px;\n}\n\ntd.picture {\n  width: 40%;\n  padding-left: 1em;\n}\n\ntable.big_table {\n  border-style: solid;\n  border-width: 0px; /* 2px; */\n  border-color: ";;

let () =
  Camlmix.line := 243;
  Camlmix.char := 19;
  Camlmix.source := "base.css.mlx"
;;

# 243 "base.css.mlx";;
                   main_color () 
let () =
  Camlmix.line := 243;
  Camlmix.char := 36;
  Camlmix.source := "base.css.mlx"
;;

let () = !Camlmix.printer 
# 243 "base.css.mlx";;
                                    ";\n  width: 100%;\n}\n\ntable.list { \n  margin-top: 1em;\n  margin-bottom: 1em;\n}\n\ntable.list th {\n  display: block;\n  padding: 1em;\n  text-align: right;\n}\n\ntable.list td.normal {\n  padding: 0.5em;\n}\n\n#top_menu {\n  margin: 0px;\n  background-color: ";;

let () =
  Camlmix.line := 264;
  Camlmix.char := 23;
  Camlmix.source := "base.css.mlx"
;;

# 264 "base.css.mlx";;
                       main_color () 
let () =
  Camlmix.line := 264;
  Camlmix.char := 40;
  Camlmix.source := "base.css.mlx"
;;

let () = !Camlmix.printer 
# 264 "base.css.mlx";;
                                        ";\n/*\n  position: relative;\n  direction: ltr;\n  left: -2px; \n  top: -2px;\n*/\n}\n\n#top_menu td {\n  color: ";;

let () =
  Camlmix.line := 274;
  Camlmix.char := 12;
  Camlmix.source := "base.css.mlx"
;;

# 274 "base.css.mlx";;
            main_color () 
let () =
  Camlmix.line := 274;
  Camlmix.char := 29;
  Camlmix.source := "base.css.mlx"
;;

let () = !Camlmix.printer 
# 274 "base.css.mlx";;
                             ";\n  background-color: ";;

let () =
  Camlmix.line := 275;
  Camlmix.char := 23;
  Camlmix.source := "base.css.mlx"
;;

# 275 "base.css.mlx";;
                       background_color () 
let () =
  Camlmix.line := 275;
  Camlmix.char := 46;
  Camlmix.source := "base.css.mlx"
;;

let () = !Camlmix.printer 
# 275 "base.css.mlx";;
                                              ";\n  text-align: center;\n  font-size: 120%;\n  font-weight: bold;\n  width: 25%;\n  padding: 0px;\n}\n\n#top_menu a {\n  display: block;\n  color: inherit;\n  text-decoration: inherit;\n  padding: .2em 1em;\n  margin: 0px;\n}\n\n/*\n#top_menu td:hover {\n  color: ";;

let () =
  Camlmix.line := 293;
  Camlmix.char := 12;
  Camlmix.source := "base.css.mlx"
;;

# 293 "base.css.mlx";;
            background_color () 
let () =
  Camlmix.line := 293;
  Camlmix.char := 35;
  Camlmix.source := "base.css.mlx"
;;

let () = !Camlmix.printer 
# 293 "base.css.mlx";;
                                   ";\n  background-color: ";;

let () =
  Camlmix.line := 294;
  Camlmix.char := 23;
  Camlmix.source := "base.css.mlx"
;;

# 294 "base.css.mlx";;
                       main_color () 
let () =
  Camlmix.line := 294;
  Camlmix.char := 40;
  Camlmix.source := "base.css.mlx"
;;

let () = !Camlmix.printer 
# 294 "base.css.mlx";;
                                        ";\n  text-decoration: none\n}\n*/\n\n#top_menu td.current_topic {\n  color: ";;

let () =
  Camlmix.line := 300;
  Camlmix.char := 12;
  Camlmix.source := "base.css.mlx"
;;

# 300 "base.css.mlx";;
            background_color () 
let () =
  Camlmix.line := 300;
  Camlmix.char := 35;
  Camlmix.source := "base.css.mlx"
;;

let () = !Camlmix.printer 
# 300 "base.css.mlx";;
                                   ";\n  background-color: ";;

let () =
  Camlmix.line := 301;
  Camlmix.char := 23;
  Camlmix.source := "base.css.mlx"
;;

# 301 "base.css.mlx";;
                       main_color () 
let () =
  Camlmix.line := 301;
  Camlmix.char := 40;
  Camlmix.source := "base.css.mlx"
;;

let () = !Camlmix.printer 
# 301 "base.css.mlx";;
                                        ";\n  text-decoration: none\n}\n\n#top_logo {\n  position: absolute;\n  direction: ltr;\n  right: 2em; \n  top: 1.5em;\n}\n\n#footer {\n  display: block;\n  text-align: center;\n  font-size: 70%;\n  margin-top: 3em;\n}\n\n.tag {\n  color: #800000;\n}\n\ntd.topleft {\n  vertical-align: top;\n  text-align: left;\n}\n\ntd.topright {\n  vertical-align: top;\n  text-align: right;\n}\n\ntd.topleft, td.topright {\n  padding-bottom: 0.2em;\n}\n\n.framed {\n  margin: 0px;\n  padding: 1em;\n  border: red solid 1px;\n  background-color: white;  \n}\n\n.news-item {\n  padding-top: 0px;\n  padding-bottom: 0px;\n  margin-top: 5px;\n  margin-bottom: 0px;\n}\n\n.date {\n  color: #a0a0a0;\n}\n";;

