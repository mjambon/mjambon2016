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

# 1 "load.camlmix";;

let () =
  Camlmix.line := 1;
  Camlmix.char := 1;
  Camlmix.source := "load.camlmix"
;;

let () = !Camlmix.printer 
# 1 "load.camlmix";;
 "";;

let () =
  Camlmix.line := 1;
  Camlmix.char := 3;
  Camlmix.source := "load.camlmix"
;;

# 1 "load.camlmix";;
  
#load "unix.cma";;

# 1 "bedbug-advice.html.mlx";;

let () =
  Camlmix.line := 1;
  Camlmix.char := 1;
  Camlmix.source := "bedbug-advice.html.mlx"
;;

let () = !Camlmix.printer 
# 1 "bedbug-advice.html.mlx";;
 "";;

let () =
  Camlmix.line := 1;
  Camlmix.char := 3;
  Camlmix.source := "bedbug-advice.html.mlx"
;;

# 1 "bedbug-advice.html.mlx";;
   
#load "utils.cmo";;
open Printf
open Camlmix
open Utils

let () =
  Camlmix.line := 6;
  Camlmix.char := 3;
  Camlmix.source := "bedbug-advice.html.mlx"
;;

let () = !Camlmix.printer 
# 6 "bedbug-advice.html.mlx";;
   "\n";;

let () =
  Camlmix.line := 7;
  Camlmix.char := 3;
  Camlmix.source := "bedbug-advice.html.mlx"
;;

# 7 "bedbug-advice.html.mlx";;
   include_file "doctype" 
let () =
  Camlmix.line := 7;
  Camlmix.char := 29;
  Camlmix.source := "bedbug-advice.html.mlx"
;;

let () = !Camlmix.printer 
# 7 "bedbug-advice.html.mlx";;
                             "\n<html>\n<head>\n";;

let () =
  Camlmix.line := 10;
  Camlmix.char := 3;
  Camlmix.source := "bedbug-advice.html.mlx"
;;

# 10 "bedbug-advice.html.mlx";;
   title "Peace, Love and Bedbugs" 
let () =
  Camlmix.line := 10;
  Camlmix.char := 38;
  Camlmix.source := "bedbug-advice.html.mlx"
;;

let () = !Camlmix.printer 
# 10 "bedbug-advice.html.mlx";;
                                      "\n";;

let () =
  Camlmix.line := 11;
  Camlmix.char := 3;
  Camlmix.source := "bedbug-advice.html.mlx"
;;

# 11 "bedbug-advice.html.mlx";;
   include_file "charset" 
let () =
  Camlmix.line := 11;
  Camlmix.char := 29;
  Camlmix.source := "bedbug-advice.html.mlx"
;;

let () = !Camlmix.printer 
# 11 "bedbug-advice.html.mlx";;
                             "\n";;

let () =
  Camlmix.line := 12;
  Camlmix.char := 3;
  Camlmix.source := "bedbug-advice.html.mlx"
;;

# 12 "bedbug-advice.html.mlx";;
   include_file "stylesheet" 
let () =
  Camlmix.line := 12;
  Camlmix.char := 32;
  Camlmix.source := "bedbug-advice.html.mlx"
;;

let () = !Camlmix.printer 
# 12 "bedbug-advice.html.mlx";;
                                "\n";;

let () =
  Camlmix.line := 13;
  Camlmix.char := 3;
  Camlmix.source := "bedbug-advice.html.mlx"
;;

# 13 "bedbug-advice.html.mlx";;
   include_file "icon" 
let () =
  Camlmix.line := 13;
  Camlmix.char := 26;
  Camlmix.source := "bedbug-advice.html.mlx"
;;

let () = !Camlmix.printer 
# 13 "bedbug-advice.html.mlx";;
                          "\n";;

let () =
  Camlmix.line := 14;
  Camlmix.char := 3;
  Camlmix.source := "bedbug-advice.html.mlx"
;;

# 14 "bedbug-advice.html.mlx";;
   include_file "commonlinks" 
let () =
  Camlmix.line := 14;
  Camlmix.char := 33;
  Camlmix.source := "bedbug-advice.html.mlx"
;;

