(setq inferior-lisp-program "/usr/bin/sbcl")
(require 'slime)
(slime-setup '(slime-repl))

(provide 'init-slime)