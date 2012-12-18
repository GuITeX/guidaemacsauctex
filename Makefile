## Copyright (C) 2012 M. Giordano, O. Iovino, M. Leccardi
##
## This program is free software; you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 3 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	See the
## GNU General Public License for more details.

## Makefile per la compilazione della guida tematica introemacs.tex

MAIN	 	= introemacs
MAIN_TEX	= $(MAIN).tex
ALL_TEX		= $(wildcard *.tex)
ALL_BIB		= $(wildcard *.bib)
BACKUP_TEX	= $(wildcard *.tex~)
BACKUP_BIB	= $(wildcard *.bib~)
BACKUP_MISC	= $(wildcard *.bak)
TODAY		= $(shell date "+%Y%m%d")
TAR_NAME	= $(MAIN)-$(TODAY).tar.gz
TAR_WILD   	= $(MAIN)-*.tar.gz
FIGURE		= figure
PDF		= $(MAIN).pdf

.PHONY: clean dist

$(PDF): $(ALL_TEX) $(ALL_BIB) preambolo.sty
	latexmk -pdf -recorder- $(MAIN_TEX)

clean:
	rm -f $(BACKUP_TEX) $(BACKUP_BIB) $(BACKUP_MISC) Makefile~

dist:
	rm -f $(TAR_WILD)
	tar -czf $(TAR_NAME) $(PDF)