let () = !Camlmix.printer 
# 14 "bedbug-advice.html.mlx";;
                                 "\n</head>\n<body>\n";;

let () =
  Camlmix.line := 17;
  Camlmix.char := 3;
  Camlmix.source := "bedbug-advice.html.mlx"
;;

# 17 "bedbug-advice.html.mlx";;
   include_file "hitcounter" 
let () =
  Camlmix.line := 17;
  Camlmix.char := 32;
  Camlmix.source := "bedbug-advice.html.mlx"
;;

let () = !Camlmix.printer 
# 17 "bedbug-advice.html.mlx";;
                                "\n";;

let () =
  Camlmix.line := 18;
  Camlmix.char := 3;
  Camlmix.source := "bedbug-advice.html.mlx"
;;

# 18 "bedbug-advice.html.mlx";;
   include_file "start_big_table" 
let () =
  Camlmix.line := 18;
  Camlmix.char := 37;
  Camlmix.source := "bedbug-advice.html.mlx"
;;

let () = !Camlmix.printer 
# 18 "bedbug-advice.html.mlx";;
                                     "\n";;

let () =
  Camlmix.line := 19;
  Camlmix.char := 3;
  Camlmix.source := "bedbug-advice.html.mlx"
;;

# 19 "bedbug-advice.html.mlx";;
   top_menu ~here:false other 
let () =
  Camlmix.line := 19;
  Camlmix.char := 33;
  Camlmix.source := "bedbug-advice.html.mlx"
;;

