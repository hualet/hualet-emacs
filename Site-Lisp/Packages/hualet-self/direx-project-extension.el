(require 'direx-project)

(defconst direx-project-dedicated-window-width 30)
(defvar direx-project-dedicated-window nil
  "The dedicated direx-project window.")

(defun direx-project-toggle-direx-project-window (&optional arg)
  "Toggle the direx window"
  (interactive)
  (if (and direx-project-dedicated-window (window-live-p direx-project-dedicated-window))
      (progn
        (message "toggle down")
        (select-window direx-project-dedicated-window)
        (kill-buffer-and-window))
    (progn
      (message "toggle up")
      (split-window (selected-window) direx-project-dedicated-window-width t)
      (setq direx-project-dedicated-window (selected-window))
      (switch-to-buffer (direx-project:jump-to-project-root-noselect)))))

(provide 'direx-project-extension)
