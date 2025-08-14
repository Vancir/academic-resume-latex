# Makefile for LaTeX build and clean

# Main file name without extension
RESUME = resume
SRC = $(wildcard *.tex)

# Default target
all: $(RESUME).pdf

# Build PDF from LaTeX
$(RESUME).pdf: $(SRC)
	pdflatex $(RESUME).tex

# Clean auxiliary files and PDF
clean:
	rm -f *.aux *.log *.out *.toc *.lof *.lot *.fls *.fdb_latexmk
	rm -f $(RESUME).pdf
