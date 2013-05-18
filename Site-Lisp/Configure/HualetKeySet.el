;;; ### Functin key ###
;;; --- ���ܺ���
(lazy-set-key
 '(
   ;; ("<f1>" . sh-show-help)                       ;elisp help
   ;; ("<f2>" . refresh-file)                       ;�Զ�ˢ���ļ�
   ;; ("<f3>" . visit-tags-table)                   ;����TAGS�ļ� (����TAGS��)
   ;; ("<f4>" . generate-gtags-files)               ;����gtags�����ļ�
   ;;("<f5>" . emacs-exit)                         ;�˳�emacs
   ;; ("<f6>" . lock-screen)                        ;����
   ;; ("<f7>" . one-key-menu-ui)                    ;�û�����˵�
   ("<f8>" . dired-jump)                         ;�ļ�������
   ;; ("<f9>" . list-load-path-shadows)             ;��ʾ�ظ����صĿ�
   ;; ("<f10>" . open-current-log-keyboard-command) ;��������־
   ;; ("<f11>" . fullscreen-toggle)                 ;ȫ���л�
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

;;; ### Window Operation ###
;;; --- ���ڲ���
(lazy-set-key
 '(
   ;; ("C-c v" . split-window-vertically)                ;����ָ��
   ;; ("C-c h" . split-window-horizontally)              ;����ָ��
   ;; ("C-'" . delete-current-buffer-and-window)         ;�رյ�ǰbuffer, ���رմ���
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
   ;; ("%" . match-paren)                     ;���������ϰ� % ʱ, �Զ���ת���뵱ǰ����ƥ�����һ������
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
   ;; ("C->" . remember-init)                 ;�����ʼ����
   ;; ("C-<" . remember-jump)                 ;������ת����
   ;; ("M-s" . lazy-search-menu)              ;��������
   ;; ("M-s-," . point-stack-pop)             ;buffer������ת
   ;; ("M-s-." . point-stack-push)            ;buffer�������
   ;; ("s-{" . current-line-move-to-top)      ;�ƶ���ǰ�е�������һ��
   ))

;;; ### Python ###
;;; --- Python mode
(require 'python)
(lazy-set-key
 '(
   ("C-S-j" . jump-to-import)
   )
 python-mode-map)


(provide 'HualetKeySet)
