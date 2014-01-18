;;; init.el --- Personal GNU Emacs configuration
;;
;; Copyright (c) 2014 Matteo Leccardi
;;
;; Author: Matteo Leccardi

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

;; Impostazioni per il correttore ortografico
(setq-default ispell-program-name "aspell")
(setq-default ispell-extra-args '("--reverse"))
(setq ispell-dictionary "italiano")

;; Ricerca diretta inversa
(setq TeX-source-correlate-method (quote synctex))
(setq TeX-source-correlate-mode t)
(setq TeX-source-correlate-start-server t)

(setq TeX-view-program-list
           '(("dvips and Skim" "%(o?)dvips %d -o &&\
 /Applications/Skim.app/Contents/SharedSupport/displayline %n %f %b")
             ("dvips and open" "%(o?)dvips %d -o &&  open %f")
             ("Skim"
              "/Applications/Skim.app/Contents/SharedSupport/\
displayline %n %o %b")
             ("open" "open %o")))

(setq TeX-view-program-selection 
           '(((output-dvi style-pstricks) "dvips and Skim")
             (output-dvi "Skim")
             (output-pdf "Skim")
             (output-html "open")))

;; Se con la ricerca inversa la finestra di emacs non è torna in primo
;; piano togliere i segni di commento dalle tre righe seguenti

;; (defun ns-raise-emacs ()
;;   (ns-do-applescript "tell application \"Emacs\" to activate"))
;; (add-hook 'server-visit-hook 'ns-raise-emacs)

;; Coppia di graffe automatica per _ e ^
(setq TeX-electric-sub-and-superscript t)

;; Didascalia tabelle sopra
(setq LaTeX-top-caption-list (quote ("table")))

;; A capo automatico
(add-hook 'TeX-mode-hook 'turn-on-auto-fill)

;;; init.el ends here
