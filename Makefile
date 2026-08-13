# Build all one-page research-statement cover letters.
#
#   make            build every atlidakis-*.tex -> PDF (only what changed)
#   make <slug>     build one letter, e.g. `make unikraft`
#   make view-<slug>  build then open one letter (macOS)
#   make clean      remove LaTeX aux files, keep PDFs
#   make cleanall   remove aux files and PDFs
#   make list       list discovered letters

LATEXMK ?= latexmk
LATEXMKFLAGS := -pdf -halt-on-error -interaction=nonstopmode -use-make

# Every letter is a top-level atlidakis-*.tex; preamble.tex is \input, not standalone.
SOURCES := $(wildcard atlidakis-*.tex)
PDFS    := $(SOURCES:.tex=.pdf)
SLUGS   := $(patsubst atlidakis-%.tex,%,$(SOURCES))

.PHONY: all clean cleanall list $(SLUGS) $(addprefix view-,$(SLUGS))

all: $(PDFS)

# Each PDF rebuilds when its own source OR the shared preamble changes.
%.pdf: %.tex preamble.tex
	$(LATEXMK) $(LATEXMKFLAGS) $<

# Short aliases: `make unikraft` -> atlidakis-unikraft.pdf
$(SLUGS): %: atlidakis-%.pdf

# `make view-unikraft` builds then opens (macOS `open`).
view-%: atlidakis-%.pdf
	open $<

list:
	@echo "Letters:"; for s in $(SLUGS); do echo "  - $$s"; done

clean:
	$(LATEXMK) -c $(SOURCES)

cleanall:
	$(LATEXMK) -C $(SOURCES)
