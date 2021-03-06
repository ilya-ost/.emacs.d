(require 'dired-details)
(dired-details-install)
(require 'dired-x)
(setq dired-recursive-deletes 'always)
(setq dired-recursive-copies 'always)

(add-hook 'dired-load-hook
               (lambda ()
                 (load "dired-x")
                 ;; Set dired-x global variables here.  For example:
                 ;; (setq dired-guess-shell-gnutar "gtar")
                 ;; (setq dired-x-hands-off-my-keys nil)
                 ))

(add-hook 'dired-mode-hook
	  (lambda ()
	    ;; Set dired-x buffer-local variables here.  For example:
 	    (dired-omit-mode 1)
	    (add-to-list 'dired-omit-extensions ".torrent")
	    (setq dired-omit-files
		  (concat dired-omit-files "\\|^\\..+$"))))


(defun my-dired-open-dir ()
  (interactive)
  (shell-command (concat "mvupdir.sh \"" (dired-get-filename) "\"")))

(add-hook 'dired-mode-hook
	  '(lambda ()
	     (define-key dired-mode-map "a" 'emms-add-dired)
	     (define-key dired-mode-map "J" 'my-dired-open-dir)
	     (define-key dired-mode-map "r" 'wdired-change-to-wdired-mode)
	     (define-key dired-mode-map "\C-u" 'dired-up-directory)
	     ))

(setq directory-free-space-args "-Pkh")
(setq directory-free-space-program "df")
(setq dired-clean-up-buffers-too nil)
(setq dired-dwim-target t)
(setq dired-listing-switches "-al")
(setq dired-no-confirm nil)
(setq dired-recursive-copies (quote always))
(setq dired-recursive-deletes (quote always))

(provide 'dired-rc)