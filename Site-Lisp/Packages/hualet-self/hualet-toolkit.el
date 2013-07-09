;; #####Variables#####
(defconst frame-default-font-size
  (face-attribute 'default :height)
  "Frame default font size.")

(defvar frame-current-font-size
  (face-attribute 'default :height)
  "Frame current font size.")

(defvar find-file-root-prefix
  "/sudo:root@localhost:"
  "The prefix that root user uses in Emacs."
  )

;; #####Font#####
(defun text-scale-increase-global()
  "Descrease the font size of the frame"
  (interactive)
  (setq frame-current-font-size (truncate (* 0.8 frame-current-font-size)))
  (set-face-attribute 'default nil :height frame-current-font-size)
  )

(defun text-scale-decrease-global()
  "Descrease the font size of the frame"
  (interactive)
  (setq frame-current-font-size (truncate (* 1.2 frame-current-font-size)))
  (set-face-attribute 'default nil :height frame-current-font-size)
  )

(defun text-scale-default-global()
  (interactive)
  (setq frame-current-font-size frame-default-font-size)
  (set-face-attribute 'default nil :height frame-current-font-size)
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Find file ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun find-file-root (file)
  "Open file as root."
  (interactive "fOpen file as root: ")
  (tramp-cleanup-all-connections)
  (find-file (concat find-file-root-prefix file))
  )

(defun find-file-smb (file)
  "Access file through samba protocol."
  (interactive "fFind file as samba: ")
  (find-file (concat "smb:" file))
  )


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Cycle buffer ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun cycle-buffer-in-special-mode (special-mode)
  "Cycle in special mode."
  (setq cycle-buffer-filter nil)
  (setq cycle-buffer-filter (cons '(eq major-mode special-mode) cycle-buffer-filter))
  (cycle-buffer-backward-permissive 1))



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;Insert Banner ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun insert-banner (banner-name)
  "Util function for insert delimiters."
  (interactive "sBanner name: ")
  (beginning-of-line)
  (insert (concat (concat ";;;;;;;;;;;;;;;;;;;;;;;;;;;;;; " banner-name) " ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;"))
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Insert Date and Time ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun insert-date (prefix)
  "Insert the current date. With prefix-argument, use ISO format. With
   two prefix arguments, write out the day and month name."
  (interactive "P")
  (let ((date-format (cond 
                      ((not prefix) "%Y-%m-%d")
                      ((equal prefix '(4)) "%d.%m.%Y")
                      ((equal prefix '(16)) "%A, %d. %B %Y")))
        (system-time-locate "zh_CN"))
  (insert (format-time-string date-format))))

(defun insert-time ()
  "Insert current time like 23:02:58."
  (interactive)
  (let ((time-format "%H:%M:%S"))
    (insert (format-time-string time-format))))

(defun insert-date-time (prefix)
  (interactive "P")
  (insert-date prefix)
  (insert " ")
  (insert-time))


(provide 'hualet-toolkit)
