;; 自动编译加载目录, 加快下次启动速度
(setq font-lock-verbose nil)
(setq byte-compile-verbose nil)
(byte-recompile-directory "~/.emacs.d/HualetEmacs/Site-Lisp/")

(require 'HualetFont)                  ;字体
(require 'HualetDepend)                ;依赖
(require 'HualetTheme)                 ;主题
(require 'HualetCustomize)             ;自定义
;(require 'HualetRedefine)              ;重定义
(require 'HualetSetup)                 ;设置
(require 'HualetKeySet)              ;按键
(require 'HualetStartup)               ;启动

(provide 'HualetInit)
