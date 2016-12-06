SOURCES = \
  index.html.mlx other.html.mlx \
  publications.html.mlx \
  notfound.html.mlx icfpcontest2004.html.mlx \
  phd.html.mlx micmatch.html.mlx caml2html.html.mlx \
  micmatch-design.html.mlx micmatch-howto.html.mlx \
  search-protein-3D-sites.html.mlx bioinformatics.html.mlx \
  devel.html.mlx biblio_php.html.mlx \
  json-wheel.html.mlx json-static.html.mlx \
  ocamlscript.html.mlx easy-format.html.mlx \
  cppo.html.mlx atd-biniou-intro.html.mlx \
  biniou.html.mlx yojson.html.mlx \
  bedbug-advice.html.mlx \
  extend-ocaml-syntax.html.mlx

RESULT = $(SOURCES:.mlx=)

ANNOT_OCAML = \
  hashtbl2.ml opaque.ml quine.ml compact_quine.ml latin1.ml hello.ml
COLOR_OCAML = \
  $(ANNOT_OCAML) \
  hashtbl2.mli opaque.mli \
  pa_infix.ml pa_forin.ml pa_forstep.ml pa_repeat.ml \
  309/pa_memo.ml \
  310/pa_memo.ml \
  309/pa_tryfinally.ml \
  310/pa_tryfinally.ml \
  pa_bounds/pa_bounds.ml \
  yahoo.ml scripts/delicious scripts/diffdiff \
  Camlp4OCamlParser.ml-3.10.1 Camlp4OCamlRevisedParser.ml-3.10.1

OCAML_HTML = $(COLOR_OCAML:=.html)

