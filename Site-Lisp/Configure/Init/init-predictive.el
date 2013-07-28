;;; ### Predictive ###
;;; --- 英语助手
(set-default 'predictive-auto-add-to-dict t) ;自动加入词典
(setq predictive-add-to-dict-ask nil)        ;加入词典不询问
(setq predictive-auto-learn t)               ;自动学习
(setq predictive-completion-speed 0.1)       ;查找补全的速度(秒)
(setq completion-auto-show-delay 1)   ;弹出补全tooltip的延迟(秒)
(dolist (hook (list
               'erc-mode-hook
               ;; 'rcirc-mode-hook
               ;; 'message-mode-hook
               ;; 'yaoddmuse-mode-hook
               ))
  (add-hook hook '(lambda () (predictive-mode 1))))

(provide 'init-predictive)
