.PHONY: all clean html www
all:
	ocamlc -c gstring.mli
	ocamlc -c gstring.ml
	ocamlc -c -pp 'camlp4o pa_extend.cmo q_MLast.cmo' \
		-I +camlp4 pa_freeze.ml
	camlp4o ./pa_freeze.cmo pr_o.cmo prog.ml > prog.ppo
	ocamlc -c -pp 'camlp4o ./pa_freeze.cmo' prog.ml
	ocamlc -o prog gstring.cmo prog.cmo
clean:
	rm -f *.cmo *.cmi *.ppo prog *~ gstring.html
html:
	caml2html -ln -o gstring.html gstring.mli gstring.ml pa_freeze.ml
www: clean html
	cp -rf . $(WWW)/gstring
