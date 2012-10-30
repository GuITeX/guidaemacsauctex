MAIN	 	= introemacs
MAIN_TEX	= $(MAIN).tex
ALL_TEX		= $(wildcard *.tex)
ALL_BIB		= $(wildcard *.bib)
TODAY		= $(shell date "+%Y%m%d")
TAR_NAME	= $(MAIN)-$(TODAY).tar.gz
TAR_WILD   	= $(MAIN)-*.tar.gz
FIGURE		= figure
PDF		= $(MAIN).pdf

.PHONY: dist

$(PDF): $(ALL_TEX) $(ALL_BIB) preambolo.sty
	latexmk -pdf -recorder- $(MAIN_TEX)

dist:
	rm -f $(TAR_WILD)
	tar -czf $(TAR_NAME) $(PDF)
