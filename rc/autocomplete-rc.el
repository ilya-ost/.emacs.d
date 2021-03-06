;;; autocomplete-rc.el --- 

;; Copyright (C) 2009  ilya

;; Author: ilya <ilya@debian>
;; Keywords: 

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; 

;;; Code:

(require 'auto-complete)
(global-auto-complete-mode t)

(define-key ac-complete-mode-map "\M-n" 'ac-next)
(define-key ac-complete-mode-map "\M-p" 'ac-previous)
(define-key ac-complete-mode-map "\C-n" 'ac-next)
(define-key ac-complete-mode-map "\C-p" 'ac-previous)

(setq ac-auto-start nil)
(global-set-key "\M-n" 'ac-start)
;; (define-key ac-complete-mode-map "\M-/" 'ac-stop)

(set-default 'ac-sources '(ac-source-abbrev ac-source-words-in-buffer))

(add-hook 'emacs-lisp-mode-hook
	  (lambda ()
	    (setq ac-sources '(ac-source-words-in-buffer ac-source-symbols))))

(provide 'autocomplete-rc)
;;; autocomplete-rc.el ends here
