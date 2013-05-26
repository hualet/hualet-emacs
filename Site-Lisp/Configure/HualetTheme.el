(custom-set-faces
 ;; highlight parenthese
 '(hl-paren-colors (quote ("Cyan" "Gold" "Red")))
 
 ;; Flymake.
 '(flymake-errline                      ;错误行
   ((t (:background "white" :underline "red"))))
 '(flymake-infoline                     ;信息行
   ((t (:background "white" :underline "yellow" :slant italic))))
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
 )



;;;; 设置tabbar外观
;; 设置默认主题: 字体, 背景和前景颜色，大小
(set-face-attribute 'tabbar-default nil
                    :family "Vera Sans YuanTi Mono"
                    :background "gray80"
                    :foreground "gray30"
                    :height 1.0
                    )
;; 设置左边按钮外观：外框框边大小和颜色
(set-face-attribute 'tabbar-button nil
                    :inherit 'tabbar-default
                    :box '(:line-width 1 :color "gray30")
                    )
;; 设置当前tab外观：颜色，字体，外框大小和颜色
(set-face-attribute 'tabbar-selected nil
                    :inherit 'tabbar-default
                    :foreground "DarkGreen"
                    :background "LightGoldenrod"
                    :box '(:line-width 2 :color "DarkGoldenrod")
                    ;; :overline "black"
                    ;; :underline "black"
                    :weight 'bold
                    )
;; 设置非当前tab外观：外框大小和颜色
(set-face-attribute 'tabbar-unselected nil
                    :inherit 'tabbar-default
                    :box '(:line-width 2 :color "gray70")
                    )


(provide 'HualetTheme)
