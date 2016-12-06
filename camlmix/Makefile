VERSION = 1.3.0

all: doc links

doc: index.html index-src.html

index.html: index.html.mlx
	camlmix -clean ../load.camlmix index.html.mlx -o index.html

index-src.html: index-src.html.mlx index.html.mlx
	camlmix -clean ../load.camlmix index-src.html.mlx -o index-src.html

links:
	ln -sf camlmix-$(VERSION).tar.gz camlmix.tar.gz
	ln -sf camlmix-$(VERSION).tar.bz2 camlmix.tar.bz2

clean:
	rm -f test.html.mlx.ml index.html.mlx.ml index-src.html.mlx.ml

veryclean:
	rm -f test.html index.html index-src.html *~
