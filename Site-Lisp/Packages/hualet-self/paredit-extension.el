(require 'paredit)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Like vim ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun yank-inner-text (delimeter)
  "Yank string in specified delimeter like what keystroke yi\{delimeter\} in vim does."
  (interactive "sYank inner(such as \", [ and { .etc): ")
  (cond
   ((search-backward delimeter nil nil) (progn
                                          (forward-char)
                                          (paredit-kill)
                                          (yank)
                                          (message "Already yanked. :-)")))
   (t (message "Yank failed..."))))

(provide 'paredit-extension)
