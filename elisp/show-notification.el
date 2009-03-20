;;; show-notification.el --- Dbus notification

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

(require 'dbus)

(defun show-notification (msg)
  "Show short message (no body, only summary)"
  (show-notification2 "" msg -1))

(defun show-notification2 (body summary time) 
  "Show notification using dbus and org.freedesktop.Notifications.
body - body of notification message; summary - summary of notification; 
time - The timeout time in milliseconds since the display of the notification 
at which the notification should automatically close (-1 the notification's 
expiration time is dependent on the notification server's settings)"
  (dbus-call-method 
   :session 
  "org.freedesktop.Notifications"
   "/org/freedesktop/Notifications"
   "org.freedesktop.Notifications" 
   "Notify"
   "GNU Emacs"                 ;; Application name.
   0                           ;; No replacement of other notifications.
   ""                          ;; No icon.
   (encode-coding-string summary 'utf-8-unix) ;;summary
   (encode-coding-string body    'utf-8-unix) ;; body
   '(:array)                   ;; No actions (empty array of strings).
   '(:array :signature "{sv}") ;; No hints (empty array of dictionary entries).
   ':int32 time))

(provide 'show-notification)
;;; show-notification.el ends here
