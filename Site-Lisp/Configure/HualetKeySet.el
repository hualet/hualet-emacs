;;; ### Functin key ###
;;; --- 功能函数
(lazy-set-key
 '(
   ("<f6>" . lock-screen)                        ;锁屏
   ("<f8>" . dired-jump)                         ;文件管理起
   ("<f11>" . fullscreen-toggle)                 ;全屏切换
   ;; ("M-1" . strip-blank-lines)                   ;删除选中区域的所有空行
   ("M-2" . indent-buffer)                       ;自动格式化当前Buffer
   ("M-3" . flymake-goto-prev-error)    ;上一个错误
   ("M-4" . flymake-goto-next-error)    ;下一个错误
   ))

;;; ### Unset key ###
;;; --- 卸载按键
(lazy-unset-key                         ;全局按键的卸载
 '("C-z" "C-q" "s-W" "s-z" "M-h" "C-\\"))


;;; ### Sdcv ###
;;; --- 星际译王命令行
(defvar sdcv-key-alist nil
  "The key alist that sdcv.")
(setq sdcv-key-alist
      '(("p" . sdcv-search-pointer)     ;光标处的单词, buffer显示
        ("y" . sdcv-search-pointer+)    ;光标处的单词, tooltip显示
        ("i" . sdcv-search-input)       ;输入的单词, buffer显示
        (";" . sdcv-search-input+)))    ;输入的单词, tooltip显示
(lazy-set-key sdcv-key-alist nil "C-z") ;sdcv的全局按键绑定

;;; ### W3m ###
;;; --- 网页浏览器
(lazy-set-key
 '(
   ("C-z C-z" . w3m)                          ;启动W3M
   ("C-z z" . w3m-startup-background)         ;启动W3M, 后台
   ("C-x C-z" . toggle-w3m-with-other-buffer) ;在W3M和buffer间切换
   ("s-W" . one-key-menu-w3m-search)          ;w3m 搜索菜单
   ))
