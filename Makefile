# Settings
PDFLATEX_FLAGS = -shell-escape

# Goals

all: thesis.pdf

# LaTeX must be run multiple times to get references right
thesis.pdf: tex/thesis.tex $(wildcard tex/*.tex) bibliography.bib
	pdflatex $(PDFLATEX_FLAGS) $<
	bibtex thesis
	pdflatex $(PDFLATEX_FLAGS) $<
	pdflatex $(PDFLATEX_FLAGS) $<

clean:
	rm -rf *.log *.dvi *.aux *.toc *.lof *.lot *.lol *.out *.bbl *.blg _minted-thesis/
	rm -f tex/*.aux
	rm -f thesis.pdf

