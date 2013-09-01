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
  "Decrease the font size of the frame"
  (interactive)
  (setq frame-current-font-size (truncate (* 1.2 frame-current-font-size)))
  (set-face-attribute 'default nil :height frame-current-font-size)
  )

(defun text-scale-decrease-global()
  "Increase the font size of the frame"
  (interactive)
  (setq frame-current-font-size (truncate (* 0.8 frame-current-font-size)))
  (set-face-attribute 'default nil :height frame-current-font-size)
  )

(defun text-scale-default-global()
  (interactive)
  (setq frame-current-font-size frame-default-font-size)
  (set-face-attribute 'default nil :height frame-current-font-size)
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Find file ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (defun find-file-root (file)
;;   "Open file as root."
;;   (interactive "fOpen file as root: ")
;;   (tramp-cleanup-all-connections)
;;   (find-file (concat find-file-root-prefix file))
;;   )
(defun find-file-root (&optional arg)
  "Edit currently visited file as root.

With a prefix ARG prompt for a file to visit.
Will also prompt for a file to visit if current
buffer is not visiting a file."
  (interactive "P")
  (if (or arg (not buffer-file-name))
      (find-file (concat "/sudo:root@localhost:"
                         (ido-read-file-name "Find file(as root): ")))
    (find-alternate-file (concat "/sudo:root@localhost:" buffer-file-name))))

(defun find-file-smb (file)
  "Access file through samba protocol."
  (interactive "fFind file as samba: ")
  (find-file (concat "/smb:" file)))

(defun dot-emacs ()
  "Open my .emacs."
  (interactive)
  (find-file (expand-file-name "~/.emacs")))


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

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Startup ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun startup-open ()
  "The files that need open when emacs startup."
  (interactive)
  (let* ((file-list startup-open-file-list)
         file-name)
    (dolist (file-name file-list)
      (find-file file-name))))

(defun startup-close ()
  "Close when emacs startup."
  (interactive)
  (dolist (file-name startup-close-file-list)
    (if (get-buffer file-name)
        (kill-buffer file-name))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Screensaver & Lock ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun lock-screen ()
  "Lock screen using (zone) and xtrlock
calls M-x zone on all frames and runs xtrlock.
To use this extension, you need install xtrlock in your system."
  (interactive)
  (save-excursion
    ;; Don't burn LCD power.
    (shell-command "xset dpms force off && sleep 1")
    ;; Lock screen.
    (set-process-sentinel
     (start-process "xtrlock" nil "xtrlock")
     '(lambda (process event)
        (zone-leave-me-alone)))
    (zone)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; URL ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun open-url-under-cursor ()
  "Open thr url under cursor either using w3m or unix command \"xdg-open\""
  (interactive)
  (let ((url (thing-at-point 'url)))
    (if (featurep 'w3m)
        (w3m-view-this-url-1 url nil t)
      (shell-command (format "xdg-open %s" url)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Edit ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun hualet-insert-filename (filename)
  "Insert filename using the completion ability of minibuffer."
  (interactive "FFilename: ")
  (insert filename))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Window ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; this function is from emacswiki[http://www.emacswiki.org/emacs/ToggleWindowSplit]
(defun rotate-windows ()
  "If the frame is split vertically, split it horizontally or vice versa.
Assumes that the frame is only split into two."
  (interactive)
  (unless (= (length (window-list)) 2) (error "Can only toggle a frame split in two"))
  (let ((split-vertically-p (window-combined-p)))
    (delete-window) ; closes current window
    (if split-vertically-p
        (split-window-horizontally)
      (split-window-vertically)) ; gives us a split with the other window twice
    (switch-to-buffer nil))) ; restore the original window in this part of the frame

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Dired ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun dired-do-tarball (tarball-name &optional use-bzip2)
  "Compress marked file or current file using tar and gzip(or bzip2 if use-bzip2 is set non nil)."
  (interactive "sTarbal name(no suffix):")
  (let ((file-list (dired-get-marked-files)))
    (if use-bzip2
        (shell-command-to-string (format "tar -cvj -f %s %s" (concat tarball-name ".tar.bz2")
                                         (mapconcat 'identity file-list "")))
      (shell-command-to-string (format "tar -cvz -f %s %s" (concat tarball-name ".tar.gz")
                                       (mapconcat 'identity file-list ""))))))


(provide 'hualet-toolkit)
