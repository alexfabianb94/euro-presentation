all: presentation.pdf

presentation.pdf: *.tex
	pdflatex -interaction=nonstopmode presentation.tex
	bibtex presentation.aux
	pdflatex -interaction=nonstopmode presentation.tex
	pdflatex -interaction=nonstopmode presentation.tex
	rm -rf *.toc *.aux *.bbl *.log *.blg *.synctex.gz *.out *.snm *.nav *.lof *.lot *.spl
	
clean:
	rm -rf *.toc *.aux *.bbl *.log *.blg *.synctex.gz *.out *.snm *.nav *.lof *.lot *.spl presentation.pdf
