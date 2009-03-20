(setq inferior-lisp-program "/usr/bin/sbcl")
(add-to-list 'load-path "the path of your slime directory")

(add-hook 'lisp-mode-hook 
	  '(lambda ()
	     (require 'slime)
	     (slime-setup)
	     (setq common-lisp-hyperspec-root "file:///usr/share/doc/hyperspec/")))


(provide 'slime-rc)
