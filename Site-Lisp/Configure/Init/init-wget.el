(require 'wget)
(require 'w3m-wget)

;; (autoload 'wget "wget" "wget interface for Emacs." t)
;; (autoload 'wget-web-page "wget" "wget interface to download whole web page." t)

(setq wget-basic-options '("-v"))                                 ;wget1.7版本以下版本设置
(setq wget-basic-options (cons "-equiet=off" wget-basic-options)) ;防止wget下载失败
(setq wget-basic-options (cons "-P." wget-basic-options))         ;设置目录设置
(setq wget-download-directory my-default-download-directory)      ;wget的下载目录
(setq wget-default-options '("-c"                                 ;断点续传
                             "-nv"                                ;不显示详细信息
                             "--passive-ftp"                      ;被动ftp传输
                             ))

(provide 'init-wget)
