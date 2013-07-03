(setq py-install-directory "~/.emacs.d/HualetEmacs/Site-Lisp/Packages/python-mode.el-6.1.1/")

(require 'python-mode)
(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
;; FIXME this can solve the problem that emacs will take over 99% cpu while opening big python file.
(add-hook 'python-mode-hook 
          (lambda ()
            (setq which-function-mode nil)))

;; this will show method signatures while typing
(setq py-set-complete-keymap-p t)
;; activate the virtualenv where Pymacs is located
(virtualenv-workon "emacs/")

(defun load-pycomplete ()
  "Load and initialize pycomplete."
  (interactive)
  (let* ((pyshell (py-choose-shell))
         (path (getenv "PYTHONPATH")))
    (setenv "PYTHONPATH" (concat
                          (expand-file-name py-install-directory) "completion"
                          (if path (concat path-separator path))))
    (if (py-install-directory-check)
        (progn
          (setenv "PYMACS_PYTHON" (if (string-match "IP" pyshell)
                                      "python"
                                    pyshell))
          (autoload 'pymacs-apply "pymacs")
          (autoload 'pymacs-call "pymacs")
          (autoload 'pymacs-eval "pymacs")
          (autoload 'pymacs-exec "pymacs")
          (autoload 'pymacs-load "pymacs")
          (load (concat py-install-directory "completion/pycomplete.el") nil t)
          (add-hook 'python-mode-hook 'py-complete-initialize))
      (error "`py-install-directory' not set, see INSTALL"))))
(eval-after-load 'pymacs '(load-pycomplete))

;; auto restart pymacs everytime pymacs helper died
(setq pymacs-auto-restart t)


(provide 'init-python-mode)
