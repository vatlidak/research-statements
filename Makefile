PAPER=statement
LATEX=xelatex
BIBTEX=bibtex
LATEXMK=latexmk
LATEXMK_FLAGS=-xelatex

.PHONY: all clean view watch

all: $(PAPER).pdf

$(PAPER).bbl: $(PAPER).tex $(PAPER).bib $(wildcard *.bst)
	$(LATEX) $(PAPER)
	$(BIBTEX) $(PAPER)

$(PAPER).pdf: *.tex $(PAPER).bbl
	$(LATEX) $(PAPER)
	$(LATEX) $(PAPER)

view: $(PAPER).pdf
	open -a Skim $(PAPER).pdf

# Open in Skim, then watch for changes and rebuild continuously.
watch: view
	$(LATEXMK) $(LATEXMK_FLAGS) -pvc -view=none $(PAPER).tex

clean:
	rm -f *.fdb_latexmk *.fls *.xdv *.lot *.lof *.aux *.dvi *.blg *.bbl *.out *.mxl *.log $(PAPER).pdf
