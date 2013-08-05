(require 'highlight-indentation)

(setq highlight-indentation-mode-hooks 
      '(
        python-mode-hook
        ))
(dolist (hook highlight-indentation-mode-hooks)
        (add-hook hook '(lambda () (highlight-indentation-mode t))))

(provide 'init-highlight-indentation)
