CHAPTERS=Chapter-*/Chapter-*.tex  Appendix-*/Appendix-*.tex
CHAPTERSLOG=Chapter-*/Chapter-*.tex\~  Appendix-*/Appendix-*.tex\~
NAME=bigfatnoob-thesis
AUX=$(NAME).aux front.aux Chapter-*/*.aux Appendix-*/*.aux optional.aux
INTERMEDIATES=$(NAME).bbl $(NAME).blg $(NAME).lof $(NAME).lot \
              $(NAME).log $(NAME).toc 
OUTAUX=$(NAME).synctex.gz $(NAME)-blx.bib $(NAME).out $(NAME).run.xml

$(NAME).pdf : $(NAME).tex $(NAME).bib front.tex $(CHAPTERS) ncsuthesis.cls optional.tex
	pdflatex $(NAME)
	bibtex $(NAME)
	pdflatex $(NAME)
	pdflatex $(NAME)

clean :
	rm $(AUX) $(INTERMEDIATES) $(OUTAUX) $(CHAPTERSLOG)