let () = !Camlmix.printer 
# 19 "bedbug-advice.html.mlx";;
                                 "\n\n<h1>Peace, Love and Bedbugs</h1>\n<div class=\"longtitle\">Surviving a Bedbug Infestation</div>\n\n<p>\n<i>Published on 4 September 2010. \nCopyright &copy; 2010 Martin Jambon. All rights reserved.</i>\n\n<p>\n<b>Disclaimer</b>:\n<i>This document is provided by the author as-is, and any express or\nimplied warranties, including, but not limited to, the implied warranties\nof merchantability and fitness for a particular purpose are disclaimed.\nIn no event shall the author be liable for any direct, indirect,\nincidental, special, exemplary, or consequential damages (including, but\nnot limited to, procurement of substitute goods or services; loss of use,\ndata, or profits; or business interruption) however caused and on any\ntheory of liability, whether in contract, strict liability, or tort\n(including negligence or otherwise) arising in any way out of the use of\nthis document, even if advised of the possibility of such damage.</i>\n\n\n<h2>Got bedbugs?</h2>\n\n<p>\nYou should start suspecting bedbugs if you or someone has itchy bites\npresent in <b>clusters</b>.\n\n<ul>\n<li> Bedbugs bites typically occur in clusters, anywhere on the body.\n<li> About half of the people are insensitive to bedbug bites.\n<li> Bites occur most often at night but start itching only several hours \nafter the bloodmeal, possibly late in the afternoon.\n</ul>\n\n<p>\nActually spotting bedbugs can be difficult as they are small (from 1 to 4 mm),\nwalk relatively fast, and as flat as a credit card.  They are most active\nlate in the night.\n\n<p>\nVacuuming along carpet edges and all crevices present in or around beds \nis your best bet to capture live specimens. Keep some alive for\nfuture tests and education, in any closed glass, plastic or metal container.\nCheckout the <a href=\"http://en.wikipedia.org/wiki/Bedbug\">Wikipedia article\nabout bedbugs</a> for photos and for objective information.\n\n\n<h2>Damage evaluation</h2>\n\n<p>\nFirst, relax. Bedbugs are overall a mild nuisance but can be difficult to\nget rid of.\nYou have to know this:\n<ul>\n<li> Bedbugs do not stay on the human body except for their short blood meals.\nThey hide in bedrooms, office chairs, sofas and anywhere humans spend time\nin stationary positions.\n<li> Bedbugs are not sexually transmitted.\n<li> Bedbugs are not known to carry any human diseases.\n<li> Bedbugs can occur in the cleanest home or hotel.\n</ul>\n\n<p>\nFor individuals, the main damage of a bedbug infestation is most likely\ngoing to be psychological. This happens when some huge efforts are undertaken\nto get rid of the bedbugs without success and without knowing when the problem\nwill go away, if ever.\n\n\n<h2>Elimination by chemical extermination</h2>\n\n<p>\nExtermination may not be the right solution.\nProfessional exterminators (well, the ones who were appointed by our\ncommunity manager here in Northern California) sure look impressive\nand at first sight give the impression that it is going to be a slam dunk.\nNot at all. The technique consists in killing bedbugs with chemicals\nthat are considered safe enough for humans. This sounds fine in theory, but:\n<ul>\n<li> At least three visits of the exterminators are usually required\nuntil the bedbugs can be completely wiped out.\n<li> Each visit consists in emptying completely all the bedrooms and \nany room close to the bedrooms, sofas or office furniture. All clothing\nand bedding must be washed and dried, bagged and stored somewhere outside\nyour apartement or house during the treatment.\n<li> Treatment may never succeed if the apartment has lots of crevices, beams\nand other places that can hide the tiny bedbugs, or if the neighbor apartment\ncommunicate with yours and is not being treated. Your neighbors may\nbe insensitive to bedbugs.\n</ul>\n\n<p>\nFor us extermination failed after three visits of the exterminators,\nfalse hopes, and a lot of work on our side even though we had just moved\nin without furniture into a bedbug-infested apartment.\nComplete insanity. So we devised our own strategy.\n\n\n<h2>Elimination by isolation</h2>\n\n<p>\n<table class=\"real-table\"><tr><td>\nSummary of the steps for the isolation technique, preferrably in that order:\n<ol>\n<li> Create a slippery umbrella or shield preventing bedbugs to drop \nonto the bed.\n<li> Make the bed legs slippery.\n<li> Eliminate all the bedbugs from the bed by laundrying or steaming.\n<li> Enjoy your life. Sleep in your bed, not on the sofa.\n<li> Repeat bed steaming/laundrying as a soon as bedbug bites are back.\nHopefully never.\n<li> Leave the protective system in place as long as needed, possibly\nfor up to two years or forever if you live in a large bedbug-infested building.\n</ol>\n</td></tr></table>\n\n<p>\nBedbugs are not invincible. Their big weaknesses are:\n<ul>\n<li> They cannot fly.\n<li> They cannot climb slippery surfaces like smooth painted metal, smooth\nplastic, glass, cellophane or scotch tape.\n<li> They feed exclusively on human blood.\n<li> A temperature of 50&deg;C (122&deg;F) or more \nkills them in a matter of seconds.\n</ul>\n\n<p>\nOf course they also have a few superpowers:\n<ul>\n<li> They may enter a dormant state without feeding for up to 18 months.\n<li> They can detect humans by sensing higher temperatures and CO2. They will\ndrop from the ceiling onto the bed, office chair or sofa with a human in it.\n</ul>\n\n<p>\n<img src=\"bedbug-bed.png\" alt=\"Bedbug-safe bed setup\">\n</p>\n\n<p>\nOur strategy consists in preventing bedbugs from getting into the beds,\ntogether with a simple way of eliminating bedbugs from the bed if they \never manage to come back.\nThey will eventually die of starvation.\n<ul>\n<li> Use a simple <b>slatted bed frame and foam or latex mattress</b>.\n<li> The bed must have legs tall enough to isolate all bedding from the floor.\n<li> No fixed part of the bed may be hollow and hide bedbugs. All cavities\nand crevices must be shallow enough for steam to penetrate.\n<li> If you don't want to ditch your hollow bed or spring mattress, you might\nbe able to buy a mattress or spring box encasement from a bedbug professional.\nI haven't tried that solution.\n<li> Buy yourself a <b>steamer</b>, normally used to unwrinkle delicate clothes\nwithout touching them. You can get one for $30. This kills bedbugs on the\nspot in some hard to reach places (beware of not melting plastic surfaces).\nUse it if one bedbug makes it back to the bed.\n<li> Isolate the bed from the floor by making the <b>legs slippery\nto bedbugs</b>. You may use your captured specimens for testing.\nMetal legs are probably slippery enough while unpolished wood will require\na ring of <b>transparent adhesive tape</b> around each of them. This ensures\nthat bedbugs won't be able to climb onto the bed.\n<li> The bed must not touch walls or furniture at anytime or bedbugs will\nuse that as a bridge to the bed.\n<li> As bedbugs will climb to the ceiling and drop onto the bed\nif they have a chance,\nyou imperatively need a sort of <b>slippery umbrella</b> covering the whole bed\nplus a margin of 40cm or more (1.3ft). This requires more work than\nall the other parts combined, and the result may not meet your aesthetic \nstandards but it was good enough for us.\nHanging rolls of cellophane carefully\nstitched together by transparent tape worked for us. Three rolls \nof cellophane bought from Target's gift-wrapping section\nwere used for one queen bed. Alternatively, a closed rectangle of sticky tape\non the ceiling above the bed may work if the ceiling is perfectly free\nof holes, crevices or beams that could bring bedbugs in, and you are not \nafraid of ruining your ceiling.\n</ul>\n\n<p>\nThis technique worked flawlessly for us. It was free, and more importantly\nworked the first time exactly as designed,\nunlike the random visits of the exterminators.\nGiven the success of this do-it-yourself solution \nand the burden and failure of the professional chemical extermination\nattempts, I would strongly advise individuals to think twice before\nokaying chemical extermination of bedbugs.\n\n<p>\nAmong the different tips that are frequently given to people facing\nbedbug infestations I found the following to be particularly \na <b>demoralizing waste of efforts</b>:\n<ul>\n<li> Vacuuming like crazy: this won't get rid of all the bedbugs anyway.\n<li> Throwing away your furniture that may be infested: useless and costly,\nshould be considered only for the beds.\n<li> Treating all the apartments of the building simultaneously: won't happen.\n<li> Putting all items in plastic bags under the sun until they heat up\nenough to kill the bedbugs: won't be hot enough, \nwon't kill all the bedbugs in your home, represents a lot of work.\nDrying machines can be used to kill potential bedbugs from your beddings.\nSteaming works too.\n</ul>\n\n<p>\nOverall, be extremely suspicious of advice telling you to clean, wash\nor discard every possible item of your household. This kind of advice can't\ncome from someone who actually applied it and will turn your life into\nhell a lot more than the bedbugs do. Also, please challenge\nadvice like \"doing this or that will help\". Some solutions work nearly \nperfectly, so don't bother with tips that barely help.\n\n\n\n<h2>Prevention</h2>\n\n<p>\nHopefully you do not have bedbugs at your home yet, but you may\nknow someone in that situation or might have been bitten after staying\nat a hotel.\n\n<p>\nA bedbug carrying eggs may walk or drop into an open suitcase at a hotel \nand end up at your home, where babies would hatch and start\nfeeding on you.\nKeeping suitcases closed and away from the beds should reduce risks.\nDoing more efforts than this while traveling seems unreasonable to me.\n\n<p>\nWhen shopping for a bed, I would absolutely choose one that can be cleaned\nfree of bedbugs using a handheld steamer. Anything with springs in it\nis probably a bad choice. In any case, do not buy a used bed of that kind\nbecause it may come with bedbugs pre-installed.\n\n\n";;

let () =
  Camlmix.line := 255;
  Camlmix.char := 3;
  Camlmix.source := "bedbug-advice.html.mlx"
;;

# 255 "bedbug-advice.html.mlx";;
   camlmix_footer ~years:"2010" () 
let () =
  Camlmix.line := 255;
  Camlmix.char := 38;
  Camlmix.source := "bedbug-advice.html.mlx"
;;

let () = !Camlmix.printer 
# 255 "bedbug-advice.html.mlx";;
                                      "\n";;

let () =
  Camlmix.line := 256;
  Camlmix.char := 3;
  Camlmix.source := "bedbug-advice.html.mlx"
;;

# 256 "bedbug-advice.html.mlx";;
   include_file "end_big_table" 
let () =
  Camlmix.line := 256;
  Camlmix.char := 35;
  Camlmix.source := "bedbug-advice.html.mlx"
;;

let () = !Camlmix.printer 
# 256 "bedbug-advice.html.mlx";;
                                   "\n</body>\n</html>\n";;

