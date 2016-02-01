
%.eps: %.dot
	dot -Tps2 -o $@ $<

%.pdf: %.dvi
	dvipdfm $< 

%.ps: %.dvi
	dvips $< -o $@


%.dvi: %.tex %.bbl
	latex $<

all: dis.ps

dis.dvi: dis.tex dis.bbl 
	latex dis

dis.bbl: dis.bib dis.aux
	bibtex dis

dis.aux: dis.tex
	latex dis

