(add-to-list 'load-path "~/.emacs.d/vendor/cedet")
(setq semantic-load-turn-everything-on t)
(load-file "~/.emacs.d/vendor/cedet/common/cedet.el")

(require 'bovine-grammar nil t)
(when (require 'ede nil t)
  (global-ede-mode t))
(require 'semantic nil t)
(semantic-load-enable-code-helpers)
(global-semantic-idle-scheduler-mode 1)
;; (global-semantic-idle-completions-mode 1)
(global-semantic-idle-summary-mode 1)
(require 'semantic-sb nil t)
(require 'semanticdb nil t)
(semantic-load-enable-guady-code-helpers)
;;(semantic-load-enable-excessive-code-helpers)


;; smart completions
(require 'semantic-ia)

(require 'eassist)

(global-semanticdb-minor-mode 1)

(setq-mode-local c-mode semanticdb-find-default-throttle
                 '(project unloaded system recursive))
(setq-mode-local c++-mode semanticdb-find-default-throttle
                 '(project unloaded system recursive))



 ;; (add-hook 'lisp-mode-hook 'my-cedet-hook)

(defun my-c-mode-cedet-hook ()
  (setq semantic-stickyfunc-mode nil))

(add-hook 'c-mode-common-hook 'my-c-mode-cedet-hook)
(add-hook 'c-mode-common-hook 'my-cedet-hook)

(setq-default semanticdb-default-save-directory "~/tmp/semantic")

(semantic-add-system-include "/usr/include" 'c-mode)
(semantic-add-system-include "/usr/include/c++/4.3" 'c++-mode)
(semantic-add-system-include "/usr/include/" 'c++-mode)
(semantic-add-system-include "/usr/include/qt4/QtCore" 'c++-mode)

(custom-set-variables
 '(semantic-idle-scheduler-idle-time 10)
)

(global-semantic-stickyfunc-mode -1)

(provide 'cedet-rc)