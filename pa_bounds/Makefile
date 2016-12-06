NAME = bounds

all:
	camlp4o pa_extend.cmo q_MLast.cmo \
		pr_o.cmo pa_$(NAME).ml \
		-o pa_$(NAME).ppo -loc _loc
	ocamlc -c \
		-pp 'camlp4o pa_extend.cmo q_MLast.cmo -loc _loc' \
		-I +camlp4 pa_$(NAME).ml
	camlp4o -I . pr_o.cmo pa_$(NAME).cmo prog.ml \
		-o prog.ppo
	camlp4r -I . pr_o.cmo pa_$(NAME).cmo progrev.ml \
		-o progrev.ppo
	camlp4o -I . pr_o.cmo pa_$(NAME).cmo -native prog.ml \
		-o prognative.ppo
	ocamlopt -o prog \
		-pp 'camlp4o -I . pa_$(NAME).cmo' \
		bigarray.cmxa prog.ml

clean:
	rm -f prog *.ppo *.ppr *.cmo *.cmi *.o *.cmx *.ast *~