(lazy-set-key
 '(("1" . emms-play-online)                             ;在线听音乐
   ("2" . kill-google-define-windows)                   ;关闭Google定义窗口
   ("3" . google-define)                                ;查找输入单词的Google定义
   ("4" . google-define-pointer)                        ;查找当前光标处的Google定义
   ("5" . w3m-open-rcirc-window)                        ;打开RCIRC窗口
   ("6" . w3m-session-save)                             ;保存浏览纪录
   ("7" . w3m-session-select)                           ;加载退出前的浏览器纪录
   ("8" . w3m-emacswiki-view-other-version)             ;查看当前wiki页面的其他版本
   ("9" . w3m-auto-install-elisp)                       ;自动安装elisp文件
   ("0" . w3m-gmail-toggle-mark)                        ;切换标记选项框
   ("(" . w3m-gmail-mark-all)                           ;标记选项框
   (")" . w3m-gmail-unmark-all)                         ;取消标记选项框
   ("c" . w3m-delete-buffer-and-select-right)           ;关闭当前标签并选择右边的标签
   ("/" . w3m-next-form)                                ;下一个表格处
   ("e" . w3m-scroll-down-or-previous-url)              ;向上翻页
   ("b" . w3m-edit-current-url)                         ;编辑当前页面
   ("z" . w3m-zoom-in-image)                            ;放大图片
   ("x" . w3m-zoom-out-image)                           ;缩小图片
   ("O" . w3m-goto-linknum)                             ;数字连接快速跳转
   ("f" . w3m-view-this-url)                            ;在当前标签打开
   ("o" . w3m-view-this-url-new-session)                ;在后台标签打开
   ("M" . w3m-open-url-in-chrome)       ;Open link in chrome browser
   ("M-o" . w3m-open-link-file-under-current-directory) ;open link file under current directory
   ("m" . tabbar-forward-tab)                           ;切换到右边的标签
   ("n" . tabbar-backward-tab)                          ;切换到左边的标签
   ("'" . w3m-open-dead-link-with-external-browser)     ;打开死的连接
   ("s-j" . w3m-visual-scroll-up)                       ;可视化向上滚动
   ("s-k" . w3m-visual-scroll-down)                     ;可视化向下滚动
   ("b" . w3m-history)                                  ;历史
   ("D" . w3m-dtree)                                    ;显示本地目录树
   ("B" . w3m-view-previous-page)                       ;后退
   ("F" . w3m-view-next-page)                           ;前进
   ("S" . w3m-google-desktop-url-open)                  ;Google桌面打开连接
   ("L" . w3m-submit-form)                              ;提交form中的内容
   ("C" . w3m-delete-other-buffers)                     ;关闭后台标签
   ("d" . w3m-download-with-wget-current-position)      ;用Wget异步下载当前地连接
   ("Y" . wget-web-page)                                ;网页下载
   ("-" . org-w3m-copy-for-org-mode)                    ;转换网页成 `org-mode' 的链接格式
   ("_" . w3m-copy-link-in-region)                      ;拷贝w3m buffer 的所有链接
   ("&" . yaoddmuse-w3m-edit-emacswiki-page)            ;编辑 emacswiki 页面
   ("*" . w3m-emacswiki-view-diff)                      ;查看当前wiki页面的不同
   ("\"" . w3m-emacswiki-recent-changes)                ;最近的修改
   ("C-u s" . w3m-db-history)                           ;历史数据库
   ("<up>" . emms-volume-mode-plus)                     ;增加音量
   ("<down>" . emms-volume-mode-minus)                  ;减少音量
   ("<left>" . emms-seek-backward)                      ;后退
   ("<right>" . emms-seek-forward)                      ;前进
   ("<" . w3m-shift-left)                               ;向左滚动屏幕一像素
   (">" . w3m-shift-right)                              ;向右滚动屏幕一像素
   ("." . go-to-char-forward-word)                      ;向后查找某一个字符, 以单词为单位前进
   ("," . go-to-char-backward-word)                     ;向前查找某一个字符, 以单词为单位后退
   ("M-s" . lazy-search-menu)                           ;懒惰搜索
   ("M-A" . emms-pause)                                 ;暂停
   ("M-j" . scim-handle-event)                          ;设置为输入法切换键
   ("C-M-7" . w3m-tab-move-left)                        ;移动当前标签到左边
   ("C-M-8" . w3m-tab-move-right)                       ;移动当前标签到右边
   ("C-S-7" . w3m-delete-left-tabs)                     ;删除左边的标签
   ("C-S-8" . w3m-delete-right-tabs)                    ;删除右边的标签
   )
 w3m-mode-map
 )
(lazy-set-key sdcv-key-alist w3m-mode-map) ;sdcv的局部按键绑定
(lazy-unset-key
 '("s")
 w3m-mode-map)                          ;卸载按键
(lazy-set-key
 '(
   ("s" . one-key-menu-w3m-search)      ;w3m 搜索菜单
   )
 w3m-mode-map)

;;; ### Auto-complete ###
;;; --- 自动补全
(lazy-unset-key
'("RET" "TAB")
ac-complete-mode-map)
(lazy-set-key
'(
  ("M-h" . ac-complete)                ;补全当前选中的
  ("M-H" . ac-expand-common)           ;补全公共部分
  ("M-U" . ac-stop)                    ;停止
  ("M-," . ac-next)                    ;下一个
  ("M-." . ac-previous)                ;上一个
  )
ac-complete-mode-map
)

;;; ### Tabbar ###
;;; --- 多标签浏览
(lazy-set-key
 '(
   ("M-7" . tabbar-backward-tab)              ;移动到后一个标签
   ("M-8" . tabbar-forward-tab)               ;移动到前一个标签
   ("M-9" . tabbar-backward-group)            ;移动到后一个标签组
   ("M-0" . tabbar-forward-group)             ;移动到前一个标签组
   ("M-&" . tabbar-backward-tab-other-window) ;向前移动其他窗口的标签
   ("M-*" . tabbar-forward-tab-other-window)  ;向后移动其他窗口的标签
   ("M-s-7" . tabbar-select-beg-tab)          ;移动到最左边的标签
   ("M-s-8" . tabbar-select-end-tab)          ;移动到最右边的标签
   ))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Recentf Mode ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (lazy-set-key '(
;;                 ("C-x C-r" . recentf-open-files)
;;                 ("C-S-t" . recentf-open-most-recent-file-cycle)))

;;; ### Window Operation ###
;;; --- 窗口操作
(lazy-set-key
 '(
   ("C-c v" . split-window-vertically)                ;纵向分割窗口
   ("C-c h" . split-window-horizontally)              ;横向分割窗口
   ("C-'" . delete-current-buffer-and-window)         ;关闭当前buffer, 并关闭窗口
   ;; ("C-\"" . delete-current-buffer-window)            ;删除当前buffer的窗口
   ("C-;" . kill-this-buffer)                         ;关闭当前buffer
   ;; ("C-M-;" . kill-other-window-buffer)               ;关闭其他窗口的buffer
   ("C-x ;" . delete-other-windows)                   ;关闭其它窗口
   ;; ("C-c V" . delete-other-windows-vertically+)       ;关闭上下的其他窗口
   ;; ("C-c H" . delete-other-windows-horizontally+)     ;关闭左右的其他窗口
   ;; ("s-Q" . kill-current-mode-buffers)                ;关闭与当前模式相同的所有buffers
   ;; ("s-q" . kill-current-mode-buffers-except-current) ;关闭当前模式所有buffers, 除了当前buffer
   ;; ("s-;" . one-key-menu-window-navigation)           ;快速窗口导航
   ;; ("s-a" . window-number-jump)                       ;窗口快速选择
   ;; ("C-s-7" . select-next-window)                     ;选择下一个窗口
   ;; ("C-s-8" . select-prev-window)                     ;选择上一个窗口
   ("M-s-o" . toggle-one-window)                      ;切换一个窗口
   ))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Multi-Cursor ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(global-set-key (kbd "M-R") 'mc/mark-all-like-this-dwim)

;;; ### Multi-Term ###
;;; --- 多标签式的shell
(lazy-set-key
 '(
   ("s-e" . multi-term-next)                 ;下一个终端
   ("s-w" . multi-term-prev)                 ;上一个终端
   ("s-n" . multi-term)                      ;新建一个终端
   ("s-x s-x" . multi-term-dedicated-toggle) ;切换专注终端
   ("s-x s-z" . multi-term-dedicated-select) ;选择专注终端
   ))

;;; ### Rect ###
;;; --- 矩形操作
(lazy-set-key
 '(
   ("s-M" . rm-set-mark)                         ;矩形标记
   ("s-X" . rm-exchange-point-and-mark)          ;矩形对角交换
   ("s-D" . rm-kill-region)                      ;矩形删除
   ("s-S" . rm-kill-ring-save)                   ;矩形保存
   ("s-Y" . yank-rectangle)                      ;粘帖矩形
   ("s-O" . open-rectangle)                      ;用空白填充矩形, 并向右移动文本
   ("s-C" . clear-rectangle)                     ;清空矩形
   ("s-T" . string-rectangle)                    ;用字符串替代矩形的每一行
   ("s-I" . string-insert-rectangle)             ;插入字符串在矩形的每一行
   ("s-F" . delete-whitespace-rectangle)         ;删除矩形中空格
   ("s-:" . mark-rectangle-to-end)               ;标记矩形到行末
   ("s-H" . execute-command-with-region-replace) ;在选择的区域中执行命令并替换
   ("s-P" . execute-command-with-region-kill)    ;在选择的区域中执行命令并删除
   ("s-\"" . copy-rectangle-to-register)         ;拷贝矩形到寄存器
   ))
;;; ### Dired ###
;;; --- 文件浏览器
(lazy-set-key
 '(
   ("h" . dired-next-subdir)                   ;下一个子目录
   ("l" . dired-prev-subdir)                   ;上一个子目录
   ("j" . dired-next-file-line)                ;下一行
   ("k" . dired-previous-file-line)            ;上一行
   ("n" . dired-next-dirline)                  ;下一个目录
   ("p" . dired-prev-dirline)                  ;上一个目录
   ("f" . dired-find-file+)                    ;打开当前文件或目录
   ("C-m" . dired-find-file+)                  ;打开当前文件或目录
   ("P" . dired-do-kill-lines)                 ;删除标记的行
   ("4" . dired-serial-rename)                 ;批量重命名
   ("5" . dired-translate-to-html)             ;转换到HTML格式
   ("7" . dired-move-to-last-file)             ;移动到最后一个文件
   ("8" . dired-move-to-first-file)            ;移动到第一个文件
   ("9" . auto-install-from-dired)             ;自动从EmacsWiki安装标记的文件
   ("E" . dired-touch-now)                     ;Touch命令
   ("z" . dired-do-moccur)                     ;搜索dired
   ("I" . image-dired)                         ;打开浏览模式
   ("w" . wdired-change-to-wdired-mode)        ;切换到dired编辑模式
   ("W" . dired-x-find-file)                   ;查找文件
   ("\"" . find-lisp-find-dired-pwd)           ;查找特定的lisp文件
   ("J" . dired-goto-file)                     ;跳到某个文件
   ("K" . dired-open-file)                     ;根据文件后缀智能打开文件
   ("X" . traverse-cp-or-mv-extfiles-in-dir)   ;拷贝或移动目录下指定扩展名的文件
   ("V" . traverse-dired-browse-archive)       ;浏览压缩文件
   (";" . dired-view-minor-mode-toggle)        ;字母输入导航模式
   ("," . dired-diff)                          ;比较文件
   ("'" . dired-up-directory-single)           ;返回上一级目录
   ;; ("C-s" . dired-isearch-forward)             ;向后搜索
   ;; ("C-r" . dired-isearch-backward)            ;向前搜索
   ;; ("ESC C-s" . dired-isearch-forward-regexp)  ;向前正则表达式搜索
   ;; ("ESC C-r" . dired-isearch-backward-regexp) ;向后正则表达式搜索
   ("SPC" . scroll-up)                         ;向下翻页
   ("e" . scroll-down)                         ;向上翻页
   ("c" . kill-this-buffer)                    ;关闭当前标签
   ("/" . copy-buffer-file-name-as-kill)       ;显示路径或名称
   ("[" . dired-rename-with-copy)              ;重命名函数
   ("]" . dired-nautilus)                      ;用 Nautils 加载当前目录
   ("{" . dired-gnome-open-file)               ;用GNOME方式打开文件
   ("s" . one-key-menu-dired-sort)             ;排序
   ("?" . dired-get-size)                      ;得到文件的大小
   ("M-o" . dired-toggle-omit)                 ;切换忽略状态
   ("T" . dired-do-tarball)                    ;tarball压缩
   )
 dired-mode-map
 )
;; ;;; ### Wdired ###
;; ;;; --- Dired 的编辑模式
;; (lazy-set-key
;;  '(
;;    ("C-c C-e" . wdired-format-filename) ;格式化文件名
;;    )
;;  wdired-mode-map
;;  )

;; ###Font###
(lazy-set-key
 '(
   ("s--" . text-scale-decrease)        ;减小字体大小
   ("s-=" . text-scale-increase)        ;增大字体大小
   ("M--" . text-scale-decrease-global) ;减少字体大小, 全局
   ("M-+" . text-scale-increase-global) ;增加字体大小, 全局
   ("M-=" . text-scale-default-global)  ;恢复字体大小, 全局
   ))

;;; ### Color-moccur ###
;;; --- 增强的moccur
(lazy-set-key
 '(
   ("s-x v" . moccur-grep)              ;搜索当前目录下的文件
   ("s-x g" . moccur-grep-find-pwd)     ;递归搜索当前目录下的文件
   ))

;;; ### Paredit ###
;;; --- 结构化编程
(lazy-unset-key
 '("M-J" "M-r" "M-s" "M-;" "C-M-f" "C-M-b" "M-)")
 paredit-mode-map)                      ;卸载按键
(lazy-set-key
 '(
   ;; 符号插入
   ("(" . paredit-open-parenthesis)           ;智能 (
   (")" . paredit-close-parenthesis)          ;智能 )
   ("[" . paredit-open-bracket)               ;智能 [
   ("]" . paredit-close-bracket)              ;智能 ]
   ("{" . paredit-open-curly)                 ;智能 {
   ("}" . paredit-close-curly)                ;智能 }
   ("C-s-," . paredit-open-angled)            ;智能 <
   ("C-s-." . paredit-close-angled)           ;智能 >
   ("\"" . paredit-doublequote)               ;智能 "
   ("\\" . paredit-backslash)                 ;智能 \
   ;; 删除
   ("M-o" . paredit-backward-delete)          ;向后删除
   ("C-d" . paredit-forward-delete)           ;向前删除
   ("C-k" . paredit-kill)                     ;删除
   ("C-M-m" . paredit-forward-kill-word)      ;向前按词删除
   ("C-M-n" . paredit-backward-kill-word)     ;向后按词删除
   ;; 移动
   ("C-M-S-m" . paredit-forward)              ;向前移动
   ("C-M-S-n" . paredit-backward)             ;向后移动
   ;; 包围
   ("M-\"" . paredit-meta-doublequote)        ;用 " " 包围对象, 或跳出字符串
   ("M-(" . paredit-wrap-sexp)                ;用 ( ) 包围当前对象
   ("M-[" . paredit-wrap-square)              ;用 [ ] 包围对象
   ("M-{" . paredit-wrap-curly)               ;用 { } 包围对象
   ("C-(" . paredit-wrap-angled)              ;用 < > 包围对象
   ;; 跳出并换行缩进
   ("M-}" . paredit-close-curly-and-newline)  ;跳出 { } 并换行
   ("M-]" . paredit-close-square-and-newline) ;跳出 [ ] 并换行
   ("C-)" . paredit-close-angled-and-newline) ;跳出 < > 并换行
   ;; 其他
   ("C-j" . paredit-newline)            ;智能换行并缩进
   ("M-q" . paredit-reindent-defun)     ;重新格式化函数
   ("M-s-r" . paredit-raise-sexp)       ;提取表达式, 并删除同一等级的其他表达式
   ("M-s-b" . paredit-convolute-sexp)   ;嵌套表达式
   )
 paredit-mode-map)

;;; ### Buffer Edit ###
;;; --- 缓存编辑
(lazy-set-key
 '(
   ("C-x f" . helm-find-files)		
   ;; ("M-N" . kill-syntax-backward+)            ;向后进行语法删除
   ;; ("M-M" . kill-syntax-forward+)             ;向前进行语法删除
   ("C-:" . comment-or-uncomment-region+)     ;注释当前行
   ;; ("C-s-n" . comment-dwim-next-line)         ;移动到上一行并注释
   ;; ("C-s-p" . comment-dwim-prev-line)         ;移动到下一行并注释
   ;; ("M-s-n" . comment-part-move-down)         ;向下移动注释
   ;; ("M-s-p" . comment-part-move-up)           ;向上移动注释
   ;; ("C-x C-x" . exchange-point-and-mark)      ;交换当前点和标记点
   ;; ("M-o" . backward-delete-char-untabify)    ;向前删除字符
   ("M-z" . zap-to-char)                      ;向前删除到第一个相符的字符
   ("C-M-z" . zap-back-to-char)               ;向后删除到第一个相符的字符
   ("C-o" . open-newline-above)            ;在上面一行新建一行
   ("C-l" . open-newline-below)            ;在下面一行新建一行
   ;; ("C-/" . undo)                             ;撤销
   ;; ("C-?" . redo)                             ;重做
   ;; ("s-k" . kill-and-join-forward)            ;在缩进的行之间删除
   ("C-x u" . mark-line)                      ;选中整行
   ;; ("C-M-S-h" . mark-paragraph)               ;选中段落
   ("C-S-o" . duplicate-line-or-region-above) ;向上复制当前行或区域
   ("C-S-l" . duplicate-line-or-region-below) ;向下复制当前行或区域
   ;; ("C-S-s-o" . duplicate-line-above-comment) ;复制当前行到上一行, 并注释当前行
   ;; ("C-S-s-l" . duplicate-line-below-comment) ;复制当前行到下一行, 并注释当前行
   ;; ("M-SPC" . just-one-space)                 ;只有一个空格在光标处
   ("C-c +" . increment-number-at-point) ;增加光标下的数字
   ("C-c -" . decrement-number-at-point) ;减小光标下的数字
   ))

;;; ### Buffer Move ###
;;; --- 缓存移动
(lazy-set-key
 '(
   ;; ("s-N" . move-text-down)                ;把光标所在的整行文字(或标记)下移一行
   ;; ("s-P" . move-text-up)                  ;把光标所在的整行文字(或标记)上移一行
   ;; ("s-J" . scroll-up-one-line)            ;向上滚动一行
   ;; ("s-K" . scroll-down-one-line)          ;向下滚动一行
   ;; ("M-J" . scroll-other-window)           ;向下滚动其他窗口
   ;; ("M-K" . scroll-other-window-down)      ;向上滚动其他窗口
   ;; ("M-<" . scroll-other-window-up-line)   ;向下滚动其他窗口一行
   ;; ("M->" . scroll-other-window-down-line) ;向上滚动其他窗口一行
   ("C-z k" . beginning-of-buffer)         ;缓存开始
   ("C-z j" . end-of-buffer)               ;缓存结尾
   ;; ("M-p" . go-to-next-pair-right)         ;在( ),' ', " ", [ ], { }中跳到匹配符号的右边
   ;; ("M-n" . go-to-next-pair-left)          ;在( ), ' ', " ", [ ], { }中跳到匹配符号的左边
   ("%" . match-paren)                     ;当在括号上按 % 时, 自动跳转到与当前括号匹配的另一个括号
   ;; ("s-g" . goto-percent)                  ;跳转到当前Buffer的文本百分比, 单位为字符
   ;; ("M-g" . goto-line)                     ;到指定行
   ;; ("M-G" . goto-column)                   ;到指定列
   ;; ("C-M-f" . forward-paragraph)           ;下一个段落
   ;; ("C-M-b" . backward-paragraph)          ;上一个段落
   ;; ("C-M-y" . backward-up-list)            ;向左跳出 LIST
   ;; ("C-M-o" . up-list)                     ;向右跳出 LIST
   ;; ("C-M-u" . backward-down-list)          ;向左跳进 LIST
   ;; ("C-M-i" . down-list)                   ;向右跳进 LIST
   ;; ("C-M-a" . beginning-of-defun)          ;函数开头
   ;; ("C-M-e" . end-of-defun)                ;函数末尾
   ;; ("C-c j" . go-to-char-forward)          ;快速字母导航, 向前
   ;; ("C-c k" . go-to-char-backward)         ;快速字母导航, 向后
   ("C->" . remember-init)                 ;记忆初始函数
   ("C-<" . remember-jump)                 ;记忆跳转函数
   ("M-s" . lazy-search-menu)              ;懒惰搜索
   ("M-s-," . point-stack-pop)             ;buffer索引跳转
   ("M-s-." . point-stack-push)            ;buffer索引标记
   ;; ("s-{" . current-line-move-to-top)      ;移动当前行到最上面一行
   ))

;; ### Helm ###
;; 
(lazy-set-key
 '(
   ("s-y" . helm-mini)
   )
 )

;; ### Python ###
;; --- Python mode
(require 'python)
(lazy-set-key
 '(
   ("C-S-j" . jump-to-import)
   )
 python-mode-map)

;; ### Elisp mode ###
(lazy-set-key
 '(
   ("C-c C-v" . find-variable-at-point)
   ("C-c C-j" . find-function-at-point)
   )
 emacs-lisp-mode-map)

;; ### Multi-Scratch ###
;; 
(lazy-set-key
 '(
   ("C-1" . multi-scratch-new)
   ("C-2" . multi-scratch-prev)
   ("C-3" . multi-scratch-next)
   )
 )

;; ###ERC###
;; 
(lazy-set-key
 '(
   ("C-c i" . erc)
   )
 )
(lazy-set-key
 '(
   ("C-c o" . open-url-under-cursor)        ;使w3m打开鼠标下的url
   )
 erc-mode-map)

;;; ### Toolkit ###
;;; --- 工具函数
(lazy-set-key
 '(
   ;; ("C-x C-c" . checkdoc)                   ;检查文档
   ;; ("C-c ns" . notes-search)                ;便签搜索
   ;; ("C-c nn" . notes-new)                   ;新建便签
   ("s-c o" . one-key-menu-directory)       ;目录打开菜单
   ("M-C" . one-key-menu-cycle-buffer)      ;特定模式切换
   ;; ("s-*" . one-key-menu-backup-file)       ;备份资料
   ;; ("s-," . bury-buffer)                    ;隐藏当前buffer
   ;; ("s-." . unbury-buffer)                  ;反隐藏当前buffer
   ;; ("s-&" . killall)                        ;杀掉进程
   ;; ("C-x w" . count-words)                  ;计算单词的数量
   ;; ("C-z l" . linum-mode)                   ;行号模式切换
   ("s-Z" . dot-emacs)                      ;打开dot-emacs文件
   ;; ("C-x f" . find-file-at-point)           ;文件跳转
   ("s-f" . find-file-root)                 ;用root打开文件
   ("s-r" . find-file-smb)                  ;访问samba
   ;; ("<print>" . save-screenshots)           ;截屏
   ;; ("<M-s-return>" . toggle-debug-on-error) ;切换调试模式
   ;; ("s-R" . re-builder)                     ;可视化构建正则表达式
   ;; ;; ("s-1" . elisp-depend-insert-require)    ;插入 (require '...) 语句
   ;; ("s-1" . sort-lines)                  ;排序
   ;; ("s-2" . elisp-depend-insert-comment) ;插入 `...' 注释代码
   ;; ("s-3" . hanconvert-region)           ;转换简体或繁体中文
   ;; ("s-4" . uniquify-all-lines-buffer)   ;删除重复的行
   ;; ("s-[" . eval-expression)             ;执行表达式
   ;; ("s-\\" . artist-mode)                ;绘制模式
   ;; ("M-s-u" . ediff-buffers)             ;ediff
   ;; ("C-s-q" . quoted-insert)             ;读取系一个输入字符并插入
   ("C-c f" . hualet-insert-filename)   ;
   ("C-x 5" . rotate-windows)           ;选装两个窗口，[-] --> [|]
   ))

