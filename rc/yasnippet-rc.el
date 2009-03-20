;;; yasnippet-rc.el --- 

;; Copyright (C) 2009  ilya

;; Author: ilya <ilya@debian>

;;; Code:

(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/.emacs.d/snippets")
(yas/minor-mode-on)

(provide 'yasnippet-rc)
;;; yasnippet-rc.el ends here
