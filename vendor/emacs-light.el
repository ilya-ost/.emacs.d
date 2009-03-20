(add-to-list 'load-path "/usr/share/emacs/site-lisp")
(add-to-list 'load-path "/home/ilya/emacs")

(load-file "~/emacs/my-defuns.el")
(load-file "~/emacs/dired-rc.el")

(set-language-environment 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'mule-utf-8)
(setq default-input-method 'russian-computer)
(setq inhibit-splash-screen "_")
(show-paren-mode)
(set-frame-font "terminus-12")
(menu-bar-mode 0)
(scroll-bar-mode nil)
(setq frame-background-mode 'dark)
(set-background-color "grey10")
(set-face-foreground 'default "grey90")

(ido-mode)
(defvar ido-enable-flex-matching t)
(ansi-color-for-comint-mode-on)

(global-set-key [C-backspace] 'backward-kill-sexp)
(global-set-key "\C-xb" 'ido-switch-buffer)
(global-set-key "\C-x\C-m"  'anything)
(global-set-key "\C-xm"  'anything)

