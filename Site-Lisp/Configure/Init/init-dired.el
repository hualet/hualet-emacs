;;; init-dired.el --- Dired configuration

;; Filename: init-dired.el
;; Description: Dired configuration
;; Author: Andy Stewart lazycat.manatee@gmail.com
;; Maintainer: Andy Stewart lazycat.manatee@gmail.com
;; Copyright (C) 2008, 2009, Andy Stewart, all rights reserved.
;; Created: 2008-10-20 09:38:03
;; Version: 0.1
;; Last-Updated: 2008-10-20 09:38:09
;;           By: Andy Stewart
;; URL:
;; Keywords: dired
;; Compatibility: GNU Emacs 23.0.60.1
;;
;; Features that might be required by this library:
;;
;;
;;

;;; This file is NOT part of GNU Emacs

;;; License
;;
;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 51 Franklin Street, Fifth
;; Floor, Boston, MA 02110-1301, USA.

;;; Commentary:
;;
;; Dired configuration
;;

;;; Installation:
;;
;; Put init-dired.el to your load-path.
;; The load-path is usually ~/elisp/.
;; It's set in your ~/.emacs like this:
;; (add-to-list 'load-path (expand-file-name "~/elisp"))
;;
;; And the following to your ~/.emacs startup file.
;;
;; (require 'init-dired)
;;
;; No need more.

;;; Change log:
;;
;; 2008/10/20
;;      First released.
;;

;;; Acknowledgements:
;;
;;
;;

;;; TODO
;;
;;
;;

;;; Require


;;; Code:
(require 'dired-x)

(setq dired-recursive-copies t)                        ;可以递归的进行拷贝
(setq dired-recursive-deletes t)                       ;可以递归的删除目录
(setq dired-recursive-copies 'always)                  ;拷贝东西时不提示
(setq dired-details-hidden-string "[ ... ] ")          ;设置隐藏dired里面详细信息的字符串
(setq dired-listing-switches "-aluh")                  ;传给 ls 的参数
(setq directory-free-space-args "-Pkh")                ;目录空间选项
(setq dired-omit-size-limit nil)                       ;dired忽略的上限
(setq dired-dwim-target t)                             ;Dired试着猜处默认的目标目录
(setq dired-guess-shell-alist-user                     ;设置文件默认打开的模式
      '(
        ;; 图书
        (list "\\.chm$" '(concat
                          "firefox chm:"            ;执行特定的命令
                          (replace-regexp-in-string ;替换空格为%20
                           " " "%20" (w3m-expand-file-name-as-url (dired-get-filename))) ;用URL的模式解析文件名
                          " -q"))
        ;; 多媒体
        ;; (list (format "\\(%s\\)$" (emms-player-get emms-player-mplayer 'regex)) "mplayer")
        (list "\\.\\(jpe?g\\|png\\)$" "eog" " -q")
        ;; 网页
        (list "\\.html?$" "chrome")
        ;; 压缩包
))

(provide 'init-dired)

;;; init-dired.el ends here
