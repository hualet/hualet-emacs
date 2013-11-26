(require 'init-auto-complete)
(require 'go-mode-load)                 ;Go language
(require 'go-eldoc)
(add-hook 'go-mode-hook 'go-eldoc-setup)
(require 'flymake)
(require 'go-flymake)
(require 'go-errcheck)


(add-hook 'go-mode-hook (lambda ()
                          (local-set-key (kbd "C-c C-r") 'go-remove-unused-imports)))
(add-hook 'go-mode-hook (lambda ()
                          (local-set-key (kbd "C-S-j") (lambda ()
                                                         (interactive)
                                                         (remember-init)
                                                         (go-goto-imports)))))
(add-hook 'go-mode-hook (lambda ()
                          (local-set-key (kbd "C-c C-f") 'gofmt)))

(provide 'init-go-mode)
