(require 'org)

(setq org-hide-leading-stars 1)
(setq org-log-done t)                   ;日志记录
(setq org-log-done '(done))             ;日志记录类型

(setq org-src-fontify-natively t)       ;使代码段自动高亮

;; 为了使引用的代码块可以被执行并显示结果
(org-babel-do-load-languages
 'org-babel-load-languages
 '((python . t)))

(custom-set-variables 
 '(org-tags-column 80)                 ;设置tag的对齐位置
 '(org-todo-keywords '((sequence "TODO" "DOING" "HANGUP" "|" "DONE" "CANCEL"))) ;设置TODO的详细完成阶段
 '(org-default-notes-file (concat my-notes-directory "hualet.org"))
 )

;; Setting Colours (faces) for todo states to give clearer view of work 
(setq org-todo-keyword-faces
      '(("TODO" . org-warning)
        ("DOING" . "pink")
        ("HANGUP" . "blue")
        ("DONE" . "green")
        ("CANCEL" . "black")))

(provide 'init-org)
