(add-hook 'python-mode-hook
          '(lambda () 
	     (eldoc-mode 1)
	     (require 'pymacs)
	     (pymacs-load "ropemacs" "rope-")) 
	  t)


(defun my-python-documentation (w)
  "Launch PyDOC on the Word at Point"
  (interactive
   (list (let* ((word (thing-at-point 'word))
		(input (read-string 
			(format "pydoc entry%s: " 
				(if (not word) "" (format " (default %s)" word))))))
	   (if (string= input "") 
	       (if (not word) (error "No pydoc args given")
		 word) ;sinon word
	     input)))) ;sinon input
  (shell-command (concat py-python-command " -c \"from pydoc import help;help(\'" w "\')\"") "*PYDOCS*")
  (view-buffer-other-window "*PYDOCS*" t 'kill-buffer-and-window))

(when (load "flymake" t)
  (defun flymake-pylint-init ()
    (let* ((temp-file (flymake-init-create-temp-buffer-copy
		       'flymake-create-temp-inplace))
           (local-file (file-relative-name
                        temp-file
                        (file-name-directory buffer-file-name))))
      (list "epylint" (list local-file))))
  
  (add-to-list 'flymake-allowed-file-name-masks
               '("\\.py\\'" flymake-pylint-init)))

(define-auto-insert "\.py" "my-python-template.py")

(provide 'python-rc)
