;;; io-utils.el --- Utilities functions

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

(defun nuke-line ()
  (interactive)
  (beginning-of-line)
  (setq kill-whole-line t)
  (kill-line)
  (setq kill-whole-line nil))

(defun comment-line ()
  (interactive)
  (setq beg (point))
  (move-beginning-of-line nil)
  (setq begreg (point))
  (move-end-of-line nil)
  (comment-or-uncomment-region begreg (point))
  (goto-char beg))

(defun my-comment ()
  (interactive)
  (if (region-active-p)
      (comment-or-uncomment-region (region-beginning) (region-end))
    (comment-line)))

(defun insert-path ()
  "Inserts a path into the buffer with completion"
  (interactive)
  (insert (read-file-name "Path: ")))

(defun find-file-str ()
  (interactive)
  (find-file (thing-at-point 'filename)))

(defun tex-escape ()
  (interactive)
  (shell-command-on-region (region-beginning)
			   (region-end)
			   "latexesc.sed"
			   (current-buffer)
			   t))

(defun visit-ansi-term ()
  "If we are in an *ansi-term*, rename it.
If there is no *ansi-term*, run it.
If there is one running, switch to that buffer."
  (interactive)
  (if (equal "*ansi-term*" (buffer-name))
      (call-interactively 'rename-buffer)
      (if (get-buffer "*ansi-term*")
   (switch-to-buffer "*ansi-term*")
   (ansi-term "/bin/zsh"))))

(provide 'io-utils)
;;; io-utils.el ends here
