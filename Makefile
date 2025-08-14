# Makefile for LaTeX build and clean

# Main file name without extension
CV = cv
SRC = $(wildcard src/*.tex)

all: $(CV).pdf

# Build PDF from LaTeX
$(CV).pdf: $(SRC)
	pdflatex src/$(CV).tex

# Clean auxiliary files and PDF
clean:
	rm -f *.aux *.log *.out *.toc *.lof *.lot *.fls *.fdb_latexmk
	rm -f $(CV).pdf
