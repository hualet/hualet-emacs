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

(provide 'w3m-extension)