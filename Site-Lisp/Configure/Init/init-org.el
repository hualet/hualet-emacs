(require 'org)

(setq org-hide-leading-stars 1)
(setq org-log-done t)                   ;日志记录
(setq org-log-done '(done))             ;日志记录类型

;; 为了使引用的代码块可以被执行并显示结果
(org-babel-do-load-languages
 'org-babel-load-languages
 '((python . t)))

(setq org-todo-keywords
      '((sequence "TODO" "DOING" "HANGUP" "|" "DONE" "CANCEL")))

(provide 'init-org)
