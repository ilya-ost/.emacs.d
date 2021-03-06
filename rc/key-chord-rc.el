;;; key-chord-rc.el --- key chord rc

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


(require 'key-chord)
(key-chord-mode 1)

(key-chord-define-global ",."     "<>\C-b")
(key-chord-define-global "[]"     "[]\C-b")
(key-chord-define-global "\"\""     "\"\"\C-b")
(key-chord-define-global "()"     "()\C-b")

(key-chord-define-global "kl"     'nuke-line)
(key-chord-define-global "jk"     'reindent-then-newline-and-indent)

(key-chord-define-global "4r"     "$")
(key-chord-define-global "2w"     "@")

(provide 'key-chord-rc)
;;; key-chord-rc.el ends here
