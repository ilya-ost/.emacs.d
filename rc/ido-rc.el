;;; ido-rc.el --- 

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

;;; Code:

(ido-mode 1)
(defvar ido-enable-flex-matching t)
(setq ido-execute-command-cache nil)

(defun ido-execute-command ()
  (interactive)
  (call-interactively
   (intern
    (ido-completing-read
     "M-x "
     (progn
       (unless ido-execute-command-cache
	 (mapatoms (lambda (s)
		     (when (commandp s)
		       (setq ido-execute-command-cache
			     (cons (format "%S" s) ido-execute-command-cache))))))
       ido-execute-command-cache)))))

(setq enable-recursive-minibuffers t)
(define-key ido-file-dir-completion-map [(meta control ?b)] 'ido-goto-bookmark)

(add-hook 'ido-setup-hook
	  (lambda ()
	    (setq ido-enable-flex-matching t)
	    (global-set-key "\M-x" 'ido-execute-command)))

(global-set-key "\C-xb" 'ido-switch-buffer)

(provide 'ido-rc)
;;; ido-rc.el ends here