;;; ### Apt-utils ###
;;; --- Apt 管理工具
(lazy-unset-key
 '("s")
 apt-utils-mode-map)                    ;卸载按键
(lazy-set-key
 '(
   ("s-x z" . apt-utils-search)         ;APT搜索
   ))
(lazy-set-key
 '(
   ("#" . apt-utils-rebuild-package-lists)    ;重建包列表
   ("*" . apt-utils-list-package-files)       ;列出包文件
   ("F" . apt-utils-choose-package-link)      ;选择包连接
   ("f" . apt-utils-follow-link)              ;进入连接
   ("<backtab>" . apt-utils-previous-package) ;上一个连接
   ("TAB" . apt-utils-next-package)           ;下一个连接
   ("q" . apt-utils-quit)                     ;退出
   ("d" . apt-utils-describe-package)         ;解释
   ("B" . apt-utils-view-previous-package)    ;上一个视图
   ("J" . scroll-up-one-line)                 ;向上滚动一行
   ("K" . scroll-down-one-line)               ;向下滚动一行
   ("t" . apt-utils-toggle-package-info)      ;切换info
   ("S" . apt-utils-show-package)             ;显示包
   ("v" . one-key-menu-apt-utils-view)        ;查看菜单
   ("s" . one-key-menu-apt-utils-search)      ;搜索菜单
   ("b" . one-key-menu-apt-utils-browse)      ;浏览菜单
   )
 apt-utils-mode-map
 )
