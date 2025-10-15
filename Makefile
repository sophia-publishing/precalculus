.PHONY: all appendix algebra-1 algebra-2 algebra-3

all: build/appendix/print.pdf build/appendix/ebook.pdf build/appendix/book-cover-for-web.jpg
all: build/algebra-1/print.pdf build/algebra-1/ebook.pdf build/algebra-1/book-cover-for-web.jpg
all: build/algebra-2/print.pdf build/algebra-2/ebook.pdf build/algebra-2/book-cover-for-web.jpg
all: build/algebra-3/print.pdf build/algebra-3/ebook.pdf build/algebra-3/book-cover-for-web.jpg

build:
	mkdir -p build/appendix
	mkdir -p build/algebra-1
	mkdir -p build/algebra-2
	mkdir -p build/algebra-3

build/appendix/%.pdf: build appendix
	cp appendix/$(@F) $@

build/algebra-1/%.pdf: build algebra-1
	cp algebra-1/$(@F) $@

build/algebra-2/%.pdf: build algebra-2
	cp algebra-2/$(@F) $@

build/algebra-3/%.pdf: build algebra-3
	cp algebra-2/$(@F) $@

build/appendix/%.jpg: build appendix
	cp appendix/$(@F) $@

build/algebra-1/%.jpg: build algebra-1
	cp algebra-1/$(@F) $@

build/algebra-2/%.jpg: build algebra-2
	cp algebra-2/$(@F) $@

build/algebra-3/%.jpg: build algebra-3
	cp algebra-3/$(@F) $@

appendix:
	$(MAKE) -C $@

algebra-1:
	$(MAKE) -C $@

algebra-2:
	$(MAKE) -C $@

algebra-3:
	$(MAKE) -C $@

clean:
	rm -rf build
	$(MAKE) -C appendix clean
	$(MAKE) -C algebra-1 clean
	$(MAKE) -C algebra-2 clean
	$(MAKE) -C algebra-3 clean

