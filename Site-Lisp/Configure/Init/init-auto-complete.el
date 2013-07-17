;; autocomplete
(require 'auto-complete-config)

(add-to-list 'ac-dictionary-directories "~/.emacs.d/HualetEmacs/Site-Lisp/Packages/auto-complete/ac-dict")
(ac-config-default)

;; (add-hook 'python-mode-hook
;;           '(lambda ()
;;              (setq ac-sources '(
;;                                 ac-source-words-in-buffer
;;                                 ac-source-filename
;;                                 ac-source-dictionary
;;                                 ac-source-words-in-same-mode-buffers
;;                                 ;; ac-source-yasnippet
;;                                 ))))
(setq ac-sources '(
                   ac-source-words-in-buffer
                   ac-source-filename
                   ac-source-dictionary
                   ac-source-words-in-same-mode-buffers
                   ac-source-yasnippet
                   ))


(provide 'init-auto-complete)



