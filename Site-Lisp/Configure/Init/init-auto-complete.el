(require 'auto-complete-config)
(require 'auto-complete-yasnippet)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/HualetEmacs/Site-Lisp/Packages/auto-complete/ac-dict")

(ac-config-default)
(global-auto-complete-mode t)


(provide 'init-auto-complete)
