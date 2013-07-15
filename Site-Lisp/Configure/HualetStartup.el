;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 启动设置 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defvar HualetStartup-execute t        ;只在启动时执行
  "Just eval current buffer when startup.")

(when HualetStartup-execute
  (server-start)                      ;启动emacs服务
  ;; (if (file-exists-p emms-source-file-default-directory)
  ;;     (emms-history-load))              ;自动加载播放列表历史
  (fullscreen)                          ;启动时全屏函数
  (maximize)                            ;最大化窗口， 新版 Chrome 全屏窗口时打开新标签和全屏冲突
  ;; (startup-open)                        ;打开指定的文件
  ;; (startup-close)                       ;关闭指定的文件
  ;; (resume-windows 'a)                   ;加载窗口布局
  ;; (unmark-all-buffers)                  ;除去所有缓存的标记
  (setq HualetStartup-execute nil)     ;关闭启动标志
  
  
  ;; 在emacs启动的时候显示一只可爱的奶牛
  (cowsay-how-to-become-a-hacker)
  )

(provide 'HualetStartup)
