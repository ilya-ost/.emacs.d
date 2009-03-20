(setq org-return-follows-link t)
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))

(setq org-agenda-files '("~/org/personal.org"))
(setq org-agenda-include-diary nil)
(setq org-agenda-prefix-format (quote ((agenda . "%t") (timeline . "") (todo . "  ") (tags . ""))))
(setq org-hide-leading-stars t)
(setq org-log-done nil)
(setq org-special-ctrl-a/e t)

(setq org-file-apps (quote ((".*" my-org-find-file file))))

(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)

(setq org-link-abbrev-alist
      '(("google"   . "http://www.google.com/search?q=")
         ))

(provide 'org-rc)
