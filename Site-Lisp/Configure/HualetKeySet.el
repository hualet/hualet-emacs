;;; ### Functin key ###
;;; --- ���ܺ���
(lazy-set-key
 '(
   ;; ("<f1>" . sh-show-help)                       ;elisp help
   ;; ("<f2>" . refresh-file)                       ;�Զ�ˢ���ļ�
   ;; ("<f3>" . visit-tags-table)                   ;����TAGS�ļ� (����TAGS��)
   ;; ("<f4>" . generate-gtags-files)               ;����gtags�����ļ�
   ;;("<f5>" . emacs-exit)                         ;�˳�emacs
   ("<f6>" . lock-screen)                        ;����
   ;; ("<f7>" . one-key-menu-ui)                    ;�û�����˵�
   ("<f8>" . dired-jump)                         ;�ļ�������
   ;; ("<f9>" . list-load-path-shadows)             ;��ʾ�ظ����صĿ�
   ;; ("<f10>" . open-current-log-keyboard-command) ;��������־
   ("<f11>" . fullscreen-toggle)                 ;ȫ���л�
   ;; ("<f12>" . hibernate-disk)                    ;����
   ;; ("M-1" . strip-blank-lines)                   ;ɾ��ѡ����������п���
   ;; ("M-2" . indent-buffer)                       ;�Զ���ʽ����ǰBuffer
   ;; ("M-3" . delete-trailing-whitespace)          ;ɾ����ĩ�ո�
   ;; ("M-4" . whitespace-cleanup)                  ;����ո�
   ;; ("M-5" . insert-line-number+)                 ;�Զ�����������к�
   ;; ("M-6" . strip-line-number)                   ;ɾ��ѡ��������к�
   ;; ("C-4" . insert-changelog-date)               ;������־ʱ�� (%Y/%m/%d)
   ;; ("C-5" . insert-standard-date)                ;�����׼ʱ�� (%Y-%m-%d %T)
   ;; ("C-&" . switch-to-messages)                  ;��ת�� *Messages* buffer
   ;; ("C-7" . jump-back)                           ;���ز��ҷ��Ŷ���ǰ��λ��
   ;; ("C-8" . find-function-or-variable-at-point)  ;���ҷ��ŵĶ���
   ;; ("M-I" . backward-indent)                     ;����ƶ�4���ַ�
   ))

;;; ### Unset key ###
;;; --- ж�ذ���
(lazy-unset-key                         ;ȫ�ְ�����ж��
 '("C-z" "C-q" "s-W" "s-z" "M-h" "C-\\"))


;;; ### Sdcv ###
;;; --- �Ǽ�����������
(defvar sdcv-key-alist nil
  "The key alist that sdcv.")
(setq sdcv-key-alist
      '(("p" . sdcv-search-pointer)     ;��괦�ĵ���, buffer��ʾ
        ("y" . sdcv-search-pointer+)    ;��괦�ĵ���, tooltip��ʾ
        ("i" . sdcv-search-input)       ;����ĵ���, buffer��ʾ
        (";" . sdcv-search-input+)))    ;����ĵ���, tooltip��ʾ
(lazy-set-key sdcv-key-alist nil "C-z") ;sdcv��ȫ�ְ�����

;;; ### W3m ###
;;; --- ��ҳ�����
(lazy-set-key
 '(
   ("C-z C-z" . w3m)                          ;����W3M
   ("C-z z" . w3m-startup-background)         ;����W3M, ��̨
   ("C-x C-z" . toggle-w3m-with-other-buffer) ;��W3M��buffer���л�
   ("s-W" . one-key-menu-w3m-search)          ;w3m �����˵�
   ))
