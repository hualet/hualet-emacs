(add-to-list 'load-path "/path/to/helm/directory")
(require 'helm-config)
(helm-mode 1)

(setq recentf-max-menu-items 100)      ;Recenf 最大数量
(setq recentf-max-saved-items 100)

(provide 'init-helm)
