.PHONY: all clean

all: ebook.pdf print.pdf book-cover-for-web.jpg

ebook.pdf: ebook.tex
	pdflatex $<
	for diagram in $$(basename -s .mp $$(find . -name '*.mp')) ; do mpost $$diagram ; done
	pdflatex $<


print.pdf: print.tex
	pdflatex $<
	for diagram in $$(basename -s .mp $$(find . -name '*.mp')) ; do mpost $$diagram ; done
	pdflatex $<

book-cover-for-web.jpg: ebook.pdf
	pdftoppm $< book-cover-for-web -jpeg -f 1 -l 1 -singlefile

clean:
	rm -f ebook.pdf print.pdf book-cover-for-web.jpg
