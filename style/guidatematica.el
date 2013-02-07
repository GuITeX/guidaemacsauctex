;;; guidatematica.el --- AUCTeX style for `guidatematica.cls'

;; Copyright (C) 2013 Free Software Foundation, Inc.

;; Author: Orlando Iovino <orlando[dot]iovino[at]yahoo[dot]it>
;; Created: 2013-02-07
;; Keywords: tex

;; This file is no part of AUCTeX.

;; AUCTeX is free software; you can redistribute it and/or modify it
;; under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; AUCTeX is distributed in the hope that it will be useful, but
;; WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
;; General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with AUCTeX; see the file COPYING. If not, write to the Free
;; Software Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA
;; 02110-1301, USA.

;;; Commentary:

;; This file adds support for the `guidatematica.cls'.

;;; Code:

(TeX-add-style-hook "guidatematica"
 (lambda ()
   (TeX-add-symbols
    ;; Comandi
    '("ProvidesFile" "Nome del file" [ "aaaa/mm/gg v.x.y Descrizione" ])
    '("meta" "Argomento")
    '("marg" "Argomento")
    '("oarg" "Argomento")
    '("garg" "x,y")
    '("comando" "Comando (con \\)")
    '("cs" "Comando (senza \\)")
    '("Bambiente" "Nome dell'ambiente")
    '("Eambiente" "Nome dell'ambiente")
    '("Sambiente" "Nome dell'ambiente" "Numero di argomenti")
    '("Dambiente" "Nome dell'ambiente" "Numero di argomenti" "Arg. default")
    '("Arg" "Argomento")
    '("GetFileInfo" "Nome del file")
    '("setcopymark" "Testo del copymark")
    '("subtitle" "Sottotitolo")
    '("showindexmarks")
    '("hideindexmarks")
    '("texttm" "Argomento")
    '("texttv" "Argomento")
    '("tvfamily")
    '("textl" "Numero")
    '("prebibhook" "Testo")
    '("ambstyle" "Nome dell'ambiente")
    '("classstyle" "Nome della classe")
    '("filestyle" "Nome del file")
    '("packstyle" "Nome del pacchetto")
    '("progstyle" "Nome del programma")
    '("opzstyle" "Nome dell'opzione")
    '("contastyle" "Nome del contatore")
    '("stilestyle" "Nome dello stile di pagina")
    '("numeristyle" "Nome dello stile di numerazione")
    '("umisurastyle" "Unità di misura")
    '("chiavestyle" "Nome della chiave")
    '("descrittorestyle" "Codice del descrittore")
    '("posizionestyle" "Codice di posizionamento")
    '("allineamentostyle" "Codice di allineamento")
    ;; Comandi collegati all'indice analitico
    '("opz" "Nome dell'opzione")
    '("conta" "Nome del contatore")
    '("stile" "Nome dello stile di pagina")
    '("numeri" "Nome dello stile di numerazione")
    '("umisura" "Unità di misura")
    '("chiave" "Nome della chiave")
    '("descrittore" "Codice del descrittore")
    '("posizione" "Codice di posizionamento")
    '("allineamento" "Codice di allineamento")
    '("amb" "Nome dell'ambiente")
    '("class" "Nome della classe")
    '("file" "Nome del file")
    '("pack" "Nome del pacchetto")
    '("prog" "Nome del programma"))
   ;; Ambienti
   (LaTeX-add-environments
    '("blockdescription" LaTeX-env-item) ;; MODIFICARE
    '("plaindescription" LaTeX-env-item) ;; MODIFICARE
    '("compactitemize" LaTeX-env-item)
    '("compactenumerate" LaTeX-env-item)
    '("compactdescription" LaTeX-env-item) ;; MODIFICARE
    '("sintassi"))
   ;; Fontification
   (when (and (featurep 'font-latex)
	      (eq TeX-install-font-lock 'font-latex-setup))
     (font-latex-add-keywords '(;; Comandi
				("ProvidesFile" "{[")
				("meta" "{")
				("marg" "{")
				("oarg" "{")
				("garg" "{")
				("comando" "{")
    				("cs" "{")
				("Bambiente" "{")
				("Eambiente" "{")
				("Sambiente" "{{")
				("Dambiente" "{{{")
				("Arg" "{")
				("GetFileInfo" "{")
				("setcopymark" "{")
				("subtitle" "{")
				("showindexmarks")
				("hideindexmarks")
				("texttm" "{")
				("texttv" "{")
				("tvfamily")
				("textl" "{")
				("prebibhook" "{")
				("ambstyle" "{")
				("classstyle" "{")
				("filestyle" "{")
				("packstyle" "{")
				("progstyle" "{")
				("opzstyle" "{")
				("contastyle" "{")
				("stilestyle" "{")
				("numeristyle" "{")
				("umisurastyle" "{")
				("chiavestyle" "{")
				("descrittorestyle" "{")
				("posizionestyle" "{")
				("allineamentostyle" "{")
				;; Comandi collegati all'indice analitico
				("opz" "{")
				("conta" "{")
				("stile" "{")
				("numeri" "{")
				("umisura" "{")
				("chiave" "{")
				("descrittore" "{")
				("posizione" "{")
				("allineamento" "{")
				("amb" "{")
				("class" "{")
				("file" "{")
				("pack" "{")
				("prog" "{")
				)
			      'function))))

(defvar LaTeX-guidatematica-class-options '("ipertesto")
  "Class options for the guidatematica class.")

;;; guidatematica.el ends here
