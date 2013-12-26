(dolist (hook (list
               'python-mode-hook
               'c-mode-hook
               'c++-mode-hook
               'java-mode-hook
               'haskell-mode-hook
               'emacs-lisp-mode-hook
               'lisp-interaction-mode-hook
               'lisp-mode-hook
               'maxima-mode-hook
               'ielm-mode-hook
               'slime-repl-mode-hook
               'sh-mode-hook
               'makefile-gmake-mode-hook
               'js2-mode-hook
               'go-mode-hook
               'qml-mode-hook
               'xml-mode-hook
               'html-helper-mode-hook
               ))
  (add-hook hook '(lambda () (paredit-mode 1))))

(provide 'init-paredit)

;;; init-paredit.el ends here