(lazy-set-key sdcv-key-alist apt-utils-mode-map)    ;sdcv的局部按键绑定

;;; ### Speedbar ###
;;; --- 快速访问文件和tags
(setq speedbar-buffers-key-map nil)     ;卸载一些按键
(setq speedbar-file-key-map nil)
(lazy-set-key
 '(
   ("s-z s-z" . sr-speedbar-toggle)        ;显示/隐藏speedbar
   ("s-z s-x" . sr-speedbar-select-window) ;选中speedbar窗口
   ))
(lazy-set-key
 '(
   ;; 导航操作
   ("f" . speedbar-edit-line)             ;进入当前条目
   ("C-m" . speedbar-edit-line)           ;进入当前条目
   ("j" . speedbar-next)                  ;下一行
   ("k" . speedbar-prev)                  ;上一行
   ("n" . speedbar-forward-list)          ;下一条目
   ("p" . speedbar-backward-list)         ;上一条目
   ("u" . speedbar-forced-contract)       ;跳到上一级
   ("F" . speedbar-files)                 ;切换文件视图
   ("B" . speedbar-buffers)               ;切换缓存视图
   ("q" . sr-speedbar-toggle)             ;退出
   ;; 树操作
   ("x" . speedbar-expand-line)           ;展开当前行
   ("z" . speedbar-contract-line)         ;收缩当前行
   ("v" . speedbar-toggle-line-expansion) ;切换当前行的状态
   ;; 文件操作
   ("g" . speedbar-refresh)             ;刷新
   ("'" . speedbar-up-directory)        ;上一级目录
   ("i" . speedbar-item-info)           ;显示信息
   ("b" . speedbar-item-byte-compile)   ;编译
   ("l" . speedbar-item-load)           ;加载
   ("c" . speedbar-item-copy)           ;拷贝
   ("d" . speedbar-item-delete)         ;删除
   ("o" . speedbar-item-object-delete)  ;删除对象
   ("r" . speedbar-item-rename)         ;重命令
   ("m" . speedbar-create-directory)    ;创建目录
   ("K" . speedbar-buffer-kill-buffer)  ;关闭当前buffer
   )
 speedbar-mode-map
 )
