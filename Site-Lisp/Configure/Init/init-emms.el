(require 'emms-setup)
(emms-devel)
(emms-default-players)

;; emms插件
(require 'emms-i18n)
(require 'emms-last-played)
(require 'emms-volume)                  ;音量控制
(require 'emms-history)                 ;播放列表记录

(setq emms-source-file-default-directory my-music-directory)
(setq emms-directory "~/.emacs.d/HualetEmacs/Configure-Files/Emms/")                    ;设置EMMS的目录
(setq emms-history-file "~/.emacs.d/HualetEmacs/Configure-Files/Emms/history")          ;播放列表历史记录
(setq emms-cache-file "~/.emacs.d/HualetEmacs/Configure-Files/Emms/cache")              ;缓存文件
(setq emms-stream-bookmarks-file "~/.emacs.d/HualetEmacs/Configure-Files/Emms/streams") ;网络电台保存文件
(setq emms-score-file "~/.emacs.d/HualetEmacs/Configure-Files/Emms/scores")             ;分数文件
(setq emms-source-playlist-default-format "native")
(setq emms-info-asynchronously nil)
(setq emms-playlist-buffer-name "*Musics*")

(emms-mode-line-disable)                           ;不在mode-line显示信息
(add-hook 'emms-player-finished-hook 'emms-random) ;播放完自动随机下一曲
(add-to-list 'emms-track-initialize-functions 'emms-info-initialize-track) ;初始化音轨信息
(setq emms-source-file-directory-tree-function 'emms-source-file-directory-tree-find) ;更加快速的查找（依赖find命令）
(setq emms-track-description-function 'hualet-emms-info-track-description) ;播放列表显示

(provide 'init-emms)
