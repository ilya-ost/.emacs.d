(add-to-list 'load-path "~/.emacs.d/vendor/emms/lisp")
(require 'emms-setup)
(require 'emms-info-libtag)
(require 'emms-info-metaflac)
(require 'emms-info-ogginfo)
(emms-devel)
(emms-default-players)
(setq emms-player-list '(emms-player-mplayer))

(require 'emms-playing-time)
(emms-playing-time 1)

(setq
 emms-info-auto-update t
 emms-info-asynchronously t
 later-do-interval 0.0001
 emms-info-functions '(emms-info-metaflac
		       emms-info-mp3info
		       emms-info-ogginfo)
 emms-source-file-default-directory "~/audio/"
 emms-show-format "NP: %s"
 )

(setq emms-volume-change-function 'emms-player-mplayer-volume)

(setq emms-browser-default-covers
      '("/home/ilya/audio/cover_small.png1" nil nil))

(defun my-emms-find-cover (dirpath size)
  (car (directory-files dirpath
			t
			"\\(.*.jpg\\)\\|\\(.*.jpeg\\)")))

(add-hook 'emms-player-started-hook 'emms-show)
        
(defun emms-google-for-lyrics ()
  (interactive)
  (browse-url
   (concat "http://www.google.com/search?q="
           (replace-regexp-in-string " +" "+"
                                     (concat "lyrics "
                                             (delete ?- (emms-track-description
							 (emms-playlist-current-selected-track))))))))


(defun emms-player-mplayer-volume (vol)
  "Depends on mplayer's -slave mode."
  (process-send-string
   emms-player-simple-process-name
   (format "volume %d 0\n" vol)))

(global-set-key "\C-cee" 'emms)
(global-set-key "\C-ceg" 'emms-google-for-lyrics)
(global-set-key "\C-ceh" 'emms-show)
(global-set-key "\C-cet" 'emms-pause)
(global-set-key "\C-ceb" 'emms-browser)
(global-set-key "\C-cen" 'emms-next)
(global-set-key "\C-cep" 'emms-previous)
(global-set-key "\C-ces" 'emms-cache-sync)
(global-set-key "\C-cem" 'emms-lastfm-radio-request-metadata)
(global-set-key "\C-cel" '(lambda ()
			    (interactive)
			    (emms-lastfm-radio (concat
						"lastfm://artist/"
						(read-from-minibuffer "Artist: ")))))

(provide 'emms-rc) 