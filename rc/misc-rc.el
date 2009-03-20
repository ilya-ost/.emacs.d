;;; misc-rc.el --- Miscelaneous definitions

;; Copyright (C) 2009  Ilya Ostanin

;; Author: Ilya Ostanin <ilya@myhost>
;; Keywords: 

;;; Commentary:

;;; Code:

;; (server-start)

(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(put 'dired-find-alternate-file 'disabled nil)
(put 'set-goal-column 'disabled nil)
(put 'narrow-to-region 'disabled nil)

(global-hl-line-mode 1)
(fset 'yes-or-no-p 'y-or-n-p)
(setq make-backup-files nil)
(cua-mode t)
(setq cua-enable-cua-keys nil)

(defalias 'qrr 'query-replace-regexp)

(add-hook 'before-save-hook
          '(lambda ()
             (or (file-exists-p (file-name-directory buffer-file-name))
                 (make-directory (file-name-directory buffer-file-name) t))))

(require 'executable)

(add-hook 'after-save-hook
	  #'(lambda ()
	      (and (save-excursion
		     (save-restriction
		       (widen)
		       (goto-char (point-min))
		       (save-match-data
			 (looking-at "^#!"))))
		   (not (file-executable-p buffer-file-name))
		   (executable-chmod)
		   (message
		    (concat "Saved as script: " buffer-file-name)))))

(require 'term)
(term-set-escape-char ?\C-x)

(require 'autoinsert)
(auto-insert-mode)  ;;; Adds hook to find-files-hook
(setq auto-insert-directory "~/.mytemplates/") ;;; Or use custom, *NOTE* Trailing slash important
(setq auto-insert-query nil) ;;; If you don't want to be prompted before insertion

(global-set-key (kbd "<f2>") 'visit-ansi-term)
(global-set-key "\C-ct" 'tex-escape)
(global-set-key "\M-/"  'hippie-expand)
(global-set-key "\C-cfs" 'find-file-str)
(global-set-key "\C-cfi" 'semantic-decoration-include-visit)
(global-set-key "\C-ch" 'col-highlight-flash)
(global-set-key (kbd "M-x") 'execute-extended-command)
(global-set-key "\M-;"  'my-comment)
(global-set-key "\C-x["  '(lambda ()
			    (interactive)
			    (shrink-window-horizontally 10)))
(global-set-key "\C-x]"  '(lambda ()
			    (interactive)
			    (shrink-window-horizontally -10)))
(global-set-key [f11] 'compile)
(global-set-key "\C-z" 'undo)
(global-set-key "\C-x\C-b" 'ibuffer)
(global-set-key "\C-cs" 'eshell)
(global-set-key "\M-i" '(lambda ()
			  (interactive)
			  (insert "    ")))
(global-set-key [C-backspace] 'backward-kill-sexp)

(provide 'misc-rc)
;;; misc-rc.el ends here
