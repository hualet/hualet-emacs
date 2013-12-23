;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 字体设置 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Setting English font
(set-face-attribute
 'default nil :font "MONACO 13")

;;; Chinese Font
(dolist (charset '(kana han symbol cjk-misc bopomofo))
  (set-fontset-font (frame-parameter nil 'font)
                    charset
                    (font-spec :family "文泉驿等宽微米黑" :size 16)))

(provide 'HualetFont)
