(custom-set-faces
 ;; Flymake.
 '(flymake-errline                      ;错误行
   ((t (:background "black" :underline "red"))))
 '(flymake-infoline                     ;信息行
   ((t (:background "black" :underline "yellow" :slant italic))))
 '(flymake-warnline                     ;警告行
   ((((class color)) (:background "Gold3" :foreground "Black"))))
 ;; Dired
 '(dired-directory                      ;目录
   ((t (:inherit font-lock-function-name-face
                 :foreground "DodgerBlue"))))
 '(dired-ignored                        ;忽略文件
   ((t (:inherit shadow
                 :foreground "grey50"))))
 '(dired-header                         ;当前路径
   ((t (:inherit font-lock-type-face
                 :foreground "gold"))))
 '(dired-symlink                        ;软链接
   ((t (:inherit font-lock-keyword-face
                 :foreground "OrangeRed3"))))
 '(diredp-date-time                     ;修改时间
   ((t (:foreground "Grey60"))))
 '(diredp-deletion                      ;删除标记
   ((t (:background "Black" :foreground "red"))))
 '(diredp-deletion-file-name            ;删除文件
   ((t (:foreground "red"))))
 '(diredp-dir-heading                   ;目录
   ((t (:background "Black" :foreground "Gold"))))
 '(diredp-dir-priv                      ;目录掩码
   ((t (:background "Black" :foreground "DodgerBlue"))))
 '(diredp-display-msg                   ;路径
   ((t (:foreground "Gold"))))
 '(diredp-exec-priv                     ;可执行掩码
   ((t (:background "Black" :foreground "DeepSkyBlue3"))))
 '(diredp-file-name                     ;文件
   ((t (:foreground "Green3"))))
 '(diredp-file-suffix                   ;文件扩展名
   ((t (:foreground "Green4"))))
 '(diredp-flag-mark                     ;选中标记
   ((t (:background "Black" :foreground "Cyan"))))
 '(diredp-flag-mark-line                ;选中文件
   ((t (:background "Black" :foreground "Cyan"))))
 '(diredp-ignored-file-name             ;忽略的文件
   ((t (:foreground "grey40"))))
 '(diredp-no-priv                       ;无掩码
   ((t (:background "Black" :foreground "Green"))))
 '(diredp-other-priv                    ;其他掩码
   ((t (:background "Black" :foreground "khaki"))))
 '(diredp-rare-priv                     ;稀有的掩码
   ((t (:background "Black" :foreground "Red"))))
 '(diredp-read-priv                     ;读取掩码
   ((t (:background "Black" :foreground "IndianRed"))))
 '(diredp-write-priv                    ;写入掩码
   ((t (:background "Black" :foreground "Gold3"))))
 
 ;; Tabbar标签颜色
 '(tabbar-default                       ;默认
   ((((class color grayscale)
      (background dark))
     (
      :inherit variable-pitch
               :height 1.1
               :family "DejaVu Sans Mono"
               ))))
 '(tabbar-separator                     ;分隔线
   ((t (
        :inherit tabbar-default
                 :background "black"
                 :foreground "brown" :height 0.1
                 ))))
 '(tabbar-button-highlight              ;按钮
   ((t (
        :inherit tabbar-default
                 :background "black"
                 :foreground "green"
                 :box (:color "red")
                 ))))
 '(tabbar-button
   ((t (
        :inherit tabbar-default
                 :background "black"
                 :foreground "red"
                 :box (
                       :line-width 1
                                   :color "black"
                                   :style released-button)))))
 '(tabbar-selected                      ;当前正在使用的标签
   ((t (
        :inherit tabbar-default
                 :background "black"
                 :foreground "LawnGreen"
                 :box (
                       :line-width 1
                                   :color "#014500"
                                   :style released-button)))))
 '(tabbar-selected-face
   ((t (
        :inherit tabbar-default-face
                 :background "black"
                 :foreground "grey"
                 :box (
                       :line-width -1
                                   :color "grey"
                                   :style released-button)))))
 '(tabbar-unselected                    ;未使用的标签
   ((t (
        :inherit tabbar-default
                 :background "black"
                 :foreground "#10650F"
                 :box (
                       :line-width 1
                                   :color "Grey10"
                                   :style pressed-button)))))
 '(tabbar-unselected-face
   ((t (
        :inherit tabbar-default-face
                 :background "black"
                 :foreground "white"
                 :box (
                       :line-width -1
                                   :color "black"
                                   :style pressed-button)))))


 )

(provide 'HualetTheme)
