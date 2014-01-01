(setq inferior-lisp-program "/usr/bin/sbcl")
(require 'slime)
(slime-setup '(slime-repl))
(require 'hyperspec)

;; 设置离线HyperSpec文档地址
(setq common-lisp-hyperspec-root (concat (expand-file-name "~") "/Backup/HyperSpec/"))

(provide 'init-slime)