;;; ### Top ###
;;; --- 进程管理器
(lazy-set-key
 '(
   ("<s-f8>" . top)                     ;TOP
   ))
(lazy-set-key
 '(
   ("s" . isearch-forward)              ;搜索
   ("g" . top)                          ;刷新
   ("q" . quit-window)                  ;退出
   ("d" . top-mode-kill)                ;删除
   ("D" . top-mode-kill-noconfirm)      ;不需要确认删除
   ("t" . top-mode-strace)
   ("T" . top-mode-strace-noconfirm)
   ("r" . top-mode-renice)
   ("R" . top-mode-renice-noconfirm)
   ("m" . top-mode-mark)                ;标记
   ("u" . top-mode-unmark)              ;删除标记
   ("U" . top-mode-show-specific-user))
 top-mode-map
 )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Predictive ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(lazy-unset-key
 '("M-/")
 predictive-map)
(lazy-set-key
 '(
   ("M-h" . completion-extend-prefix))
 predictive-map)

;;; ### Man ###
;;; --- Man
(lazy-set-key
 '(("C-<f1>" . woman)))
(lazy-set-key
 '(
   ("j" . next-line)                    ;向上滚动一行
   ("k" . previous-line)                ;向下滚动一行
   ("," . end-of-buffer)                ;buffer末尾
   ("." . beginning-of-buffer)          ;buffer开始
   ("M-n" . Man-next-section)           ;下一节
   ("M-p" . Man-previous-section)       ;上一节
   ("g" . Man-goto-section)             ;跳转到某一节
   ("G" . Man-goto-see-also-section)    ;跳转到 see-also
   ("f" . Man-follow-manual-reference)  ;当前处的man手册引用
   ("F" . man-follow)                   ;某man手册引用
   ("N" . Man-next-manpage)             ;下一个页面
   ("P" . Man-previous-manpage)         ;上一个页面
   ("q" . Man-quit)                     ;隐藏
   ("Q" . Man-kill)                     ;退出
   )
 Man-mode-map
 )
