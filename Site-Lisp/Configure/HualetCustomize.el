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
     "#haskell"
     "#python"
     "#ubuntu"
     "#django"
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
 '(my-home-directory "~/")                                              ;HOME目录
 '(my-default-download-directory "~/Downloads/")                     ;默认下载目录
 '(my-resource-backup-directory "~/Backup/")                        ;资料备份目录
 '(my-book-directory "~/Book/")                                     ;图书目录
 '(my-reading-directory "~/Book/Reading/")                          ;看书目录
 '(my-picture-directory "~/Pictures/")                               ;图片目录
 '(my-emacs-package-directory "~/.emacs.d/HualetEmacs/Site-Lisp/Packages/")                              
 '(my-emacs-configure-directory "~/.emacs.d/HualetEmacs/Site-Lisp/Configure/")                              
 '(my-screenshots-storage-directory "~/Pictures/Screenshots/")       ;屏幕截图目录
 '(my-notes-directory "~/Notes/")                             ;笔记目录
 '(my-project-directory "~/project/")                             ;项目目录


 ;; ERC
 '(erc-server "irc.freenode.net")       ;设置服务器
 '(erc-port 6667)                       ;设置端口
 `(erc-ignore-list '("ams", "trick"))   ;设置白痴列表, 这样就看不到它们的信息
 ;; Google Desktop Search
 '(google-desktop-search-url "http://127.0.0.1:38923/?hl=zh_CN&s=vhITkQ_HHma9o9JG6cj-xJjhra0") ;Google桌面搜索的唯一URL, 从你的外部浏览器的地址栏复制
 ;; Gmail
 '(w3m-gmail-login-string "http://mail.google.com/mail/h/h4339zs3i3b6/?zy=n&f=1") ;gmail 登录字符串
 )

(provide 'HualetCustomize)
