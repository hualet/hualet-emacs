(setq org-hide-leading-stars 1)

;; 为了使引用的代码块可以被执行并显示结果
(org-babel-do-load-languages
 'org-babel-load-languages
 '((python . t)))

(provide 'init-org)
