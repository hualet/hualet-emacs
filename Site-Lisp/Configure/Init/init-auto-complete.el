(add-to-list 'ac-dictionary-directories "~/.emacs.d/HualetEmacs/Site-Lisp/Packages/auto-complete/ac-dict")

(require 'yasnippet)
(require 'auto-complete-config)
(setq ac-dwim t)
(ac-config-default)
(add-hook 'python-mode-hook
          (lambda ()
            (setq ac-sources '(
                               ac-source-pycomplete
                               ac-source-dictionary
                               ac-source-words-in-buffer
                               ac-source-words-in-same-mode-buffers
                               ac-source-yasnippet
                               ac-source-filename ))
            ))


(provide 'init-auto-complete)
