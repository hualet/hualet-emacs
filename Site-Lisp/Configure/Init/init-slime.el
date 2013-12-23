(setq inferior-lisp-program "/usr/bin/sbcl")
(require 'slime)
(slime-setup '(slime-repl))

;; 设置离线HyperSpec文档地址
(custom-set-variables '(common-lisp-hyperspec-root "~/Backup/HyperSpec"))

(provide 'init-slime)