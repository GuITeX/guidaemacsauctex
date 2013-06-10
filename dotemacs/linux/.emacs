;;; init.el --- Personal GNU Emacs configuration
;;
;; Copyright (c) 2013 Mosè Giordano
;;
;; Author: Mosè Giordano

;; This file is NOT part of GNU Emacs.

;;; Commentary:

;; Generic customizations.

;;; License:

;; This program is free software; you can redistribute it and/or modify it under
;; the terms of the GNU General Public License as published by the Free Software
;; Foundation; either version 3 of the License, or (at your option) any later
;; version.
;;
;; This program is distributed in the hope that it will be useful, but WITHOUT
;; ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
;; FOR A PARTICULAR PURPOSE. See the GNU General Public License for more
;; details.
;;
;; You should have received a copy of the GNU General Public License along with
;; GNU Emacs; see the file COPYING. If not, write to the Free Software
;; Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301,
;; USA.

;; Code:

(add-hook 'LaTeX-mode-hook 'TeX-PDF-mode); ...... attiva di default la pdflatex-mode
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode); ... attiva di default la math-mode
(add-hook 'LaTeX-mode-hook 'turn-on-reftex); .... attiva di default la reftex-mode

;; Chiede qual e' il master file all'apertura di Emacs
(setq-default TeX-master nil)

;; Crea una directory con informazioni sui pacchetti
(setq TeX-parse-self t)
(setq TeX-auto-save t)

;; Visualizza bad-boxes/warning
(setq TeX-debug-bad-boxes t)
(setq TeX-debug-warnings t)

;; Attiva automaticamente correttore ortografico per documenti LaTeX
(add-hook 'LaTeX-mode-hook 'flyspell-mode)

;; Ricerca diretta e inversa
(setq TeX-source-correlate-mode t
      TeX-source-correlate-start-server t)

;; Imposta Evince come visualizzatore predefinito di DVI e PDF (commenta se non
;; utilizzi questo programma)
(setq TeX-view-program-selection
      '(((output-dvi style-pstricks) "dvips and gv")
	(output-dvi "Evince")
	(output-pdf "Evince")
	(output-html "xdg-open")))

;; Imposta Okular come visualizzatore predefinito di DVI e PDF (decommenta le
;; seguenti righe se Okular è il tuo visualizzatore preferito)
;; (setq TeX-view-program-selection
;;       '(((output-dvi style-pstricks) "dvips and gv")
;; 	(output-dvi "Okular")
;; 	(output-pdf "Okular")
;; 	(output-html "xdg-open")))

;; Coppia di graffe automatica per _ e ^
(setq TeX-electric-sub-and-superscript t)

;; Didascalia tabelle sopra
(setq LaTeX-top-caption-list '("table"))

;; A capo automatico
(add-hook 'TeX-mode-hook 'turn-on-auto-fill)
(setq-default fill-column 80) ;; cambia numero di caratteri per riga

;; Rientra automaticamente la nuova riga quando si preme <RET>
(setq TeX-newline-function 'newline-and-indent)

;;; init.el ends here
