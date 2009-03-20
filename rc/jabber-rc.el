(require 'jabber)

(setq jabber-nickname "ilya.a.ostanin")
(setq jabber-resource "emacs")

(setq jabber-account-list '(("ilya.a.ostanin@gmail.com/emacs" 
                             (:network-server . "talk.google.com")
			     (:network-port . 5223)
                             (:connection-type . ssl))
			    ("ilya_ost@jabber.org/emacs")))


(setq tls-program '("openssl s_client -connect %h:%p -no_ssl2 -no_ticket"))

(define-jabber-alert notification "Display using Notification and dbus" 
  'show-notification)

(setq jabber-alert-message-hooks
      '(jabber-message-echo jabber-message-scroll jabber-message-notification))


(global-set-key "\C-cjs" 'jabber-switch-to-roster-buffer)

(global-set-key "\C-cjc" 'jabber-connect)
(global-set-key "\C-cjd" 'jabber-disconnect)

(provide 'jabber-rc)
