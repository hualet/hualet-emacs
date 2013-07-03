;;; ### Functin key ###
;;; --- 功能函数
(lazy-set-key
 '(
   ;; ("<f1>" . sh-show-help)                       ;elisp help
   ;; ("<f2>" . refresh-file)                       ;自动刷新文件
   ;; ("<f3>" . visit-tags-table)                   ;查找TAGS文件 (更新TAGS表)
   ;; ("<f4>" . generate-gtags-files)               ;生成gtags引用文件
   ;;("<f5>" . emacs-exit)                         ;退出emacs
   ;; ("<f6>" . lock-screen)                        ;锁屏
   ;; ("<f7>" . one-key-menu-ui)                    ;用户界面菜单
   ("<f8>" . dired-jump)                         ;文件管理起
   ;; ("<f9>" . list-load-path-shadows)             ;显示重复加载的库
   ;; ("<f10>" . open-current-log-keyboard-command) ;打开命令日志
   ("<f11>" . fullscreen-toggle)                 ;全屏切换
   ;; ("<f12>" . hibernate-disk)                    ;休眠
   ;; ("M-1" . strip-blank-lines)                   ;删除选中区域的所有空行
   ;; ("M-2" . indent-buffer)                       ;自动格式化当前Buffer
   ;; ("M-3" . delete-trailing-whitespace)          ;删除行末空格
   ;; ("M-4" . whitespace-cleanup)                  ;清理空格
   ;; ("M-5" . insert-line-number+)                 ;自动在行首添加行号
   ;; ("M-6" . strip-line-number)                   ;删除选中区域的行号
   ;; ("C-4" . insert-changelog-date)               ;插入日志时间 (%Y/%m/%d)
   ;; ("C-5" . insert-standard-date)                ;插入标准时间 (%Y-%m-%d %T)
   ;; ("C-&" . switch-to-messages)                  ;跳转到 *Messages* buffer
   ;; ("C-7" . jump-back)                           ;返回查找符号定义前的位置
   ;; ("C-8" . find-function-or-variable-at-point)  ;查找符号的定义
   ;; ("M-I" . backward-indent)                     ;向后移动4个字符
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


;;; ### Paredit ###
;;; --- 结构化编程
(lazy-unset-key
 '("M-J" "M-r" "M-s" "M-;" "C-M-f" "C-M-b")
 paredit-mode-map)                      ;卸载按键
(lazy-set-key
 '(
   ;; 符号插入
   ("(" . paredit-open-parenthesis)             ;智能 (
   (")" . paredit-close-parenthesis)            ;智能 )
   ("[" . paredit-open-bracket)                 ;智能 [
   ("]" . paredit-close-bracket)                ;智能 ]
   ("{" . paredit-open-curly)                   ;智能 {
   ("}" . paredit-close-curly)                  ;智能 }
   ("C-s-," . paredit-open-angled)              ;智能 <
   ("C-s-." . paredit-close-angled)             ;智能 >
   ("\"" . paredit-doublequote)                 ;智能 "
   ("\\" . paredit-backslash)                   ;智能 \
   ;; 删除
   ("M-o" . paredit-backward-delete)            ;向后删除
   ("C-d" . paredit-forward-delete)             ;向前删除
   ("C-k" . paredit-kill)                       ;删除
   ("C-M-m" . paredit-forward-kill-word)        ;向前按词删除
   ("C-M-n" . paredit-backward-kill-word)       ;向后按词删除
   ;; 移动
   ("C-M-S-m" . paredit-forward)                ;向前移动
   ("C-M-S-n" . paredit-backward)               ;向后移动
   ;; 包围
   ("M-\"" . paredit-meta-doublequote)          ;用 " " 包围对象, 或跳出字符串
   ("M-(" . paredit-wrap-sexp)                  ;用 ( ) 包围当前对象
   ("M-[" . paredit-wrap-square)                ;用 [ ] 包围对象
   ("M-{" . paredit-wrap-curly)                 ;用 { } 包围对象
   ("C-(" . paredit-wrap-angled)                ;用 < > 包围对象
   ("M-)" . paredit-splice-sexp+)               ;去除包围对象的括号, 并删除空行
   ;; 跳出并换行缩进
   ("M-:" . paredit-close-round-and-newline+)   ;跳出 ( ) 或 " " 并换行
   ("M-?" . paredit-forward-sexp-and-newline)   ;移动到下一个表达式, 并换行
   ("M-}" . paredit-close-curly-and-newline)    ;跳出 { } 并换行
   ("M-]" . paredit-close-square-and-newline)   ;跳出 [ ] 并换行
   ("C-)" . paredit-close-angled-and-newline)   ;跳出 < > 并换行
   ;; 注释
   ("C-M-:" . paredit-comment-list-and-newline) ;注释当前LIST并换行
   ;; 其他
   ("C-j" . paredit-newline)            ;智能换行并缩进
   ("M-q" . paredit-reindent-defun)     ;重新格式化函数
   ("M-s-r" . paredit-raise-sexp)       ;提取表达式, 并删除同一等级的其他表达式
   ("M-s-b" . paredit-convolute-sexp)   ;嵌套表达式
   ;; ("M-s-'" . one-key-menu-paredit)     ;Paredit 菜单
   )
 paredit-mode-map
 )


