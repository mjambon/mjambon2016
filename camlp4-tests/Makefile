all:
	camlp4o pa_extend.cmo q_MLast.cmo pr_o.cmo pa_$(NAME).ml -loc loc \
		-o pa_$(NAME).ppo
	camlp4o pa_extend.cmo q_MLast.cmo pa_$(NAME).ml -loc loc \
		-o pa_$(NAME).ast
	ocamlc -c -I +camlp4 -pp 'camlp4o pa_extend.cmo q_MLast.cmo -loc loc' \
		pa_$(NAME).ml
	camlp4o -I . pr_o.cmo pa_$(NAME).cmo test_$(NAME).ml \
		-o test_$(NAME).ppo
	camlp4o -I . pr_r.cmo pa_$(NAME).cmo test_$(NAME).ml \
		-o test_$(NAME).ppr
	ocamlopt -o test_$(NAME) -pp 'camlp4o -I . pa_$(NAME).cmo' \
		test_$(NAME).ml

clean:
	rm -f *.ppo *.ppr *.cmo *.cmi *.o *.cmx *.ast
