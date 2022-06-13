all: presentation.pdf

article.pdf: *.tex */*.tex */*
	pdflatex -interaction=nonstopmode article.tex
	bibtex article.aux
	pdflatex -interaction=nonstopmode article.tex
	pdflatex -interaction=nonstopmode article.tex
	rm -rf *.toc *.aux *.bbl *.log *.blg *.synctex.gz *.out *.snm *.nav *.lof *.lot *.spl
	
clean:
	rm -rf *.toc *.aux *.bbl *.log *.blg *.synctex.gz *.out *.snm *.nav *.lof *.lot *.spl article.pdf
