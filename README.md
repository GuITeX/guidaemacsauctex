Introduzione ad GNU Emacs & AUCTeX
==================================

Descrizione
-----------

In questa guida tematica si spiega come installare e configurare l'editor GNU
Emacs con l'estensione AUCTeX per i più noti sistemi operativi: GNU/Linux,
Windows, Mac OS. Il lettore dovrebbe essere in grado di scrivere un documento
LaTeX con questo editor usando le funzioni comuni di ogni editor (ricerca
diretta-inversa, correzione ortografica) più qualche altra funzione di Emacs.

Compilare il sorgente
---------------------

Per compilare questa guida bisogna avere una distribuzione LaTeX aggiornata (si
consiglia TeX Live 2012). Se si dispone del programma *make* basta scrivere in
una shell ``make`` oppure ``M-x compile RET`` da Emacs.  Se non si ha il
programma *make* i passi per la compilazione sono
````
pdflatex introemacs
bibtex introemacs
pdflatex introemacs
pdflatex introemacs
````

Licenza d'uso
-------------

Quest'opera è soggetta alla Creative Commons Public License versione 3.0 o
posteriore: *Attribuzione*, *Non Commerciale*, *Condividi allo stesso modo*.  Un
riassunto in linguaggio accessibile a tutti è reperibile sul sito ufficiale
http://creativecommons.org/licenses/by-nc-sa/3.0/deed.it.

Colophon
--------

Questo file è stato scritto in Emacs 24.1 con la
[markdown-mode.el](http://jblevins.org/projects/markdown-mode/)