(lazy-set-key sdcv-key-alist Man-mode-map)    ;sdcv的局部按键绑定

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Direx ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(global-set-key (kbd "C-x C-j") 'direx:jump-to-directory)
(global-set-key (kbd "s-c s-c") 'direx-project-toggle-direx-project-window)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Gtk Look ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(define-key global-map [?\C-h ?\C-j] 'gtk-lookup-symbol)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Undo tree ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(lazy-unset-key
 '("C-x u")
 undo-tree-map)                         ;卸载按键

;;; ### EMMS ###
;;; --- Emacs 多媒体系统
(lazy-set-key
 '(
   ("C-c p" . one-key-menu-emms)        ;播放器菜单
   ("<up>" . emms-volume-mode-plus)     ;增加音量
   ("<down>" . emms-volume-mode-minus)  ;减少音量
   ("<left>" . emms-previous)             ;上一曲
   ("<right>" . emms-next)                ;下一曲
   ("M-A" . emms-pause)                 ;暂停/播放
   ("M-X" . emms-random)                ;随机播放
   ("M-Z" . emms-stop)                  ;停止
   ))
;;; ### Emms Playlist ###
;;; --- EMMS 播放列表
(lazy-unset-key
 '("s" "m" "u" "M-<" "M->")
 emms-playlist-mode-map)                ;卸载按键
