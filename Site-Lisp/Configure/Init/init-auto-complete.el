(add-to-list 'ac-dictionary-directories "~/.emacs.d/HualetEmacs/Site-Lisp/Packages/auto-complete/ac-dict")
(require 'auto-complete-config)
(setq ac-dwim t)
(ac-config-default)

;; integration with rope
(ac-ropemacs-initialize)
(add-hook 'python-mode-hook
          (lambda ()
            (add-to-list 'ac-sources 'ac-source-ropemacs)))

(provide 'init-auto-complete)
