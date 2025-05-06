.PHONY: all appendix

all: build/appendix/print.pdf build/appendix/ebook.pdf build/appendix/book-cover-for-web.jpg

build:
	mkdir -p build/appendix

build/appendix/%.pdf: build appendix
	cp appendix/$(@F) $@

build/appendix/%.jpg: build
	cp appendix/$(@F) $@


build/pdf_output: 

appendix:
	$(MAKE) -C $@