(lazy-set-key
 '(
   ("C-x C-s" . emms-playlist-save)             ;保存播放列表
   ("C-y" . emms-playlist-mode-yank)            ;剪切
   ("C-k" . emms-playlist-mode-kill-track)      ;删除当前TRACK
   ("C-w" . emms-playlist-mode-kill)            ;删除
   ("C-/" . emms-playlist-mode-undo)            ;撤销
   ("J" . scroll-up-one-line)                   ;向上滚动一行
   ("K" . scroll-down-one-line)                 ;向下滚动一行
   ("." . emms-playlist-mode-first)             ;浏览最上面一行
   ("," . emms-playlist-mode-last)              ;浏览最下面一行
   ("C-j" . emms-playlist-mode-insert-newline)  ;新建一行
   ("M-y" . emms-playlist-mode-yank-pop)        ;YANK弹出
   ("M-n" . emms-playlist-mode-next)            ;下一个播放列表
   ("M-p" . emms-playlist-mode-previous)        ;上一个播放列表
   ("a" . emms-playlist-mode-add-contents)      ;向当前播放列表添加内容
   ("d" . emms-playlist-mode-kill-entire-track) ;从播放列表中移除当前TRACK
   ("C" . emms-playlist-mode-clear)             ;清空当前的播放列表
   ("f" . emms-playlist-mode-play-smart)        ;播放当前TRACK
   ("b" . emms-playlist-set-playlist-buffer)    ;设定当前播放列表BUFFER
   ("n" . emms-next)                            ;播放下一首
   ("p" . emms-previous)                        ;播放上一首
   ("r" . emms-random)                          ;随机播放下一首
   (">" . emms-seek-forward)                    ;前进
   ("<" . emms-seek-backward)                   ;后退
   ("A" . emms-pause)                           ;暂停
   ("Z" . emms-stop)                            ;停止
   ("S" . emms-show)                            ;显示播放信息
   ("q" . emms-playlist-mode-bury-buffer)       ;退出
   ("?" . describe-mode)                        ;帮助
   ("g" . emms-playlist-mode-center-current)    ;跳转到当前播放TRACK
   ("G" . emms-jump-to-file)                    ;定位当前音乐文件的位置
   ("D" . emms-delete-file-from-disk)           ;丛磁盘删除当前的文件
   (";" . emms-tag-editor-edit-marked-tracks)   ;编辑标记的TAG
   ("H" . emms-last-mark-track)                 ;最后一个标记
   ("L" . emms-first-mark-track)                ;第一个标记
   ("N" . emms-next-mark-track)                 ;下一个标记
   ("P" . emms-prev-mark-track)                 ;上一个标记
   ;; ("s" . one-key-menu-emms-playlist-sort)      ;列表排序菜单
   ;; ("m" . one-key-menu-emms-playlist-mark)      ;列表标记菜单
   )
 emms-playlist-mode-map
 )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Org-mode ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(global-set-key (kbd "C-c c") 'org-capture)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Browser Kill Ring ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(global-set-key (kbd "M-y") 'browse-kill-ring)

(provide 'HualetKeySet)
