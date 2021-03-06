;;;;;;;;;;;;;;;;;;;;;;;;;; 需要修改的定义 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defvar my-name "")
(defvar my-full-name "")
(defvar startup-open-file-list "")
(defvar startup-close-file-list "")
(defvar my-mail "")
(defvar my-homepage "")
(defvar my-irc-nick "")
(defvar my-irc-passwd "")
(defvar my-irc-channel-list '())

;; 扩展自定义变量
(custom-set-variables
 ;; 基本信息
 '(my-name "Hualet")                            ;名字
 '(my-full-name "Hualet Wang")                  ;全名
 '(my-mail "mr.asianwang@gmail.com")            ;邮件地址
 '(my-default-download-directory "~/Downloads") ;默认下载目录
 '(my-homepage "http://www.google.com/") ;首页, 无国家/地区的自动转向
 '(my-irc-nick "hualet_deepin")          ;IRC昵称
 '(my-irc-passwd "Wyh19910402")          ;IRC密码
 '(my-irc-channel-list
   '(
     "#emacs"
     "#python"
     "#ubuntu"
     "#lisp"
     ))
 ;; 打开或关闭文件
 '(startup-open-file-list               ;启动打开的文件列表
   '(
     "~/Notes/hualet.org"
     "~/Notes/WeeklyReviews.org"
     ))
 '(startup-close-file-list              ;启动关闭的buffer列表
   '(
     ))
	 
 ;; 目录设置
 '(my-home-directory "~/")                       ;HOME目录
 '(my-default-download-directory "~/Downloads/") ;默认下载目录
 '(my-go-workspace "~/Golang/")                  ;go的工作空间
 '(my-resource-backup-directory "~/Backup/") ;资料备份目录
 '(my-book-directory "~/Book/")            ;图书目录
 '(my-reading-directory "~/Book/Reading/") ;看书目录
 '(my-picture-directory "~/Pictures/")  ;图片目录
 '(my-music-directory "~/Music")        ;音乐目录
 '(my-emacs-package-directory "~/.emacs.d/HualetEmacs/Site-Lisp/Packages/")                              
 '(my-emacs-configure-directory "~/.emacs.d/HualetEmacs/Site-Lisp/Configure/")                              
 '(my-screenshots-storage-directory "~/Pictures/Screenshots/") ;屏幕截图目录
 '(my-notes-directory "~/Notes/")                           ;笔记目录
 '(my-project-directory "~/project/")                       ;项目目录
 '(my-test-directory "~/project/TestProject")               ;尝试目录
 '(my-working-directory "~/project/deepin-system-settings") ;当前工作目录

 ;; ERC
 '(erc-server "irc.freenode.net")       ;设置服务器
 '(erc-port 6667)                       ;设置端口
 '(erc-ignore-list '("ams", "trick"))   ;设置白痴列表, 这样就看不到它们的信息
 )

(provide 'HualetCustomize)
