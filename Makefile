MAIN	 	= introemacs
ALL_TEX		= $(wildcard *.tex)
ALL_BIB		= $(wildcard *.bib)
TODAY		= $(shell date "+%Y%m%d")
TAR_NAME	= $(MAIN)-$(TODAY).tar.gz
TAR_WILD   	= $(MAIN)-*.tar.gz
FIGURE		= figure
PDF		= $(MAIN).pdf

.PHONY: dist

dist:
	rm -f $(TAR_WILD)
	tar -cf $(TAR_NAME) $(PDF)

