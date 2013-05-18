;; 下面的设置在其他配置文件中都有， 只是为了有快速进入 MyEmacs 的感觉
;(menu-bar-mode -1)                      ;禁用菜单栏
(tool-bar-mode -1)                      ;禁用工具栏
(scroll-bar-mode -1)                    ;禁用滚动条
;; (custom-set-faces
;;  '(default
;;     ((t
;;       (:background "black"               ;前景
;;                    :foreground "#137D11" ;背景
;;                    ))))
;;  '(mode-line                            ;正在使用的标签迷你BUFFER
;;    ((t (
;;         :foreground "White"               ;前景色
;;                     :background "DarkRed" ;背景色
;;                     :box (
;;                           :line-width -1
;;                                       :style released-button)))))
;;  '(mode-line-inactive                   ;未使用的标签迷你BUFFER
;;    ((default (:inherit mode-line))
;;     (((class color) (min-colors 88)
;;       (background dark))
;;      (
;;       :background "Black"
;;                   :foreground "Green4"
;;                   :box (
;;                         :line-width -1
;;                                     :color "#013500"
;;                                     :style released-button)
;;                   :weight light))))
;;  '(mode-line-highlight                  ;高亮
;;    ((((class color) (min-colors 88))
;;      (:box (:line-width 1
;;                         :color "Green4"
;;                         :style released-button))))) )

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
