(require 'w3m)

(defun toggle-w3m-with-other-buffer ()
  "Switch to a w3m buffer or reture to the previous one."
  (interactive)
  (if (derived-mode-p 'w3m-mode)
      ;;Currently in a w3m buffer
      ;;then bury buffers until you reach a non-w3m one
      (while (derived-mode-p 'w3m-mode)
        (bury-buffer))
    ;; Not in w3m
    ;; then find the first w3m buffer
    (let ((list (buffer-list)))
      (while list
        (if (with-current-buffer (car list)
              (derived-mode-p 'w3m-mode))
            (progn
              (switch-to-buffer (car list))
              (setq list nil))
          (setq list (cdr list))))
      (unless (derived-mode-p 'w3m-mode)
        (call-interactively 'w3m)))))

(defun w3m-search-emacswiki-random ()
  "Get the random pages from emacswiki."
  (interactive)
  (w3m-view-this-url-1 "http://www.emacswiki.org/cgi-bin/wiki?action=random" nil t))

(defun w3m-open-url-in-chrome ()
  "Open the anchor under cursor in a modern browser if it is a url, otherwise the current url."
  (interactive)
  (if (w3m-anchor) 
      (start-process "w3m-to-chrome" "*w3m-to-chrome*" "google-chrome" (w3m-anchor))
    (start-process "w3m-to-chrome" "*w3m-to-chrome*" "google-chrome" w3m-current-url)))

(provide 'w3m-extension)
