# Makefile for LaTeX build and clean

# Main file name without extension
RESUME = resume

# Default target
all: $(RESUME).pdf

# Build PDF from LaTeX
$(RESUME).pdf: $(RESUME).tex
	pdflatex $(RESUME).tex

# Clean auxiliary files and PDF
clean:
	rm -f *.aux *.log *.out *.toc *.lof *.lot *.fls *.fdb_latexmk
	rm -f $(RESUME).pdf
