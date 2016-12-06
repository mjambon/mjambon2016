### Sample Makefile for non-trivial programs using Micmatch (micmatch_pcre)
### (extracted from a real project!)

# The name of the program
RESULT = my_program

# Micmatch source files end with .mml instead of .ml
# (no specific order)
MM_FILES = \
  species.mml scop.mml \
  pairs.mml align.mml \
  dssp.mml contact.mml oligomers.mml whatif.mml \
  stats.mml \
  main.mml

# All sources files + .ml files produced from .mml files above
# (in linking order)
SOURCES = \
  pdb.mli pdb.ml \
  param.ml \
  species.ml scop.ml \
  pairs.ml align.ml \
  dssp.ml contact.ml oligomers.ml whatif.ml \
  stats.ml \
  main.ml

# Directory where micmatch_pcre was installed:
MICMATCHDIR = $(shell ocamlfind query micmatch_pcre)

# The packages that are managed with Findlib (ocamlfind)
# (only micmatch_pcre is required):
PACKS = micmatch_pcre netclient
CREATE_LIB = yes # I don't know why

# Uncomment if you use threads
#THREADS = yes


# If you want to see the preprocessed OCaml code 
# (instead of the AST in binary format; 
# references to the .mml source code will be lost):
#REPRINT = yes

# The main target: pp can be followed by any target provided by OCamlMakefile
.PHONY: all
all: pp nc



##### The rest should not change too often

MM_SOURCES = $(MM_FILES:.mml=.ml)

ifdef REPRINT
  PR = pr_o.cmo
else
  PR =
endif

ifdef THREADS
  MM_THREAD = -thread
else
  MM_THREAD = 
endif


.PHONY: pp
pp: $(MM_SOURCES)

$(MM_SOURCES): %.ml: %.mml
	camlp4o $(PR) -I $(MICMATCHDIR) pa_micmatch_pcre.cma $(MM_THREAD) \
		-impl $< > $@

TRASH = $(MM_SOURCES)

OCAMLMAKEFILE = OCamlMakefile
include $(OCAMLMAKEFILE)
