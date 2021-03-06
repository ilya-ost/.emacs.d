;;; open-external.el --- 

;; Copyright (C) 2009  Ilya Ostanin

;; Author: Ilya Ostanin <ilya@myhost>
;; Keywords: 

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; 

;;; Code:

(require 'open-external)

(setq command-list
      '(("mp3 ogg ape flac" .
	 emms-add-file)
      ("jpg jpeg png bmp" .
       "gthumb")
      ("pdf djvu ps" .
       "evince")
      ("html htm" .
       "firefox -new-tab")
      ("ogv mpg mpeg avi flv 
	VOB wmv mp4 mov mkv divx
	 ogm m4v asf rmvb 3gp I00 I01" .
       "mplayer -fs")
      ("doc odf odt rtf" .
       "soffice")
      ("rar" .
       "unrar.sh")))

(provide 'open-external-rc)
;;; open-external.el ends here
