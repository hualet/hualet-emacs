(autoload 'flymake-find-file-hook "flymake" "" t)
(dolist (hook (list
               ;; 'c-mode-hook
               'c++-mode-hook
               'java-mode-hook
               'python-mode-hook
               ))
  (add-hook hook 'flymake-find-file-hook))

(setq flymake-gui-warnings-enabled nil)
(setq flymake-log-level 0)
(when (load "flymake" t)
  (defun flymake-pyflakes-init ()
    (let* ((temp-file (flymake-init-create-temp-buffer-copy
                       'flymake-create-temp-inplace))
           (local-file (file-relative-name
                        temp-file
                        (file-name-directory buffer-file-name))))
      (list "pyflakes" (list local-file))))
  (add-to-list 'flymake-allowed-file-name-masks
               '("\\.py\\'" flymake-pyflakes-init))
  )
(setq flymake-extension-use-showtip t)  ;use `shotip' display error or warning.

(provide 'init-flymake)
