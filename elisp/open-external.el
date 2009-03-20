;;; open-external.el --- Opening files with external apps

;; Copyright (C) 2009  Ilya Ostanin

;; Author: Ilya Ostanin <ilya@myhost>
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

(defun build-re (str)
  (let ((re "\\.\\(")
	(ext-list (split-string str)))
    (dotimes (n (- (length ext-list) 1))
      (setq re (concat re (nth n ext-list) "$\\|")))
    (setq re (concat re (car (last ext-list)) "$\\)$"))
    re))

(defun try-open-external (filename)
  (let ((success nil))
    (dolist (command command-list)
      (let ((cmd (cdr command))
	    (re (build-re (car command))))
	(when (string-match re filename)
	  (if (stringp cmd)
	      (shell-command-to-string (concat cmd
					       " "
					       (shell-quote-argument filename)
					       " &> /dev/null &"))
	    (funcall cmd filename))
	  (setq success t))))
    success))

(fset 'old-find-file-noselect (symbol-function 'find-file-noselect))

(defun find-file-noselect (filename &optional nowarn rawfile wildcards)
  (if (try-open-external filename)
      nil
    (old-find-file-noselect filename nowarn rawfile wildcards)))

(defun my-org-find-file (file)
  (when (not (try-open-external file))
    (find-file-other-window file)))

(provide 'open-external)
;;; open-external.el ends here
