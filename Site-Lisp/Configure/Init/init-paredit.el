(require 'paredit)
(add-hook 'prog-mode-hook 'paredit-mode)
(add-hook 'qml-mode-hook 'paredit-mode)
(provide 'init-paredit)