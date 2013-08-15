;;; ### Predictive ###
;;; --- 英语助手
(add-to-list 'load-path "~/.emacs.d/HualetEmacs/Site-Lisp/Packages/predictive")
(add-to-list 'load-path "~/.emacs.d/predictive")
(add-to-list 'load-path "~/.emacs.d/predictive/texinfo")
(add-to-list 'load-path "~/.emacs.d/predictive/misc")
(add-to-list 'load-path "~/.emacs.d/predictive/html")
(add-to-list 'load-path "~/.emacs.d/predictive/latex")
(require 'predictive)

(custom-set-variables 
 '(completion-auto-show (quote (global . completion-show-tooltip)))
 '(completion-auto-show-delay (quote (global . 1)))
 )

(dolist (hook (list
               'erc-mode-hook
               ;; 'rcirc-mode-hook
               ;; 'message-mode-hook
               ;; 'yaoddmuse-mode-hook
               ))
  (add-hook hook '(lambda () (predictive-mode 1))))               

(provide 'init-predictive)