(lazy-set-key
 '(("1" . emms-play-online)                             ;����������
   ("2" . kill-google-define-windows)                   ;�ر�Google���崰��
   ("3" . google-define)                                ;�������뵥�ʵ�Google����
   ("4" . google-define-pointer)                        ;���ҵ�ǰ��괦��Google����
   ("5" . w3m-open-rcirc-window)                        ;��RCIRC����
   ("6" . w3m-session-save)                             ;���������¼
   ("7" . w3m-session-select)                           ;�����˳�ǰ���������¼
   ("8" . w3m-emacswiki-view-other-version)             ;�鿴��ǰwikiҳ��������汾
   ("9" . w3m-auto-install-elisp)                       ;�Զ���װelisp�ļ�
   ("0" . w3m-gmail-toggle-mark)                        ;�л����ѡ���
   ("(" . w3m-gmail-mark-all)                           ;���ѡ���
   (")" . w3m-gmail-unmark-all)                         ;ȡ�����ѡ���
   ("c" . w3m-delete-buffer-and-select-right)           ;�رյ�ǰ��ǩ��ѡ���ұߵı�ǩ
   ("/" . w3m-next-form)                                ;��һ�����
   ("e" . w3m-scroll-down-or-previous-url)              ;���Ϸ�ҳ
   ("b" . w3m-edit-current-url)                         ;�༭��ǰҳ��
   ("z" . w3m-zoom-in-image)                            ;�Ŵ�ͼƬ
   ("x" . w3m-zoom-out-image)                           ;��СͼƬ
   ("O" . w3m-goto-linknum)                             ;�������ӿ�����ת
   ("f" . w3m-view-this-url)                            ;�ڵ�ǰ��ǩ��
   ("o" . w3m-view-this-url-new-session)                ;�ں�̨��ǩ��
   ("M" . w3m-open-link-in-chromium)                    ;Open link in chromium browser
   ("M-o" . w3m-open-link-file-under-current-directory) ;open link file under current directory
   ("m" . tabbar-forward-tab)                           ;�л����ұߵı�ǩ
   ("n" . tabbar-backward-tab)                          ;�л�����ߵı�ǩ
   ("'" . w3m-open-dead-link-with-external-browser)     ;����������
   ("s-j" . w3m-visual-scroll-up)                       ;���ӻ����Ϲ���
   ("s-k" . w3m-visual-scroll-down)                     ;���ӻ����¹���
   ("b" . w3m-history)                                  ;��ʷ
   ("D" . w3m-dtree)                                    ;��ʾ����Ŀ¼��
   ("B" . w3m-view-previous-page)                       ;����
   ("F" . w3m-view-next-page)                           ;ǰ��
   ("S" . w3m-google-desktop-url-open)                  ;Google���������
   ("L" . w3m-submit-form)                              ;�ύform�е�����
   ("C" . w3m-delete-other-buffers)                     ;�رպ�̨��ǩ
   ("d" . w3m-download-with-wget-current-position)      ;��Wget�첽���ص�ǰ������
   ("Y" . wget-web-page)                                ;��ҳ����
   ("-" . org-w3m-copy-for-org-mode)                    ;ת����ҳ�� `org-mode' �����Ӹ�ʽ
   ("_" . w3m-copy-link-in-region)                      ;����w3m buffer ����������
   ("&" . yaoddmuse-w3m-edit-emacswiki-page)            ;�༭ emacswiki ҳ��
   ("*" . w3m-emacswiki-view-diff)                      ;�鿴��ǰwikiҳ��Ĳ�ͬ
   ("\"" . w3m-emacswiki-recent-changes)                ;������޸�
   ("C-u s" . w3m-db-history)                           ;��ʷ���ݿ�
   ("<up>" . emms-volume-mode-plus)                     ;��������
   ("<down>" . emms-volume-mode-minus)                  ;��������
   ("<left>" . emms-seek-backward)                      ;����
   ("<right>" . emms-seek-forward)                      ;ǰ��
   ("<" . w3m-shift-left)                               ;���������Ļһ����
   (">" . w3m-shift-right)                              ;���ҹ�����Ļһ����
   ("." . go-to-char-forward-word)                      ;������ĳһ���ַ�, �Ե���Ϊ��λǰ��
   ("," . go-to-char-backward-word)                     ;��ǰ����ĳһ���ַ�, �Ե���Ϊ��λ����
   ("M-s" . lazy-search-menu)                           ;��������
   ("M-A" . emms-pause)                                 ;��ͣ
   ("M-j" . scim-handle-event)                          ;����Ϊ���뷨�л���
   ("C-M-7" . w3m-tab-move-left)                        ;�ƶ���ǰ��ǩ�����
   ("C-M-8" . w3m-tab-move-right)                       ;�ƶ���ǰ��ǩ���ұ�
   ("C-S-7" . w3m-delete-left-tabs)                     ;ɾ����ߵı�ǩ
   ("C-S-8" . w3m-delete-right-tabs)                    ;ɾ���ұߵı�ǩ
   )
 w3m-mode-map
 )
(lazy-set-key sdcv-key-alist w3m-mode-map) ;sdcv�ľֲ�������
(lazy-unset-key
 '("s")
 w3m-mode-map)                          ;ж�ذ���
(lazy-set-key
 '(
   ("s" . one-key-menu-w3m-search)      ;w3m �����˵�
   )
 w3m-mode-map)


;;; ### Auto-complete ###
;;; --- �Զ���ȫ
(lazy-unset-key
'("RET" "TAB")
ac-complete-mode-map)
(lazy-set-key
'(
  ("M-h" . ac-complete)                ;��ȫ��ǰѡ�е�
  ("M-H" . ac-expand-common)           ;��ȫ��������
  ("M-U" . ac-stop)                    ;ֹͣ
  ("M-," . ac-next)                    ;��һ��
  ("M-." . ac-previous)                ;��һ��
  )
ac-complete-mode-map
)

;;; ### Tabbar ###
;;; --- ���ǩ���
(lazy-set-key
 '(
   ("M-7" . tabbar-backward-tab)              ;�ƶ�����һ����ǩ
   ("M-8" . tabbar-forward-tab)               ;�ƶ���ǰһ����ǩ
   ("M-9" . tabbar-backward-group)            ;�ƶ�����һ����ǩ��
   ("M-0" . tabbar-forward-group)             ;�ƶ���ǰһ����ǩ��
   ("M-&" . tabbar-backward-tab-other-window) ;��ǰ�ƶ��������ڵı�ǩ
   ("M-*" . tabbar-forward-tab-other-window)  ;����ƶ��������ڵı�ǩ
   ("M-s-7" . tabbar-select-beg-tab)          ;�ƶ�������ߵı�ǩ
   ("M-s-8" . tabbar-select-end-tab)          ;�ƶ������ұߵı�ǩ
   ))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Recentf Mode ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (lazy-set-key '(
;;                 ("C-x C-r" . recentf-open-files)
;;                 ("C-S-t" . recentf-open-most-recent-file-cycle)))


;;; ### Paredit ###
;;; --- �ṹ�����
(lazy-unset-key
 '("M-J" "M-r" "M-s" "M-;" "C-M-f" "C-M-b")
 paredit-mode-map)                      ;ж�ذ���
(lazy-set-key
 '(
   ;; ���Ų���
   ("(" . paredit-open-parenthesis)             ;���� (
   (")" . paredit-close-parenthesis)            ;���� )
   ("[" . paredit-open-bracket)                 ;���� [
   ("]" . paredit-close-bracket)                ;���� ]
   ("{" . paredit-open-curly)                   ;���� {
   ("}" . paredit-close-curly)                  ;���� }
   ("C-s-," . paredit-open-angled)              ;���� <
   ("C-s-." . paredit-close-angled)             ;���� >
   ("\"" . paredit-doublequote)                 ;���� "
   ("\\" . paredit-backslash)                   ;���� \
   ;; ɾ��
   ("M-o" . paredit-backward-delete)            ;���ɾ��
   ("C-d" . paredit-forward-delete)             ;��ǰɾ��
   ("C-k" . paredit-kill)                       ;ɾ��
   ("C-M-m" . paredit-forward-kill-word)        ;��ǰ����ɾ��
   ("C-M-n" . paredit-backward-kill-word)       ;��󰴴�ɾ��
   ;; �ƶ�
   ("C-M-S-m" . paredit-forward)                ;��ǰ�ƶ�
   ("C-M-S-n" . paredit-backward)               ;����ƶ�
   ;; ��Χ
   ("M-\"" . paredit-meta-doublequote)          ;�� " " ��Χ����, �������ַ���
   ("M-(" . paredit-wrap-sexp)                  ;�� ( ) ��Χ��ǰ����
   ("M-[" . paredit-wrap-square)                ;�� [ ] ��Χ����
   ("M-{" . paredit-wrap-curly)                 ;�� { } ��Χ����
   ("C-(" . paredit-wrap-angled)                ;�� < > ��Χ����
   ("M-)" . paredit-splice-sexp+)               ;ȥ����Χ���������, ��ɾ������
   ;; ��������������
   ("M-:" . paredit-close-round-and-newline+)   ;���� ( ) �� " " ������
   ("M-?" . paredit-forward-sexp-and-newline)   ;�ƶ�����һ�����ʽ, ������
   ("M-}" . paredit-close-curly-and-newline)    ;���� { } ������
   ("M-]" . paredit-close-square-and-newline)   ;���� [ ] ������
   ("C-)" . paredit-close-angled-and-newline)   ;���� < > ������
   ;; ע��
   ("C-M-:" . paredit-comment-list-and-newline) ;ע�͵�ǰLIST������
   ;; ����
   ("C-j" . paredit-newline)            ;���ܻ��в�����
   ("M-q" . paredit-reindent-defun)     ;���¸�ʽ������
   ("M-s-r" . paredit-raise-sexp)       ;��ȡ���ʽ, ��ɾ��ͬһ�ȼ����������ʽ
   ("M-s-b" . paredit-convolute-sexp)   ;Ƕ�ױ��ʽ
   ;; ("M-s-'" . one-key-menu-paredit)     ;Paredit �˵�
   )
 paredit-mode-map
 )


;;; ### Window Operation ###
;;; --- ���ڲ���
(lazy-set-key
 '(
   ("C-c v" . split-window-vertically)                ;����ָ��
   ("C-c h" . split-window-horizontally)              ;����ָ��
   ("C-'" . delete-current-buffer-and-window)         ;�رյ�ǰbuffer, ���رմ���
   ;; ("C-\"" . delete-current-buffer-window)            ;ɾ����ǰbuffer�Ĵ���
   ("C-;" . kill-this-buffer)                         ;�رյ�ǰbuffer
   ;; ("C-M-;" . kill-other-window-buffer)               ;�ر��������ڵ�buffer
   ("C-x ;" . delete-other-windows)                   ;�ر���������
   ;; ("C-c V" . delete-other-windows-vertically+)       ;�ر����µ���������
   ;; ("C-c H" . delete-other-windows-horizontally+)     ;�ر����ҵ���������
   ;; ("s-Q" . kill-current-mode-buffers)                ;�ر��뵱ǰģʽ��ͬ������buffers
   ;; ("s-q" . kill-current-mode-buffers-except-current) ;�رյ�ǰģʽ����buffers, ���˵�ǰbuffer
   ;; ("s-;" . one-key-menu-window-navigation)           ;���ٴ��ڵ���
   ;; ("s-a" . window-number-jump)                       ;���ڿ���ѡ��
   ;; ("C-s-7" . select-next-window)                     ;ѡ����һ������
   ;; ("C-s-8" . select-prev-window)                     ;ѡ����һ������
   ("M-s-o" . toggle-one-window)                      ;�л�һ������
   ))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Multi-Cursor ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(global-set-key (kbd "M-R") 'mc/mark-all-like-this-dwim)

;;; ### Multi-Term ###
;;; --- ���ǩʽ��shell
(lazy-set-key
 '(
   ("s-e" . multi-term-next)                 ;��һ���ն�
   ("s-w" . multi-term-prev)                 ;��һ���ն�
   ("s-n" . multi-term)                      ;�½�һ���ն�
   ("s-x s-x" . multi-term-dedicated-toggle) ;�л�רע�ն�
   ("s-x s-z" . multi-term-dedicated-select) ;ѡ��רע�ն�
   ))

;;; ### Rect ###
;;; --- ���β���
(lazy-set-key
 '(
   ("s-M" . rm-set-mark)                         ;���α��
   ("s-X" . rm-exchange-point-and-mark)          ;���ζԽǽ���
   ("s-D" . rm-kill-region)                      ;����ɾ��
   ("s-S" . rm-kill-ring-save)                   ;���α���
   ("s-Y" . yank-rectangle)                      ;ճ������
   ("s-O" . open-rectangle)                      ;�ÿհ�������, �������ƶ��ı�
   ("s-C" . clear-rectangle)                     ;��վ���
   ("s-T" . string-rectangle)                    ;���ַ���������ε�ÿһ��
   ("s-I" . string-insert-rectangle)             ;�����ַ����ھ��ε�ÿһ��
   ("s-F" . delete-whitespace-rectangle)         ;ɾ�������пո�
   ("s-:" . mark-rectangle-to-end)               ;��Ǿ��ε���ĩ
   ("s-H" . execute-command-with-region-replace) ;��ѡ���������ִ������滻
   ("s-P" . execute-command-with-region-kill)    ;��ѡ���������ִ�����ɾ��
   ("s-\"" . copy-rectangle-to-register)         ;�������ε��Ĵ���
   ))
;;; ### Dired ###
;;; --- �ļ������
(lazy-set-key
 '(
 ;;   ("h" . dired-next-subdir)                   ;��һ����Ŀ¼
;;    ("l" . dired-prev-subdir)                   ;��һ����Ŀ¼
;;    ("j" . dired-next-file-line)                ;��һ��
;;    ("k" . dired-previous-file-line)            ;��һ��
;;    ("n" . dired-next-dirline)                  ;��һ��Ŀ¼
;;    ("p" . dired-prev-dirline)                  ;��һ��Ŀ¼
;;    ("f" . dired-find-file+)                    ;�򿪵�ǰ�ļ���Ŀ¼
;;    ("C-m" . dired-find-file+)                  ;�򿪵�ǰ�ļ���Ŀ¼
;;    ("P" . dired-do-kill-lines)                 ;ɾ����ǵ���
;;    ("4" . dired-serial-rename)                 ;����������
;;    ("5" . dired-translate-to-html)             ;ת����HTML��ʽ
;;    ("7" . dired-move-to-last-file)             ;�ƶ������һ���ļ�
;;    ("8" . dired-move-to-first-file)            ;�ƶ�����һ���ļ�
;;    ("9" . auto-install-from-dired)             ;�Զ���EmacsWiki��װ��ǵ��ļ�
   ("E" . dired-touch-now)                     ;Touch����
   ("z" . dired-do-moccur)                     ;����dired
;;    ("I" . image-dired)                         ;�����ģʽ
   ("w" . wdired-change-to-wdired-mode)        ;�л���dired�༭ģʽ
;;    ("W" . dired-x-find-file)                   ;�����ļ�
;;    ("\"" . find-lisp-find-dired-pwd)           ;�����ض���lisp�ļ�
;;    ("J" . dired-goto-file)                     ;����ĳ���ļ�
   ("K" . dired-open-file)                     ;�����ļ���׺���ܴ��ļ�
;;    ("X" . traverse-cp-or-mv-extfiles-in-dir)   ;�������ƶ�Ŀ¼��ָ����չ�����ļ�
;;    ("V" . traverse-dired-browse-archive)       ;���ѹ���ļ�
;;    (";" . dired-view-minor-mode-toggle)        ;��ĸ���뵼��ģʽ
;;    ("," . dired-diff)                          ;�Ƚ��ļ�
;;    ("'" . dired-up-directory-single)           ;������һ��Ŀ¼
;;    ("C-s" . dired-isearch-forward)             ;�������
;;    ("C-r" . dired-isearch-backward)            ;��ǰ����
;;    ("ESC C-s" . dired-isearch-forward-regexp)  ;��ǰ������ʽ����
;;    ("ESC C-r" . dired-isearch-backward-regexp) ;���������ʽ����
;;    ("SPC" . scroll-up)                         ;���·�ҳ
;;    ("e" . scroll-down)                         ;���Ϸ�ҳ
;;    ("c" . kill-this-buffer)                    ;�رյ�ǰ��ǩ
;;    ("/" . copy-buffer-file-name-as-kill)       ;��ʾ·��������
;;    ("[" . dired-rename-with-copy)              ;����������
;;    ("]" . dired-nautilus)                      ;�� Nautils ���ص�ǰĿ¼
;;    ("{" . dired-gnome-open-file)               ;��GNOME��ʽ���ļ�
;;    ("s" . one-key-menu-dired-sort)             ;����
;;    ("?" . dired-get-size)                      ;�õ��ļ��Ĵ�С
;;    ("M-o" . dired-toggle-omit)                 ;�л�����״̬
   )
 dired-mode-map
 )
;; ;;; ### Wdired ###
;; ;;; --- Dired �ı༭ģʽ
;; (lazy-set-key
;;  '(
;;    ("C-c C-e" . wdired-format-filename) ;��ʽ���ļ���
;;    )
;;  wdired-mode-map
;;  )

;; ###Font###
(lazy-set-key
 '(
   ("s--" . text-scale-decrease)        ;��С�����С
   ("s-=" . text-scale-increase)        ;���������С
   ("M--" . text-scale-decrease-global) ;���������С, ȫ��
   ("M-+" . text-scale-increase-global) ;���������С, ȫ��
   ("M-=" . text-scale-default-global)  ;�ָ������С, ȫ��
   ))

;;; ### Buffer Edit ###
;;; --- ����༭
(lazy-set-key
 '(
   ("C-x f" . helm-find-files)		
   ;; ("M-N" . kill-syntax-backward+)            ;�������﷨ɾ��
   ;; ("M-M" . kill-syntax-forward+)             ;��ǰ�����﷨ɾ��
   ("C-:" . comment-or-uncomment-region+)     ;ע�͵�ǰ��
   ;; ("C-s-n" . comment-dwim-next-line)         ;�ƶ�����һ�в�ע��
   ;; ("C-s-p" . comment-dwim-prev-line)         ;�ƶ�����һ�в�ע��
   ;; ("M-s-n" . comment-part-move-down)         ;�����ƶ�ע��
   ;; ("M-s-p" . comment-part-move-up)           ;�����ƶ�ע��
   ;; ("C-x C-x" . exchange-point-and-mark)      ;������ǰ��ͱ�ǵ�
   ;; ("M-o" . backward-delete-char-untabify)    ;��ǰɾ���ַ�
   ("M-z" . zap-to-char)                      ;��ǰɾ������һ��������ַ�
   ("C-M-z" . zap-back-to-char)               ;���ɾ������һ��������ַ�
   ("C-o" . open-newline-above)            ;������һ���½�һ��
   ("C-l" . open-newline-below)            ;������һ���½�һ��
   ;; ("C-/" . undo)                             ;����
   ;; ("C-?" . redo)                             ;����
   ;; ("s-k" . kill-and-join-forward)            ;����������֮��ɾ��
   ("C-x u" . mark-line)                      ;ѡ������
   ;; ("C-M-S-h" . mark-paragraph)               ;ѡ�ж���
   ("C-S-o" . duplicate-line-or-region-above) ;���ϸ��Ƶ�ǰ�л�����
   ("C-S-l" . duplicate-line-or-region-below) ;���¸��Ƶ�ǰ�л�����
   ;; ("C-S-s-o" . duplicate-line-above-comment) ;���Ƶ�ǰ�е���һ��, ��ע�͵�ǰ��
   ;; ("C-S-s-l" . duplicate-line-below-comment) ;���Ƶ�ǰ�е���һ��, ��ע�͵�ǰ��
   ;; ("M-SPC" . just-one-space)                 ;ֻ��һ���ո��ڹ�괦
   ))

;;; ### Buffer Move ###
;;; --- �����ƶ�
(lazy-set-key
 '(
   ;; ("s-N" . move-text-down)                ;�ѹ�����ڵ���������(����)����һ��
   ;; ("s-P" . move-text-up)                  ;�ѹ�����ڵ���������(����)����һ��
   ;; ("s-J" . scroll-up-one-line)            ;���Ϲ���һ��
   ;; ("s-K" . scroll-down-one-line)          ;���¹���һ��
   ;; ("M-J" . scroll-other-window)           ;���¹�����������
   ;; ("M-K" . scroll-other-window-down)      ;���Ϲ�����������
   ;; ("M-<" . scroll-other-window-up-line)   ;���¹�����������һ��
   ;; ("M->" . scroll-other-window-down-line) ;���Ϲ�����������һ��
   ("C-z k" . beginning-of-buffer)         ;���濪ʼ
   ("C-z j" . end-of-buffer)               ;�����β
   ;; ("M-p" . go-to-next-pair-right)         ;��( ),' ', " ", [ ], { }������ƥ����ŵ��ұ�
   ;; ("M-n" . go-to-next-pair-left)          ;��( ), ' ', " ", [ ], { }������ƥ����ŵ����
   ("%" . match-paren)                     ;���������ϰ� % ʱ, �Զ���ת���뵱ǰ����ƥ�����һ������
   ;; ("s-g" . goto-percent)                  ;��ת����ǰBuffer���ı��ٷֱ�, ��λΪ�ַ�
   ;; ("M-g" . goto-line)                     ;��ָ����
   ;; ("M-G" . goto-column)                   ;��ָ����
   ;; ("C-M-f" . forward-paragraph)           ;��һ������
   ;; ("C-M-b" . backward-paragraph)          ;��һ������
   ;; ("C-M-y" . backward-up-list)            ;�������� LIST
   ;; ("C-M-o" . up-list)                     ;�������� LIST
   ;; ("C-M-u" . backward-down-list)          ;�������� LIST
   ;; ("C-M-i" . down-list)                   ;�������� LIST
   ;; ("C-M-a" . beginning-of-defun)          ;������ͷ
   ;; ("C-M-e" . end-of-defun)                ;����ĩβ
   ;; ("C-c j" . go-to-char-forward)          ;������ĸ����, ��ǰ
   ;; ("C-c k" . go-to-char-backward)         ;������ĸ����, ���
   ("C->" . remember-init)                 ;�����ʼ����
   ("C-<" . remember-jump)                 ;������ת����
   ("M-s" . lazy-search-menu)              ;��������
   ("M-s-," . point-stack-pop)             ;buffer������ת
   ("M-s-." . point-stack-push)            ;buffer�������
   ;; ("s-{" . current-line-move-to-top)      ;�ƶ���ǰ�е�������һ��
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
;;; --- ���ߺ���
(lazy-set-key
 '(
   ;; ("C-x C-c" . checkdoc)                   ;����ĵ�
   ;; ("C-c ns" . notes-search)                ;��ǩ����
   ;; ("C-c nn" . notes-new)                   ;�½���ǩ
   ("s-c o" . one-key-menu-directory)       ;Ŀ¼�򿪲˵�
   ("M-C" . one-key-menu-cycle-buffer)      ;�ض�ģʽ�л�
   ;; ("s-*" . one-key-menu-backup-file)       ;��������
   ;; ("s-," . bury-buffer)                    ;���ص�ǰbuffer
   ;; ("s-." . unbury-buffer)                  ;�����ص�ǰbuffer
   ;; ("s-&" . killall)                        ;ɱ������
   ;; ("C-x w" . count-words)                  ;���㵥�ʵ�����
   ;; ("C-z l" . linum-mode)                   ;�к�ģʽ�л�
   ;; ("s-Z" . dot-emacs)                      ;��dot-emacs�ļ�
   ;; ("C-x f" . find-file-at-point)           ;�ļ���ת
   ("s-f" . find-file-root)                 ;��root���ļ�
   ("s-r" . find-file-smb)                  ;����samba
   ;; ("<print>" . save-screenshots)           ;����
   ;; ("<M-s-return>" . toggle-debug-on-error) ;�л�����ģʽ
   ;; ("s-R" . re-builder)                     ;���ӻ�����������ʽ
   ;; ;; ("s-1" . elisp-depend-insert-require)    ;���� (require '...) ���
   ;; ("s-1" . sort-lines)                  ;����
   ;; ("s-2" . elisp-depend-insert-comment) ;���� `...' ע�ʹ���
   ;; ("s-3" . hanconvert-region)           ;ת�������������
   ;; ("s-4" . uniquify-all-lines-buffer)   ;ɾ���ظ�����
   ;; ("s-[" . eval-expression)             ;ִ�б��ʽ
   ;; ("s-\\" . artist-mode)                ;����ģʽ
   ;; ("M-s-u" . ediff-buffers)             ;ediff
   ;; ("C-s-q" . quoted-insert)             ;��ȡϵһ�������ַ�������
   ))


(provide 'HualetKeySet)
