;;; mule-rc.el --- Language environment config

;; Copyright (C) 2009  ilya

;; Author: ilya <ilya@debian>

;;; Code:

(set-language-environment 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'mule-utf-8)
(setq default-input-method 'russian-computer)
;; (setq x-select-request-type '(UTF8_STRING COMPOUND_TEXT TEXT STRING))

(provide 'mule-rc)
;;; mule-rc.el ends here
