(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(browse-url-browser-function (quote browse-url-firefox))
 '(browse-url-galeon-program "galeon")
 '(emms-browser-covers (quote my-emms-find-cover))
 '(emms-browser-default-covers nil)
 '(emms-cache-get-function (quote emms-cache-get))
 '(emms-cache-modified-function (quote emms-cache-dirty))
 '(emms-cache-set-function (quote emms-cache-set))
 '(emms-player-next-function (quote emms-score-next-noerror))
 '(emms-track-description-function (quote emms-info-track-description))
 '(emms-volume-change-function (quote emms-player-mplayer-volume))
 '(global-hl-line-mode t)
 '(ido-enable-flex-matching t)
 '(ido-mode (quote both) nil (ido))
 '(org-modules (quote (org-info)))
 '(quack-manuals (quote ((r5rs "R5RS" "http://www.schemers.org/Documents/Standards/R5RS/HTML/" nil) (bigloo "Bigloo" "http://www-sop.inria.fr/mimosa/fp/Bigloo/doc/bigloo.html" nil) (chez "Chez Scheme User's Guide" "http://www.scheme.com/csug/index.html" nil) (chicken "Chicken User's Manual" "http://www.call-with-current-continuation.org/manual/manual.html" nil) (gambit "Gambit-C home page" "http://www.iro.umontreal.ca/~gambit/" nil) (gauche "Gauche Reference Manual" "http://www.shiro.dreamhost.com/scheme/gauche/man/gauche-refe.html" nil) (mitgnu-ref "MIT/GNU Scheme Reference" "http://www.gnu.org/software/mit-scheme/documentation/scheme.html" nil) (mitgnu-user "MIT/GNU Scheme User's Manual" "http://www.gnu.org/software/mit-scheme/documentation/user.html" nil) (mitgnu-sos "MIT/GNU Scheme SOS Reference Manual" "http://www.gnu.org/software/mit-scheme/documentation/sos.html" nil) (plt-mzscheme "PLT MzScheme: Language Manual" "/home/ilya/texts/Scheme/download.plt-scheme.org/doc/html" t) (plt-mzlib "PLT MzLib: Libraries Manual" plt t) (plt-mred "PLT MrEd: Graphical Toolbox Manual" plt t) (plt-framework "PLT Framework: GUI Application Framework" plt t) (plt-drscheme "PLT DrScheme: Programming Environment Manual" plt nil) (plt-insidemz "PLT Inside PLT MzScheme" plt nil) (plt-tools "PLT Tools: DrScheme Extension Manual" plt nil) (plt-mzc "PLT mzc: MzScheme Compiler Manual" plt t) (plt-r5rs "PLT R5RS" plt t) (scsh "Scsh Reference Manual" "http://www.scsh.net/docu/html/man-Z-H-1.html" nil) (sisc "SISC for Seasoned Schemers" "http://sisc.sourceforge.net/manual/html/" nil) (htdp "How to Design Programs" "http://www.htdp.org/" nil) (htus "How to Use Scheme" "http://www.htus.org/" nil) (t-y-scheme "Teach Yourself Scheme in Fixnum Days" "http://www.ccs.neu.edu/home/dorai/t-y-scheme/t-y-scheme.html" nil) (tspl "Scheme Programming Language (Dybvig)" "http://www.scheme.com/tspl/" nil) (sicp "Structure and Interpretation of Computer Programs" "http://mitpress.mit.edu/sicp/full-text/book/book-Z-H-4.html" nil) (slib "SLIB" "http://swissnet.ai.mit.edu/~jaffer/SLIB.html" nil) (faq "Scheme Frequently Asked Questions" "http://www.schemers.org/Documents/FAQ/" nil) (doc "doc" "/home/ilya/texts/Scheme/download.plt-scheme.org/doc/html" t))))
 '(quack-pltcollect-dirs (quote ("/usr/lib/plt/collects" "/home/neil/.plt-scheme")))
 '(quack-pretty-lambda-p t)
 '(semantic-idle-scheduler-idle-time 10)
 '(which-function-mode t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(highlight ((t (:background "darkseagreen2"))))
 '(hl-line ((t (:inherit highlight :background "LemonChiffon")))))
