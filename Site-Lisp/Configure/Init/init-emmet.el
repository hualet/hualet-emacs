(require 'emmet-mode)

(add-hook 'html-helper-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
;; (add-hook 'css-mode-hook  'emmet-mode) ;; enable Emmet's css abbreviation.

;;You can set default indent depth of HTML abbreviation:
(add-hook 'emmet-mode-hook (lambda () (setq emmet-indentation 4))) ;; indent 4 spaces.
;;If you want the cursor to be positioned between first empty quotes after expanding:
(setq emmet-move-cursor-between-quotes t) 
;;Or if you don't want to move cursor after expandin:
;;(setq emmet-move-cursor-after-expanding nil)

(provide 'init-emmet)
