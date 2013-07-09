(require 'recentf)

(recentf-mode 1)
(setq recentf-max-menu-items 25)
(setq recentf-next-recent-file-id 1)

(defun recentf-open-most-recent-file-cycle ()
  "Open most recent file."
  (interactive)
  (if (< recentf-next-recent-file-id 10)
      (setq recentf-next-recent-file-id (1+ recentf-next-recent-file-id))
    (setq recentf-next-recent-file-id 0))
  (recentf-open-most-recent-file recentf-next-recent-file-id))


(provide 'init-recentf)





