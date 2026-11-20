PAPER=statement
LATEX=xelatex
BIBTEX=bibtex

all: $(PAPER).pdf

$(PAPER).bbl: *.bib
	$(LATEX) $(PAPER)
	$(BIBTEX) $(PAPER)

$(PAPER).pdf: *.tex $(PAPER).bbl
	$(LATEX) $(PAPER)
	$(LATEX) $(PAPER)

clean:
	rm -f *.lot *.lof *.aux *.dvi *.blg *.bbl *.out *.mxl *.log $(PAPER).pdf
	find ./ -name *.aux -exec rm -r "{}" \;
	find ./ -name *.aux -exec rm -r "{}" \;
	find ./ -name *.dvi -exec rm -r "{}" \;
	find ./ -name *.blg -exec rm -r "{}" \;
	find ./ -name *.bbl -exec rm -r "{}" \;
	find ./ -name *.out -exec rm -r "{}" \;
	find ./ -name *.xml -exec rm -r "{}" \;
	find ./ -name *.toc -exec rm -r "{}" \;
	find ./ -name *-blx.bib -exec rm -r "{}" \;
