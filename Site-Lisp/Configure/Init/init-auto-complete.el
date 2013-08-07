;; autocomplete
(require 'auto-complete-config)

(add-to-list 'ac-dictionary-directories "~/.emacs.d/HualetEmacs/Site-Lisp/Packages/auto-complete/ac-dict")
(ac-config-default)

(custom-set-variables '(ac-sources '(
                                     ac-source-words-in-buffer
                                     ac-source-filename
                                     ac-source-files-in-current-dir
                                     ac-source-dictionary
                                     ac-source-words-in-same-mode-buffers
                                     )))

(provide 'init-auto-complete)