PUBLIC = \
  $(RESULT) toolbox.html \
  favicon.ico \
  phd/* \
  mini-martin.png martin.png mini-martin-color.png \
  camlmix/index.html camlmix/index-src.html \
  camlmix/camlmix-*.tar.gz camlmix/camlmix-*.tar.bz2 camlmix/LICENSE \
  camlmix/camlmix.tar.gz camlmix/camlmix.tar.bz2 camlmix/camlmix-help.txt \
  camlmix+strings.tar.gz \
  $(OCAML_HTML) $(C_HTML) $(SH_HTML) \
  $(MAKEFILE_HTML) \
  hashtbl2/* hashtbl2.tar.gz \
  opaque/* opaque.tar.gz \
  asciipict.tar.gz asciipict.tar.bz2 \
  micmatch*.tar.gz micmatch*.tar.bz2 \
  micmatch-license.txt micmatch-changes.txt \
  micmatch-manual.html micmatch-manual.pdf \
  mikmatch*.tar.gz mikmatch*.tar.bz2 \
  mikmatch-license.txt mikmatch-changes.txt \
  mikmatch-manual.html mikmatch-manual.pdf \
  ocaml.css quine.camlmix quine.sh compact_quine.sh quine.ml \
  toolbox.mli toolbox.ml test.camlmix \
  base.css external.css \
  camlremix-1.1.tar.bz2 camlremix-1.1.tar.gz \
  icfpcontest2004/* \
  mmodoc/* mikmatch-ocamldoc/* \
  ocaml-logo-slogan.png \
  ocaml.png ocaml-powered.png \
  hashtbl2.html caml2html-help.html caml2html*tar.gz caml2html*tar.bz2 \
  robots.txt \
  micmatch-camlp4-pipeline.png \
  latin1.ml \
  camlp5/*/Makefile camlp5/*/*.html \
  camlp5/*/*.ml camlp5/*/*.ppo camlp5/*/*.ppr \
  1camel.png 2camels.png 3camels.png \
  ppocaml.mlx caml2html_test.ml caml2html_test.html \
  caml2tex.tar.gz poster-ismb05.png micro-poster-ismb05.png \
  poster-topsan.pdf poster-topsan.png \
  poster-topsan-reduced.jpg micro-poster-topsan.png \
  jambon-afpsig2005.pdf fdl.txt extend-ocaml-syntax.html.mlx \
  papers/* Biblio.php-* biblio-*.tar.gz \
  pa_infix.ml pa_forin.ml pa_forstep.ml pa_repeat.ml \
  309/pa_memo.ml \
  310/pa_memo.ml \
  309/pa_tryfinally.ml \
  310/pa_tryfinally.ml \
  camlp4-extensions/*/* \
  camlp4find \
  pa_bounds.tar.gz \
  $(filter-out pa_bounds/pa_bounds.ml.html, $(wildcard pa_bounds/*)) \
  col-doc.html col-changes.txt col-license.txt col*.tar.gz col*.tar.bz2 \
  tophide-readme.txt tophide-license.txt \
  tophide*.tar.gz tophide*.tar.bz2 \
  gstring/* ocamlscript*.tar.gz ocamlscript*.tar.bz2 \
  ocamlscript-license.txt \
  ocamlscript-changes.txt ocamlscript-doc/* \
  ocamlscript-help.txt ocamlscript-examples/* \
  store.tar.gz \
  hello.js \
  json-wheel*.tar.* json-wheel-license.txt json-wheel-changes.txt \
  json-wheel-doc/* \
  json-static*.tar.* json-static-license.txt json-static-changes.txt \
  json-static-readme.txt \
  previewbubble.js bubble.png \
  test.html yahoo.ml \
  scripts/LICENSE scripts/delicious scripts/diffdiff \
  examples/* \
  q.ml \
  people-search.html logo_wink_small.gif \
  easy-format*.tar.* easy-format-license.txt easy-format-changes.txt \
  easy_format_example.ml easy_format_example.html \
  easy-format-doc/* \
  biniou*.tar.* biniou-license.txt biniou-changes.txt \
  biniou-doc/* biniou-format.txt \
  yojson*.tar.* yojson-license.txt yojson-changes.txt \
  yojson-doc/* \
  humanity293x400.jpg \
  phys.html phys.mli phys.ml \
  cppo*.tar.* cppo-license.txt cppo-changes.txt cppo-help.txt \
  cppo-manual-*.txt \
  bedbug-bed.png monad.png camlp5.tar.gz \
  purple-fringe/* background/* \
  running/* running/*/*

.PHONY: default all public
default: all public

TOPFILETARGETS = \
 utils.cmo print_ocaml.cmo unlatex.cmo color_latex.cmo $(RESULT) toolbox.html \
 $(OCAML_HTML) $(C_HTML) $(SH_HTML) $(MAKEFILE_HTML) \
 base.css external.css micmatch-manual.html mikmatch-manual.html


all: $(TOPFILETARGETS) camlmix hashtbl2.html camlp5.tar.gz phys.html

public:
	test -d ../public/ || mkdir ../public
	rm -f public_files
	for file in $(PUBLIC) `cat toolbox.html.mlx.images`; do \
          mkdir -p $$(dirname ../public/$$file); \
	  cp -rdu --preserve=timestamps $$file ../public/$$file; \
	  echo $$file >> public_files; \
	done

base.css: base_colors.ml base.css.mlx
	camlmix -o $@ $^

external.css: external_colors.ml base.css.mlx
	camlmix -o $@ $^

print_ocaml.ml: print_ocaml.mml unmix.cmo
	camlp4o -I `ocamlfind query mikmatch_pcre` pa_mikmatch_pcre.cma \
		-impl $< -o $@

print_ocaml.cmo: print_ocaml.ml
	ocamlfind ocamlc \
		-package caml2html,mikmatch_pcre -c print_ocaml.ml

unlatex.cmo: unlatex.mll unlatex.mli
	ocamllex unlatex.mll
	ocamlc -c unlatex.mli
	ocamlc -c unlatex.ml

color_latex.cmo: color_latex.ml
	ocamlc -c color_latex.ml

utils.cmo: utils.ml
	rm -f $(RESULT)
	ocamlfind ocamlc -c -package "unix" utils.ml

unmix.cmo: unmix.mll unmix.mli
	ocamllex unmix.mll
	ocamlc unmix.mli
	ocamlc -c unmix.ml


latex.cmo: latex.ml
	ocamlc -c latex.ml

.PHONY: camlmix
camlmix:
	cd camlmix && $(MAKE)

$(RESULT): %: %.mlx
	camlmix load.camlmix $< -o $@

toolbox.html: toolbox.html.mlx latex.cmo latex.mlx
	camlmix load.camlmix latex.mlx $< -o $@

mikmatch-manual.html: mikmatch-manual-nocounter.html
	cp $< $@

micmatch-manual.html: micmatch-manual-nocounter.html
	cp $< $@

camlp5.tar.gz: extend-ocaml-syntax.html
	tar czf camlp5.tar.gz camlp5/

$(OCAML_HTML): %.html: %
	test `echo $(ANNOT_OCAML) | grep -c $<` -eq 0 \
		|| ocamlc -i -dtypes $< > /dev/null
	caml2html -nf -tab 8 $< -o $@

VIMRUNTIME = /usr/share/vim/vim73
export VIMRUNTIME
ANY2HTML = vim +f +"syntax on" +"so $(VIMRUNTIME)/syntax/2html.vim" +"wq" +"q"

$(C_HTML): %.html: %
	$(ANY2HTML) $<

$(SH_HTML): %.html: %
	$(ANY2HTML) $<

$(MAKEFILE_HTML): %.html: %
	$(ANY2HTML) $<

hashtbl2.html: hashtbl2.mli hashtbl2.ml caml2html.html.mlx
	caml2html hashtbl2.ml hashtbl2.mli -o hashtbl2.html -t -tab 8 -ln

phys.html: phys.mli phys.ml
	ocamlc -c phys.mli
	ocamlc -dtypes phys.ml
	caml2html -hc -nf -t phys.mli phys.ml -o phys.html


ML = $(SOURCES:=.ml)
TRASH = $(ML) $(TOPFILETARGETS) *.cm[iox] *.o *~

.PHONY: clean
clean:
	rm -f $(TRASH)
	cd camlmix && $(MAKE) veryclean
