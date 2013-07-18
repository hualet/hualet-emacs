(add-to-list 'load-path "/path/to/helm/directory")
(require 'helm-config)
(helm-mode 1)

(setq recentf-max-saved-items 500)      ;Recenf 最大数量

(provide 'init-helm)