;;; ### Window Operation ###
;;; --- 窗口操作
(lazy-set-key
 '(
   ;; ("C-c v" . split-window-vertically)                ;纵向分割窗口
   ;; ("C-c h" . split-window-horizontally)              ;横向分割窗口
   ;; ("C-'" . delete-current-buffer-and-window)         ;关闭当前buffer, 并关闭窗口
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
 ;;   ("h" . dired-next-subdir)                   ;下一个子目录
;;    ("l" . dired-prev-subdir)                   ;上一个子目录
;;    ("j" . dired-next-file-line)                ;下一行
;;    ("k" . dired-previous-file-line)            ;上一行
;;    ("n" . dired-next-dirline)                  ;下一个目录
;;    ("p" . dired-prev-dirline)                  ;上一个目录
;;    ("f" . dired-find-file+)                    ;打开当前文件或目录
;;    ("C-m" . dired-find-file+)                  ;打开当前文件或目录
;;    ("P" . dired-do-kill-lines)                 ;删除标记的行
;;    ("4" . dired-serial-rename)                 ;批量重命名
;;    ("5" . dired-translate-to-html)             ;转换到HTML格式
;;    ("7" . dired-move-to-last-file)             ;移动到最后一个文件
;;    ("8" . dired-move-to-first-file)            ;移动到第一个文件
;;    ("9" . auto-install-from-dired)             ;自动从EmacsWiki安装标记的文件
   ("E" . dired-touch-now)                     ;Touch命令
;;    ("z" . dired-do-moccur)                     ;搜索dired
;;    ("I" . image-dired)                         ;打开浏览模式
   ("w" . wdired-change-to-wdired-mode)        ;切换到dired编辑模式
;;    ("W" . dired-x-find-file)                   ;查找文件
;;    ("\"" . find-lisp-find-dired-pwd)           ;查找特定的lisp文件
;;    ("J" . dired-goto-file)                     ;跳到某个文件
;;    ("K" . dired-open-file)                     ;用W3M打开各种文件
;;    ("X" . traverse-cp-or-mv-extfiles-in-dir)   ;拷贝或移动目录下指定扩展名的文件
;;    ("V" . traverse-dired-browse-archive)       ;浏览压缩文件
;;    (";" . dired-view-minor-mode-toggle)        ;字母输入导航模式
;;    ("," . dired-diff)                          ;比较文件
;;    ("'" . dired-up-directory-single)           ;返回上一级目录
;;    ("C-s" . dired-isearch-forward)             ;向后搜索
;;    ("C-r" . dired-isearch-backward)            ;向前搜索
;;    ("ESC C-s" . dired-isearch-forward-regexp)  ;向前正则表达式搜索
;;    ("ESC C-r" . dired-isearch-backward-regexp) ;向后正则表达式搜索
;;    ("SPC" . scroll-up)                         ;向下翻页
;;    ("e" . scroll-down)                         ;向上翻页
;;    ("c" . kill-this-buffer)                    ;关闭当前标签
;;    ("/" . copy-buffer-file-name-as-kill)       ;显示路径或名称
;;    ("[" . dired-rename-with-copy)              ;重命名函数
;;    ("]" . dired-nautilus)                      ;用 Nautils 加载当前目录
;;    ("{" . dired-gnome-open-file)               ;用GNOME方式打开文件
;;    ("s" . one-key-menu-dired-sort)             ;排序
;;    ("?" . dired-get-size)                      ;得到文件的大小
;;    ("M-o" . dired-toggle-omit)                 ;切换忽略状态
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
   ("s-=" . text-scale-decrease)        ;增大字体大小
   ("M--" . text-scale-decrease-global) ;减少字体大小, 全局
   ("M-+" . text-scale-increase-global) ;增加字体大小, 全局
   ("M-=" . text-scale-default-global)  ;恢复字体大小, 全局
   ))

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
   ;; ("%" . match-paren)                     ;当在括号上按 % 时, 自动跳转到与当前括号匹配的另一个括号
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
   ;; ("C->" . remember-init)                 ;记忆初始函数
   ;; ("C-<" . remember-jump)                 ;记忆跳转函数
   ;; ("M-s" . lazy-search-menu)              ;懒惰搜索
   ;; ("M-s-," . point-stack-pop)             ;buffer索引跳转
   ;; ("M-s-." . point-stack-push)            ;buffer索引标记
   ;; ("s-{" . current-line-move-to-top)      ;移动当前行到最上面一行
   ))

;; ### Helm ###
;; 
(lazy-set-key
 '(
   ("s-y" . helm-mini)
   )
 )

;;; ### Python ###
;;; --- Python mode
(require 'python-mode)
(lazy-set-key
 '(
   ("C-S-j" . jump-to-import)
   )
 python-mode-map)

;; ### Multi-Scratch ###
;; 
(lazy-set-key
 '(
   ("C-1" . multi-scratch-prev)
   ("C-2" . multi-scratch-next)
   ("C-3" . multi-scratch-new)
   )
 )

;; ###ERC###
;; 
(lazy-set-key
 '(
   ("C-c i" . erc)
   )
 )

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
   ;; ("s-Z" . dot-emacs)                      ;打开dot-emacs文件
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
   ))


(provide 'HualetKeySet)
