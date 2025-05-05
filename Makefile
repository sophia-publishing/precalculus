.PHONY: all clean

all: appendix-ebook.pdf appendix-print.pdf appendix-book-cover-for-web.jpg

appendix-ebook.pdf: appendix-ebook.tex
	pdflatex $<
	for diagram in $$(basename -s .mp $$(find . -name '*.mp')) ; do mpost $$diagram ; done
	pdflatex $<


appendix-print.pdf: appendix-print.tex
	pdflatex $<
	for diagram in $$(basename -s .mp $$(find . -name '*.mp')) ; do mpost $$diagram ; done
	pdflatex $<

appendix-book-cover-for-web.jpg: appendix-ebook.pdf
	pdftoppm $< appendix-book-cover-for-web -jpeg -f 1 -l 1 -singlefile
