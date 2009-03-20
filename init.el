;;; init.el --- 

(add-to-list 'load-path "~/.emacs.d/rc")
(add-to-list 'load-path "~/.emacs.d/elisp")
(add-to-list 'load-path "~/.emacs.d/vendor")
(add-to-list 'load-path "~/.emacs.d/vendor/ecb-snap")

(require 'mule-rc)
(require 'decor-rc)
;; (require 'cedet-rc)
(require 'ido-rc)
(require 'anything-rc)
(require 'yasnippet-rc)
(require 'color-theme-rc)
(require 'key-chord-rc)
;; (require 'autocomplete-rc)
(require 'org-rc)
(require 'io-utils)
(require 'misc-rc)
(require 'open-external-rc)
(require 'python-rc)
(require 'dired-rc)
;; (require 'emms-rc)
(require 'haskell-mode-rc)
(require 'scheme-rc)
;; (require 'jabber-rc)
;; (require 'col-highlight)
;; (require 'ecb-autoloads)
;; (require 'magit)


(setq custom-file "~/.emacs.d/custom.el")
(load custom-file 'noerror)

;;; init.el ends here
