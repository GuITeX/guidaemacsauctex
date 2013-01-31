## Copyright (C) M. Giordano, O. Iovino, M. Leccardi, 2010-2013
##  
## Quest'opera è distribuita con licenza Creative Commons,
##  + Attribuzione
##  + Non commerciale
##  + Condividi allo stesso modo 
## 3.0 Italia.
##  
## Il testo è disponibile alla pagina Internet
## http://creativecommons.org/licenses/by-nc-sa/3.0/it

## Makefile per la compilazione della guida tematica introemacs.tex

MAIN	 	= guidaemacsauctex
MAIN_TEX	= $(MAIN).tex
ALL_TEX		= $(wildcard *.tex)
ALL_BIB		= $(wildcard *.bib)
BACKUP_TEX	= $(wildcard *.tex~)
BACKUP_BIB	= $(wildcard *.bib~)
BACKUP_MISC	= $(wildcard *.bak) $(wildcard *.org~) 
TODAY		= $(shell date "+%Y%m%d")
TAR_NAME	= $(MAIN)-$(TODAY).tar.gz
TAR_WILD   	= $(MAIN)-*.tar.gz
FIGURE		= figure
PDF		= $(MAIN).pdf

.PHONY: clean dist

$(PDF): $(ALL_TEX) $(ALL_BIB) $(MAIN)_preambolo.sty
	latexmk -pdf -recorder- $(MAIN_TEX)

clean:
	rm -f $(BACKUP_TEX) $(BACKUP_BIB) $(BACKUP_MISC) Makefile~

dist:
	rm -f $(TAR_WILD)
	tar -czf $(TAR_NAME) $(PDF)
