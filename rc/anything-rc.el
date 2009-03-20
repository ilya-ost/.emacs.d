;;; anything-rc.el --- 

;; Copyright (C) 2009  ilya

;; Author: ilya <ilya@debian>

;;; Code:

(require 'anything-config)

(require 'anything-dabbrev-expand)

(setq anything-sources
      (list anything-c-source-buffers
	    anything-c-source-bookmarks
	    anything-c-source-emacs-commands
	    ))

(defun anything-bookmarks ()
  (interactive)
  (let ((anything-sources
	 (list anything-c-source-bookmarks
	       )))
    (call-interactively 'anything)))

(global-set-key "\C-x\C-m"  'anything)
(global-set-key "\C-xm"  'anything)
(global-set-key "\C-cb"  'anything-bookmarks)
(global-set-key "\C-c\C-b"  'anything-bookmarks)


(setq anything-samewindow t)

(provide 'anything-rc)
;;; anything-rc.el ends here
