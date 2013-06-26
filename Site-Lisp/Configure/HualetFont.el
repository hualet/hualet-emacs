;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 字体设置 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defvar emacs-font-name "文泉驿等宽微米黑"
	"The default font name")
(defvar emacs-font-size 12
  "The default font size.")
(if (display-grayscale-p)
    (progn
      (set-frame-font (format "%s-%s" (eval emacs-font-name) (eval emacs-font-size)))))

(provide 'HualetFont)
