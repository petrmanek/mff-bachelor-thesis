# Settings
PDFLATEX_FLAGS = -shell-escape

# Goals

all: thesis.pdf

# LaTeX must be run multiple times to get references right
thesis.pdf: thesis.tex $(wildcard *.tex) bibliography.bib
	pdflatex $(PDFLATEX_FLAGS) $<
	bibtex thesis
	pdflatex $(PDFLATEX_FLAGS) $<
	pdflatex $(PDFLATEX_FLAGS) $<

clean:
	rm -rf *.log *.dvi *.aux *.toc *.lof *.lot *.out *.bbl *.blg _minted-thesis/
	rm -f thesis.pdf
