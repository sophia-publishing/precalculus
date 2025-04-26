F="Precalculus4-print.tex Precalculus4-ebook.tex"

for f in $F ; do

pdflatex $f
for diagram in $(basename -s .mp $(find . -name '*.mp')) ; do mpost $diagram ; done
pdflatex $f

done
