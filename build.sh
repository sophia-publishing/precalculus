F=Precalculus4.tex

pdflatex $F
for f in $(basename -s .mp $(find . -name '*.mp')) ; do mpost $f ; done
pdflatex $F
