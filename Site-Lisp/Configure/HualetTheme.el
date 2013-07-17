;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Emacs �������� ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; �û��Զ������
(custom-set-variables
 ;; Term
 '(term-default-bg-color "#000000")     ;termĬ�ϱ���ɫ
 '(term-default-fg-color "#dddd00")     ;termĬ��ǰ��ɫ
 ;; Imaxima
 '(imaxima-bg-color "black")            ;����
 '(imaxima-fg-color "DarkGreen")        ;ǰ��
 '(imaxima-equation-color "Green3")     ;���ʽ
 '(imaxima-label-color "slategrey")     ;��ǩ
 '(imaxima-fnt-size "Large")            ;�����С
 '(imaxima-max-scale 0.85)              ;���ʽ������
 '(imaxima-pt-size 12)                  ;���С
 ;; �������Žṹ
 '(hl-paren-colors (quote (
                           "Cyan"       ;һ����ɫ
                           "Gold"       ;������ɫ
                           "Red"        ;������ɫ
                           )))
 ;; Smiley
 '(smiley-style (quote medium))         ;Ц���ķ��, �е�, 10����ɫ
 )

;; �û��Զ������
(custom-set-faces
 ;; Default
 '(default
    ((t
      (:background "black"               ;ǰ��
                   :foreground "#137D11" ;����
                   ))))
 ;; Header line
 '(header-line                          ;������
   ((t (:background "Black"
                    :foreground "Green"))))
 ;; Cursor
 '(cursor                               ;���
   ((t (:background "red"))))
 ;; Newsticker
 '(newsticker-date-face                 ;ʱ��
   ((t (:foreground "red"
                    :slant italic
                    :height 0.8
                    ))))
 '(newsticker-default-face              ;Ĭ��
   ((((class color) (background dark))
     (:inherit default
               ))))
 '(newsticker-enclosure-face            ;����
   ((t (:background "orange"
                    :weight bold
                    ))))
 '(newsticker-extra-face                ;����
   ((t (:foreground "gray50"
                    :slant italic
                    :height 0.9
                    ))))
 '(newsticker-feed-face                 ;����
   ((t (:foreground "Green"
                    :weight bold
                    :height 1.2
                    ))))
 '(newsticker-immortal-item-face        ;���õ���Ŀ
   ((t (:foreground "green"
                    :slant italic
                    :weight bold
                    ))))
 '(newsticker-new-item-face             ;����Ŀ
   ((t (:foreground "Gold"
                    :weight bold
                    ))))
 '(newsticker-obsolete-item-face        ;�¾ɵ���Ŀ
   ((t (:strike-through t
                        :weight bold
                        ))))
 '(newsticker-old-item-face             ;����Ŀ
   ((t (:foreground "purple"
                    :weight bold
                    ))))
 '(newsticker-statistics-face           ;ͳ��
   ((t (:foreground "red"
                    :slant italic
                    :height 0.8
                    ))))
 '(newsticker-treeview-face             ;�����
   ((t (:foreground "Green4"
                    :weight normal
                    ))))
 '(newsticker-treeview-new-face         ;����Ŀ
   ((t (:inherit newsticker-treeview-face
                 :foreground "DodgerBlue"
                 :weight bold
                 ))))
 '(newsticker-treeview-old-face         ;����Ŀ
   ((((class color) (background dark))
     (:inherit newsticker-treeview-face
               :foreground "purple"))))
 '(newsticker-treeview-selection-face   ;ѡ��
   ((((class color) (background dark))
     (:background "DarkRed"
                  :foreground "White"))))
 ;; Org-mode
 '(org-todo                             ;TODO
   ((t (:foreground "Red" :weight bold))))
 '(org-date                             ;����
   ((((class color) (background dark))
     (
      :foreground "ivory4"
                  :underline t))))
 '(org-special-keyword                  ;�ؼ���
   ((((class color) (min-colors 16) (background dark))
     (:foreground "rosybrown1"))))
 '(org-level-3                          ;������
   ((t (
        :inherit outline-3
                 :foreground "DeepSkyBlue"))))
 '(org-level-5                          ;���弶
   ((t (
        :inherit outline-5
                 :foreground "VioletRed3"))))
 '(org-level-6                          ;������
   ((t (
        :inherit outline-6
                 :foreground "violet"))))
 '(org-level-7                          ;���߼�
   ((t (
        :inherit outline-7
                 :foreground "khaki3"))))
 '(org-level-8                          ;�ڰ˼�
   ((t (
        :inherit outline-8
                 :foreground "DarkSeaGreen"))))
 '(org-hide                             ;�����Ǻ�
   ((((background dark))
     (:foreground "black"))))
 '(org-ellipsis                         ;ʡ�Ժ�
   ((((class color) (background dark))
     (
      :background "black"
                  :foreground "Cyan"
                  :strike-through nil
                  ))))
 '(org-link                             ;����
   ((((class color) (background dark))
     (:foreground "Cyan"))))
 ;; Minibuffer
 '(minibuffer-prompt                    ;��ʾ
   ((((background dark))
     (:foreground "green"))))
 ;; Isearch
 '(isearch                              ;�����ؼ���
   ((((class color) (min-colors 88) (background dark))
     (
      :background "brown"
                  :foreground "white"))))
 '(isearch-fail                         ;����ʧ��
   ((((class color) (min-colors 88) (background dark))
     (:background "red4"
                  :foreground "white"))))
 ;; Flymake.
 '(flymake-errline                      ;������
   ((t (:background "black" :underline "red"))))
 '(flymake-infoline                     ;��Ϣ��
   ((t (:background "black" :underline "yellow" :slant italic))))
 '(flymake-warnline                     ;������
   ((((class color)) (:background "Gold3" :foreground "Black"))))
 ;; Dired
 '(dired-directory                      ;Ŀ¼
   ((t (:inherit font-lock-function-name-face
                 :foreground "DodgerBlue"))))
 '(dired-ignored                        ;�����ļ�
   ((t (:inherit shadow
                 :foreground "grey50"))))
 '(dired-header                         ;��ǰ·��
   ((t (:inherit font-lock-type-face
                 :foreground "gold"))))
 '(dired-symlink                        ;������
   ((t (:inherit font-lock-keyword-face
                 :foreground "OrangeRed3"))))
 '(diredp-date-time                     ;�޸�ʱ��
   ((t (:foreground "Grey60"))))
 '(diredp-deletion                      ;ɾ�����
   ((t (:background "Black" :foreground "red"))))
 '(diredp-deletion-file-name            ;ɾ���ļ�
   ((t (:foreground "red"))))
 '(diredp-dir-heading                   ;Ŀ¼
   ((t (:background "Black" :foreground "Gold"))))
 '(diredp-dir-priv                      ;Ŀ¼����
   ((t (:background "Black" :foreground "DodgerBlue"))))
 '(diredp-display-msg                   ;·��
   ((t (:foreground "Gold"))))
 '(diredp-exec-priv                     ;��ִ������
   ((t (:background "Black" :foreground "DeepSkyBlue3"))))
 '(diredp-file-name                     ;�ļ�
   ((t (:foreground "Green3"))))
 '(diredp-file-suffix                   ;�ļ���չ��
   ((t (:foreground "Green4"))))
 '(diredp-flag-mark                     ;ѡ�б��
   ((t (:background "Black" :foreground "Cyan"))))
 '(diredp-flag-mark-line                ;ѡ���ļ�
   ((t (:background "Black" :foreground "Cyan"))))
 '(diredp-ignored-file-name             ;���Ե��ļ�
   ((t (:foreground "grey40"))))
 '(diredp-no-priv                       ;������
   ((t (:background "Black" :foreground "Green"))))
 '(diredp-other-priv                    ;��������
   ((t (:background "Black" :foreground "khaki"))))
 '(diredp-rare-priv                     ;ϡ�е�����
   ((t (:background "Black" :foreground "Red"))))
 '(diredp-read-priv                     ;��ȡ����
   ((t (:background "Black" :foreground "IndianRed"))))
 '(diredp-write-priv                    ;д������
   ((t (:background "Black" :foreground "Gold3"))))
 ;; Yasnippet
 '(yas/field-highlight-face             ;ģ������
   ((t (
        :background "grey20"
                    :foreground "gold"))))
 '(yas/mirror-highlight-face            ;ͬ��ģ������
   ((t (
        :background "brown"
                    :foreground "white"))))
 ;; Tabbar��ǩ��ɫ
 '(tabbar-default                       ;Ĭ��
   ((((class color grayscale)
      (background dark))
     (
      :inherit variable-pitch
               :height 1.1
               ;; :family "DejaVu Sans YuanTi Mono"
               :family "��Ȫ��ȿ�΢�׺�"
               ))))
 '(tabbar-separator                     ;�ָ���
   ((t (
        :inherit tabbar-default
                 :background "black"
                 :foreground "brown" :height 0.1
                 ))))
 '(tabbar-button-highlight              ;��ť
   ((t (
        :inherit tabbar-default
                 :background "black"
                 :foreground "green"
                 :box (:color "red")
                 ))))
 '(tabbar-button
   ((t (
        :inherit tabbar-default
                 :background "black"
                 :foreground "red"
                 :box (
                       :line-width 1
                                   :color "black"
                                   :style released-button)))))
 '(tabbar-selected                      ;��ǰ����ʹ�õı�ǩ
   ((t (
        :inherit tabbar-default
                 :background "black"
                 :foreground "LawnGreen"
                 :box (
                       :line-width 1
                                   :color "#014500"
                                   :style released-button)))))
 '(tabbar-selected-face
   ((t (
        :inherit tabbar-default-face
                 :background "black"
                 :foreground "grey"
                 :box (
                       :line-width -1
                                   :color "grey"
                                   :style released-button)))))
 '(tabbar-unselected                    ;δʹ�õı�ǩ
   ((t (
        :inherit tabbar-default
                 :background "black"
                 :foreground "#10650F"
                 :box (
                       :line-width 1
                                   :color "Grey10"
                                   :style pressed-button)))))
 '(tabbar-unselected-face
   ((t (
        :inherit tabbar-default-face
                 :background "black"
                 :foreground "white"
                 :box (
                       :line-width -1
                                   :color "black"
                                   :style pressed-button)))))
 ;; Widget
 '(widget-field                         ;��������
   ((((class grayscale color) (background dark))
     (
      :background "grey10"
                  :foreground "DeepSkyBlue"))))
 '(widget-single-line-field             ;������������
   ((((class grayscale color) (background dark))
     (
      :background "grey10"
                  :foreground "DeepSkyBlue"))))
 ;; Comint
 '(comint-highlight-input               ;����������
   ((t (
        :background "black"
                    :foreground "gold3"
                    :weight bold))))
 '(comint-highlight-prompt              ;��������ʾ
   ((((min-colors 88)
      (background dark))
     (
      :foreground "Green"))))
 ;; W3M�������ɫ
 '(w3m-anchor                           ;δ���ʵı���
   ((((class color) (background dark))
     (:foreground "DodgerBlue2"
                  :underline t))))
 '(w3m-arrived-anchor                   ;�ѷ��ʵı���
   ((((class color) (background dark))
     (:foreground "Purple4"
                  :underline t))))
 '(w3m-bold                             ;���������
   ((t (:foreground "Green3"
                    :weight bold))))
 '(w3m-current-anchor                   ;��ǰ����
   ((t (:box (:line-width -1
                          :color "Grey30")
             :underline t))))
 '(w3m-form                             ;���
   ((((class color) (background dark))
     (:foreground "Red"
                  :box nil
                  :underline "DarkRed"
                  ))))
 '(w3m-form-button                      ;���ť
   ((((type x w32 mac) (class color))
     (:background "black"
                  :foreground "LawnGreen"
                  :box (:line-width -1
                                    :color "#014500"
                                    :style released-button)))))
 '(w3m-form-button-mouse                ;���ť��꾭��
   ((((type x w32 mac) (class color))
     (:background "Black"
                  :foreground "Red"
                  :box (:line-width -1
                                    :color "Grey30"
                                    :style released-button)))))
 '(w3m-form-button-pressed              ;���ť��갴��
   ((((type x w32 mac) (class color))
     (:background "Black"
                  :foreground "DarkRed"
                  :box (:line-width -1
                                    :color "Grey60"
                                    :style pressed-button)))))
 '(w3m-form-face                        ;���������
   ((((class color) (background dark))
     (:foreground "khaki2"
                  :underline "brown"
                  ))) t)
 '(w3m-header-line-location-content     ;��ַ����
   ((((class color) (background dark))
     (:background "black"
                  :foreground "Green"))))
 '(w3m-header-line-location-title       ;��ַ����
   ((((class color) (background dark))
     (:background "black"
                  :foreground "brown"))))
 '(w3m-history-current-url              ;��ǰ��ʷ����
   ((t (:background "black"
                    :foreground "DodgerBlue"))))
 '(w3m-image                            ;ͼ��
   ((((class color) (background dark))
     (:background "Black"
                  :foreground "DarkRed"))))
 '(w3m-image-anchor                     ;ͼ��ê��
   ((((class color) (background dark))
     (:background "Black"))))
 '(w3m-session-select                   ;����ѡ��
   ((((class color) (background dark))
     (:foreground "grey50"))))
 '(w3m-tab-background                   ;��ǩ����
   ((((type x w32 mac) (class color))
     (:background "black"
                  :foreground "black"))))
 '(w3m-tab-selected-background          ;��ǩѡ�񱳾�
   ((((type x w32 mac) (class color))
     (:background "black"
                  :foreground "black"))))
 '(w3m-tab-mouse                        ;�������ǩ
   ((((type x w32 mac) (class color))
     (:background "DarkRed"
                  :foreground "white"
                  :box (:line-width -1
                                    :color "Red"
                                    :style released-button)))))
 '(w3m-tab-selected                     ;ѡ���������ı�ǩ
   ((((type x w32 mac) (class color))
     (:background "black"
                  :foreground "LawnGreen"
                  :box (:line-width -1
                                    :color "#014500"
                                    :style released-button)))))
 '(w3m-tab-selected-retrieving          ;ѡ��������ı�ǩ
   ((((type x w32 mac) (class color))
     (:background "black"
                  :foreground "grey80"
                  :box (:line-width -1
                                    :color "Grey40"
                                    :style released-button)))))
 '(w3m-tab-unselected                   ;δѡ��������ı�ǩ
   ((((type x w32 mac) (class color))
     (:background "black"
                  :foreground "#10650F"
                  :box (:line-width 1
                                    :color "Black"
                                    :style pressed-button)))))
 '(w3m-tab-unselected-retrieving        ;δѡ��������ı�ǩ
   ((((type x w32 mac) (class color))
     (:background "black"
                  :foreground "grey30"
                  :box (:line-width 1
                                    :color "Black"
                                    :style pressed-button)))))
 '(w3m-tab-unselected-unseen            ;δѡ���û��������ı�ǩ
   ((((type x w32 mac) (class color))
     (:background "black"
                  :foreground "DodgerBlue"
                  :box (:line-width 1
                                    :color "black"
                                    :style pressed-button)))))
 '(w3m-link-numbering                   ;��������
   ((((class color) (background dark))
     (:background "Black"
                  :foreground "Grey"))))
 ;; �к�
 '(linum                                ;�к�
   ((t (
        :background "black"
                    :foreground "green3"
                    ))))
 ;; Tooltip
 '(tooltip                              ;Ĭ��
   ((((class color))
     (
      :inherit variable-pitch
               :background "DarkRed"
               :foreground "White"
               ;; :family "DejaVu Sans YuanTi Mono"
               :family "��Ȫ��ȿ�΢�׺�"
               ))))
 ;; Showtip
 '(showtip-face
   ((((class color))
     (:inherit tooltip
               :background "#730D0D"
               :foreground "White"
               :height 1.0
               ;; :family "DejaVu Sans YuanTi Mono"
               :family "��Ȫ��ȿ�΢�׺�"
               ))))
 ;; �﷨����
 '(show-paren-match                     ;����ƥ��
   ((((class color)
      (background dark))
     (
      :background "green"
                  :foreground "black"))))
 '(show-paren-mismatch                  ;����û��ƥ��
   ((((class color))
     (
      :background "red"
                  :foreground "white"))))
 '(font-lock-warning-face               ;����
   ((((class color) (min-colors 88)
      (background dark))
     (
      :foreground "red"
                  :weight bold))))
 '(font-lock-doc-face                   ;�����ĵ�
   ((t (
        :inherit font-lock-string-face
                 :foreground "khaki4"))))
 '(font-lock-builtin-face               ;�ڽ�
   ((((class color) (min-colors 88)
      (background dark))
     (:foreground "RosyBrown4"))))
 '(font-lock-constant-face              ;����
   ((((class color) (min-colors 88)
      (background dark))
     (:foreground "magenta4"))))
 '(font-lock-string-face                ;�ַ�
   ((((class color) (min-colors 88)
      (background dark))
     (:foreground "DarkKhaki"))))
 '(font-lock-comment-face               ;ע��
   ((((class color) (min-colors 88)
      (background dark))
     (:foreground "OrangeRed3"))))
 '(font-lock-keyword-face               ;�ؼ���
   ((((class color) (min-colors 88)
      (background dark))
     (:foreground "#0048FF"
                  :weight bold
                  ))))
 '(font-lock-function-name-face         ;����
   ((((class color) (min-colors 88)
      (background dark))
     (:foreground "gold3"
                  ))))
 '(font-lock-type-face                  ;����
   ((((class color) (min-colors 88)
      (background dark))
     (:foreground "DeepSkyBlue2"))))
 '(font-lock-preprocessor-face          ;Ԥ������
   ((t (
        :inherit font-lock-builtin-face
                 :foreground "Cyan3"
                 :weight bold
                 ))))
 '(font-lock-variable-name-face         ;����
   ((((class color) (min-colors 88)
      (background dark))
     (:foreground "DarkOrchid"))))
 ;; ���� CL ����
 '(highlight-cl                         ;`cl' ����
   ((t (:foreground "#20ABFC"
                    :underline nil))))
 '(highlight-cl-and-other               ;`cl' ������ ���Ƕ�����������
   ((t (:foreground "#20ABFC"
                    :underline nil))))
 '(highlight-cl-macro                   ;`cl' ��
   ((t (:underline nil))))
 ;; Mode-line
 '(mode-line                            ;����ʹ�õı�ǩ����BUFFER
   ((t (
        :foreground "White"               ;ǰ��ɫ
                    :background "DarkRed" ;����ɫ
                    :box (
                          :line-width -1
                                      :style released-button)))))
 '(mode-line-inactive                   ;δʹ�õı�ǩ����BUFFER
   ((default (:inherit mode-line))
    (((class color) (min-colors 88)
      (background dark))
     (
      :background "Black"
                  :foreground "Green4"
                  :box (
                        :line-width -1
                                    :color "#013500"
                                    :style released-button)
                  :weight light))))
 '(mode-line-highlight                  ;����
   ((((class color) (min-colors 88))
     (:box (:line-width 1
                        :color "Green4"
                        :style released-button)))))
 '(region                               ;ѡ���������ɫ
   ((((class color)
      (min-colors 88) (background dark))
     (
      :background "Green3"
                  :foreground "black"))))
 '(which-func                           ;��ǰ����
   ((((class color) (min-colors 88)
      (background dark))
     (:foreground "Yellow"))))
 ;; Xrefactory
 '(custom-group-tag                     ;���ǩ
   ((t (
        :inherit variable-pitch
                 :foreground "DodgerBlue"
                 :underline t
                 :weight bold
                 :height 1.2))))
 '(custom-variable-tag                  ;������ǩ
   ((t (
        :foreground "gold"
                    :underline t
                    :weight bold))))
 '(xref-keyword-face                    ;�ؼ���
   ((t (:foreground "grey"))) t)
 '(xref-list-pilot-face                 ;����
   ((t (:foreground "gold"))) t)
 '(xref-list-symbol-face                ;����
   ((t (:foreground "green"))) t)
 ;; Whitespace
 '(whitespace-highlight                 ;�ո�
   ((((class color)
      (background dark))
     (
      :background "yellow2"
                  :foreground "black"))))
 ;; Highlight
 '(highlight ((((class color)
                (min-colors 88) (background dark))
               (:background "DarkRed"               ;����ɫ
                            :foreground "White")))) ;ǰ��ɫ
 ;; Highlight symbol
 '(highlight-symbol-face
   ((((class color)
      (background dark))
     (
      :background "grey"                ;����ɫ
                  :foreground "white"   ;ǰ��ɫ
                  ))))
 ;; ���ڱ�Ե
 '(fringe ((((class color)
             (background dark))
            (:background "grey10"))))
 ;; Speedbar
 '(speedbar-file-face                   ;�ļ�
   ((((class color)
      (background dark))
     (:foreground "SeaGreen2"))))
 '(speedbar-highlight-face              ;����
   ((((class color)
      (background dark))
     (
      :background "LightGoldenrod"
                  :foreground "black"))))
 '(speedbar-selected-face               ;ѡ��
   ((((class color)
      (background dark))
     (
      :foreground "Cyan"
                  :underline t))))
 '(speedbar-separator-face              ;�ָ���
   ((((class color)
      (background dark))
     (
      :background "DarkRed"
                  :foreground "white" :overline "gray"))))
 ;; Lazy highlight
 '(lazy-highlight
   ((((class color)
      (min-colors 88)
      (background dark))
     (:background "grey20"))))
 ;; Isearch
 '(isearch
   ((((class color)
      (min-colors 88)
      (background dark))
     (:background "khaki" :foreground "black"))))
 ;; Completion dynamic
 '(completion-dynamic-face
   ((((class color)
      (background dark))
     (
      :background "DarkOrange"
                  :foreground "black"))))
 ;; Top-mode
 '(top-mode-mark-face
   (quote isearch))
 ;; Pabbrev
 '(pabbrev-suggestions-face             ;�ؼ��ֲ�ȫ
   ((((class color)
      (background dark))
     (:background "Black"
                  :foreground "khaki1"))))
 '(pabbrev-suggestions-label-face       ;��ǩ
   ((t (:background "Black"
                    :foreground "Grey"
                    :inverse-video nil))))
 ;; Completion ui
 '(completion-tooltip-face
   ((t (:inherit tooltip
                 :background "grey5"
                 :foreground "khaki1"
                 ;; :family "DejaVu Sans YuanTi Mono"
                 :family "��Ȫ��ȿ�΢�׺�"
                 ))))
 ;; modelinepos-column-warning
 '(modelinepos-column-warning           ;�������ƾ���
   ((t (:foreground "Yellow"))))
 ;; Gnus
 '(gnus-header-content                  ;��ͷ����
   ((t (
        :foreground "Green"
                    :slant italic))))
 '(gnus-header-from                     ;��ͷ����
   ((((class color)
      (background dark))
     (:foreground "khaki"))))
 '(gnus-header-name                     ;��ͷ����
   ((((class color)
      (background dark))
     (:foreground "DodgerBlue"))))
 '(gnus-header-subject                  ;��ͷ��Ŀ
   ((((class color)
      (background dark))
     (:foreground "HotPink"))))
 '(gnus-signature                       ;ǩ��
   ((t (
        :foreground "Orange"
                    :slant italic))))
 '(gnus-summary-high-read               ;�Ѷ�, ����Ȥ
   ((t (
        :foreground "Gold2"
                    :weight bold
                    ))))
 '(gnus-summary-normal-read             ;�Ѷ�, ������Ȥ
   ((((class color) (background dark))
     (:foreground "khaki2"
                  ))))
 '(gnus-summary-low-read                ;�Ѷ�, ����Ȥ
   ((t (
        :foreground "Gold4"
                    :slant italic
                    ))))
 '(gnus-summary-high-ancient            ;�ɵ�, ����Ȥ
   ((t (
        :foreground "Grey50"
                    :weight bold
                    ))))
 '(gnus-summary-normal-ancient          ;�ɵ�, ������Ȥ
   ((((class color) (background dark))
     (:foreground "Grey40"
                  ))))
 '(gnus-summary-low-ancient             ;�ɵ�, ����Ȥ
   ((t (
        :foreground "Grey10"
                    :slant italic
                    ))))
 '(gnus-cite-1                          ;����, һ��
   ((((class color) (background dark))
     (:foreground "Grey50"))))
 '(gnus-button                          ;��ť
   ((t (:foreground "khaki3" :weight bold))))
 '(italic                               ;������
   ((t (:underline nil
                   :slant normal))))
 ;; Mail
 '(mm-uu-extract                        ;ժ¼
   ((((class color)
      (background dark))
     (:background "Black"
                  :foreground "Gold3"))))
 '(message-header-to                    ;�ʼ�ͷ �����ͣ�
   ((t (:foreground "DarkRed"
                    :weight bold))))
 '(message-header-subject               ;�ʼ�����
   ((t (:foreground "gold"
                    :weight bold))))
 ;; hideshow
 '(hs-face                              ;�۵���ɫ
   ((t (
        :background "DarkRed"
                    :foreground "grey"
                    :box (:line-width 1 :color "grey50")))))
 '(hs-fringe-face                       ;�۵���Ե��ɫ
   ((t (
        :background "DarkRed"
                    :foreground "grey"
                    :box (:line-width 2 :color "grey75" :style released-button)))))
 ;; Anything
 '(anything-header                      ;����
   ((t (
        :background "Black"
                    :foreground "Gold"
                    :underline t))) t)
 '(anything-isearch-match               ;isearch ƥ��
   ((t (
        :background "White"
                    :foreground "DarkRed"))))
 '(anything-file-name                   ;�ļ���
   ((t (:foreground "Green3"))))
 '(anything-dir-priv                    ;Ŀ¼��
   ((t (:foreground "Grey"))))
 ;; Completions
 '(completions-common-part              ;��ȫ��ͬ����
   ((t (:foreground "Green3"))))
 '(completions-first-difference         ;��ȫ��ͬ����
   ((t (:foreground "Grey60"))))
 ;; Ascii
 '(ascii-ascii-face                     ;ascii�ַ��ı���
   ((((class color)
      (background dark))
     (
      :background "Black"
                  :foreground "Grey"))))
 '(ascii-non-ascii-face                 ;Non-ascii�ַ��ı���
   ((((class color)
      (background dark))
     (
      :background "Black"
                  :foreground "Gold"))))
 ;; Info
 '(info-menu-header                     ;�˵�����
   ((t (
        :inherit variable-pitch
                 :foreground "khaki3"
                 :weight bold
                 ))))
 '(info-title-1                         ;����1
   ((t (
        :inherit info-title-2
                 :foreground "Gold"
                 :height 1.1
                 ))))
 '(info-title-2                         ;����2
   ((t (
        :inherit info-title-3
                 :foreground "red"
                 :height 1.1
                 ))))
 '(info-title-3                         ;����3
   ((t (
        :inherit info-title-4
                 :foreground "DodgerBlue"
                 :height 1.1
                 ))))
 '(info-title-4                         ;����4
   ((t (
        :inherit variable-pitch
                 :foreground "Green"
                 :weight bold
                 ))))
 '(info-elisp-command-ref-item          ;elisp����������Ŀ
   ((t (:background "Black"
                    :foreground "yellow3"))))
 '(info-elisp-function-ref-item         ;elisp����������Ŀ
   ((t (:background "Black"
                    :foreground "Gold3"))))
 '(info-elisp-macro-ref-item            ;elisp��������Ŀ
   ((t (:background "Black"
                    :foreground "Yellow3"))))
 '(info-elisp-reference-item            ;elisp������Ŀ
   ((t (:background "Black"
                    :foreground "DarkRed"))))
 '(info-elisp-special-form-ref-item     ;elisp������������Ŀ
   ((t (:background "Black"
                    :foreground "OrangeRed2"))))
 '(info-elisp-syntax-class-item         ;elisp�﷨������Ŀ
   ((t (:background "Black"
                    :foreground "Khaki3"))))
 '(info-elisp-user-option-ref-item      ;elisp�û�ѡ��������Ŀ
   ((t (:background "Black"
                    :foreground "LawnGreen"))))
 '(info-elisp-variable-ref-item         ;elisp����������Ŀ
   ((t (:background "Black"
                    :foreground "#0048FF"))))
 '(info-file                            ;�ļ�
   ((t (:background "Black"
                    :foreground "Blue"))))
 '(info-menu                            ;�˵�
   ((t (:foreground "DarkRed"))))
 '(info-quoted-name                     ;��������
   ((t (:foreground "Purple"))))
 '(info-string                          ;�ַ���
   ((t (:foreground "Grey50"))))
 ;; Customzie
 '(custom-button
   ((((type x w32 ns)                   ;�Զ��尴ť
      (class color))
     (
      :background "darkred"
                  :foreground "white"
                  :box (:line-width 1 :style released-button)
                  ))))
 '(custom-comment                       ;�Զ���ע��
   ((((class grayscale color) (background dark))
     (
      :background "grey5"
                  :foreground "green"
                  ))))
 '(custom-group-tag                     ;���ǩ
   ((t (:inherit variable-pitch
                 :foreground "gold"
                 :underline t
                 :weight bold
                 :height 1.2
                 ))))
 ;; icicles
 '(icicle-candidate-part                ;��ѡ����
   ((((background dark))
     (:background "Black"
                  :foreground "Purple"))))
 '(icicle-complete-input                ;��ȫ����
   ((((background dark))
     (:foreground "Gold"))))
 '(icicle-completion                    ;��ȫ
   ((((background dark))
     (:foreground "Gold"))))
 '(icicle-current-candidate-highlight   ;��ǰ��ѡ����
   ((((background dark))
     (:background "DarkRed" :foreground "White"))))
 '(icicle-input-completion-fail         ;���벹ȫʧ��
   ((((background dark))
     (:background "DarkRed"
                  :foreground "White"))))
 '(icicle-input-completion-fail-lax     ;lax���벹ȫʧ��
   ((((background dark))
     (:background "khaki"
                  :foreground "Black"))))
 '(icicle-match-highlight-Completions   ;ƥ�䲹ȫ����
   ((((background dark))
     (:foreground "DodgerBlue1"))))
 '(icicle-multi-command-completion      ;�������ȫ
   ((((background dark))
     (:foreground "Gold"))))
 '(icicle-mustmatch-completion          ;ƥ�䲹ȫ
   ((((type x w32 mac graphic) (class color))
     (:inherit nil))))
 '(icicle-saved-candidate               ;�����ѡ
   ((((background dark))
     (:background "Black"
                  :foreground "khaki"))))
 '(icicle-special-candidate             ;�����ѡ
   ((((background dark))
     (:background "Black"
                  :foreground "Grey"))))
 '(icicle-whitespace-highlight          ;�ո����
   ((((background dark))
     (:background "DarkRed"))))
 ;; hl-line+
 '(hl-line ((t                          ;��ǰ�и�������ɫ
             (:background "grey5"))))
 ;; col-highlight
 '(col-highlight                        ;��ǰ�еĸ�������ɫ
   ((t (:background "Grey5"))))
 ;; hl-sexp
 '(hl-sexp-face                         ;���� sexp
   ((((class color) (background dark))
     (:background "gray2"))))
 ;; Emms Playlist
 '(emms-playlist-selected-face          ;�趨ѡ����Ŀ���ֵ���ɫ
   ((t (:foreground "Green"))))
 '(emms-playlist-track-face             ;�趨�����б����ֵĵ�ɫ
   ((t (:foreground "DarkGreen"))))
 ;; Emms Browser
 '(emms-browser-album-face              ;ר��
   ((((class color) (background dark))
     (:foreground "Green3"
                  :height 1.1))))
 '(emms-browser-artist-face             ;������
   ((((class color) (background dark))
     (:foreground "Gold3"
                  :height 1.3))))
 '(emms-browser-track-face              ;����
   ((((class color) (background dark))
     (:foreground "khaki3"
                  :height 1.0))))
 ;; Rcirc
 '(rcirc-bright-nick                    ;��ע���ݳ�
   ((((class color) (min-colors 88) (background dark))
     (:foreground "White"))))
 '(rcirc-dim-nick                       ;���Ե��ݳ�
   ((t (:foreground "Grey25"))))
 '(rcirc-keyword
   ((t (:foreground "khaki"             ;�ؼ��ָ���
                    :slant normal
                    :weight ultra-bold))))
 '(rcirc-my-nick                        ;�ҵ��ݳ�
   ((((class color) (min-colors 88) (background dark))
     (:foreground "Green3"
                  :weight semi-bold))))
 '(rcirc-nick-in-message                ;��Ϣ���ҵ��ݳ�
   ((((class color) (min-colors 88) (background dark))
     (:foreground "Gold"))))
 '(rcirc-nick-in-message-full-line      ;��Ϣ���ҵ��ݳ�, ȫ��
   ((t (:underline "grey20"))))
 '(rcirc-other-nick                     ;�����ݳ�
   ((((class color) (min-colors 88) (background dark))
     (:foreground "tomato"))))
 '(rcirc-prompt                         ;��ʾ��
   ((((min-colors 88) (background dark))
     (:foreground "Purple"))))
 '(rcirc-server                         ;��������Ϣ
   ((((class color) (min-colors 88) (background dark))
     (:foreground "DarkRed"))))
 '(rcirc-server-prefix                  ;��������Ϣǰ׺
   ((default (:foreground "khaki4"))
    (((class color) (min-colors 16)) nil)))
 '(rcirc-timestamp                      ;ʱ����
   ((t (:foreground "grey35"))))
 '(rcirc-track-keyword                  ;�ؼ��ָ���
   ((t (:foreground "Yellow"
                    :weight bold))))
 '(rcirc-track-nick                     ;�ݳƸ���
   ((t (:foreground "Green"))))
 '(rcirc-url                            ;����
   ((t (:foreground "Grey50"
                    :weight ultra-light))))
 ;; eperiodic (��ѧԪ�����ڱ�)
 '(eperiodic-d-block-face               ;D ��
   ((((class color) (background dark))
     (:inherit eperiodic-generic-block-face
               :background "DarkRed"
               :foreground "White"))))
 '(eperiodic-f-block-face               ;F ��
   ((((class color) (background dark))
     (:inherit eperiodic-generic-block-face
               :background "DarkRed"
               :foreground "Grey"))))
 '(eperiodic-s-block-face               ;S ��
   ((((class color))
     (:inherit eperiodic-generic-block-face
               :background "tan3"
               :foreground "cornsilk2"))))
 '(eperiodic-generic-block-face         ;ͨ�� ��
   ((((class color)) nil)))
 '(eperiodic-p-block-face               ;P ��
   ((((class color))
     (:inherit eperiodic-generic-block-face
               :background "Green4"
               :foreground "Grey"))))
 '(eperiodic-header-face                ;����
   ((t (:foreground "Gold"
                    :weight bold))))
 '(eperiodic-group-number-face          ;����
   ((t (:inherit eperiodic-generic-block-face
                 :foreground "grey"
                 :weight bold))))
 '(eperiodic-period-number-face         ;������
   ((t (:foreground "grey"
                    :weight bold))))
 ;; Company-mode

 ;; cal-china-x
 '(cal-china-x-priority1-holiday-face   ;����
   ((((class color) (background dark))
     (:background "DarkRed"
                  :foreground "White"))))
 '(cal-china-x-priority2-holiday-face   ;����
   ((((class color) (background dark))
     (:background "Khaki"
                  :foreground "Black"))))
 ;; Xgtags
 '(xgtags-file-face                     ;�ļ�
   ((((class color) (background dark))
     (:foreground "Grey50"))))
 '(xgtags-file-selected-face            ;ѡ����ļ�
   ((t (:foreground "Grey70"
                    :weight bold))))
 '(xgtags-line-face                     ;������
   ((((class color) (background dark))
     (:foreground "khaki4"))))
 '(xgtags-line-selected-face            ;ѡ���������
   ((t (:foreground "khaki"))))
 '(xgtags-line-number-face              ;�к�
   ((((class color) (background dark))
     (:foreground "DarkRed"))))
 '(xgtags-line-number-selected-face     ;ѡ����к�
   ((t (:foreground "Red"
                    :weight bold))))
 '(xgtags-match-face                    ;�ؼ���
   ((((class color) (background dark))
     (:foreground "Green4"))))
 '(xgtags-match-selected-face           ;ѡ��Ĺؼ���
   ((t (:foreground "Green"
                    :weight bold))))
 ;; eldoc
 '(eldoc-highlight-function-argument    ;������ɫ
   ((t (:inherit bold
                 :foreground "Red"))))
 ;; elscreen
 '(elscreen-tab-background-face         ;������ǩ
   ((((type x w32 mac) (class color))
     (:background "Black"))))
 '(elscreen-tab-control-face            ;���Ʊ�ǩ
   ((((type x w32 mac) (class color))
     (:background "Black"
                  :foreground "Green"))))
 '(elscreen-tab-current-screen-face     ;��ǰ��ǩ
   ((((class color))
     (:background "DarkRed"
                  :foreground "Grey"
                  :box (:line-width -1
                                    :color "Red"
                                    :style released-button)))))
 '(elscreen-tab-other-screen-face       ;����
   ((((type x w32 mac) (class color))
     (:background "Black"
                  :foreground "Green3"
                  :box (:line-width -1
                                    :color "Grey20"
                                    :style released-button)))))
 ;; Window nubmer
 '(window-number-face ((((type x w32 mac)) (:foreground "Gold"))))
 ;; re-builder
 '(reb-match-0
   ((((class color) (background dark))
     (:background "khaki3"
                  :foreground "Black"))))
 '(reb-match-1
   ((((class color) (background dark))
     (:background "dodgerblue3"
                  :foreground "black"))))
 '(reb-match-2
   ((((class color) (background dark))
     (:background "chartreuse3"
                  :foreground "black"))))
 '(reb-match-3
   ((((class color) (background dark))
     (:background "sienna3"
                  :foreground "black"))))
 ;; Highlight fixme
 '(fixme-face
   ((t (:foreground "orange"
                    :box (:line-width 1
                                      :color "orange")
                    :weight bold))))
 ;; Basic
 '(secondary-selection                  ;��Ҫ����ѡ��
   ((((class color) (min-colors 88) (background dark))
     (:background "Black"))))
 ;; Go-to-char
 '(go-to-char-highlight                 ;��ת���ַ�����
   ((((class color) (background dark))
     (:background "Pink"
                  :foreground "Black"))))
 ;; Match
 '(match                                ;ƥ���
   ((((class color) (min-colors 88) (background dark))
     (:background "Black"
                  :foreground "Grey70"
                  :weight extra-bold))))
 ;; Woman
 '(woman-addition                       ;���ӵ�
   ((t (:foreground "Gold3"))))
 '(woman-bold                           ;����
   ((((background dark))
     (:foreground "Green3"
                  :weight bold))))
 '(woman-italic                         ;����
   ((((background dark))
     (:foreground "DarkRed"
                  :underline t))))
 '(woman-unknown                        ;δ֪��
   ((((min-colors 88) (background dark))
     (:foreground "Cyan3"))))
 ;; Company
 '(company-preview                      ;Ԥ��
   ((t (:background "gold3"
                    :foreground "black"))))
 '(company-preview-common               ;Ԥ�� ���������֣�
   ((t (:background "gold3"
                    :foreground "grey20"))))
 '(company-preview-search               ;Ԥ�� ��������
   ((t (:background "green4"
                    :foreground "green"))))
 '(company-tooltip                      ;tooltip
   ((t (:background "darkred"
                    :foreground "grey"))))
 '(company-tooltip-common               ;tooltip (�������֣�
   ((t (:inherit company-tooltip
                 :foreground "gold"))))
 '(company-tooltip-common-selection     ;tooltip ��ѡ�񹫹����֣�
   ((t (:inherit company-tooltip-selection
                 :foreground "gold"))))
 '(company-tooltip-selection            ;tooltip (ѡ��
   ((default (:background "red3"
                          :foreground "black"))
    (((class color) (min-colors 88)) (:background "orange1"))))
 ;; Auto-complete
 '(ac-menu-face                         ;�˵���ɫ
   ((t (:background "Grey10"
                    :foreground "Grey40"))))
 '(ac-selection-face                    ;ѡ����ɫ
   ((t (:background "Green4"
                    :foreground "Green"))))
 '(ac-yasnippet-menu-face               ;Yasnippet �˵���ɫ
   ((t (:background "Grey10"
                    :foreground "Grey40"))))
 '(ac-yasnippet-selection-face          ;Yasnippet ѡ����ɫ
   ((t (:background "DarkRed"
                    :foreground "Grey"))))
 ;; ERC
 '(erc-direct-msg-face                  ;ֱ����Ϣ
   ((t (:foreground "DodgerBlue"))))
 '(erc-input-face                       ;����
   ((t (:foreground "Green2"))))
 '(erc-my-nick-face                     ;�ҵ��ǳ�
   ((t (:foreground "DarkRed"
                    :weight bold))))
 '(erc-notice-face                      ;ע��
   ((t (:foreground "Gray20"
                    :weight bold))))
 '(erc-prompt-face                      ;��ʾ
   ((t (:background "Black"
                    :foreground "Gold"
                    :weight bold))))
 ;; Diff
 '(diff-header ((((class color) (min-colors 88) (background dark))
                 (:background "grey30" :foreground "gold"))))
 ;; Egg
 '(egg-diff-hunk-header                 ;��ͬ�ı���
   ((((class color) (background dark))
     (:background "grey30"
                  :foreground "Gold"))))
 '(egg-log-HEAD                         ;��־����
   ((t (:background "Black"
                    :foreground "Red"))))
 '(egg-text-help                        ;�ı�����
   ((t (:inherit egg-text-base
                 :height 0.9))))
 ;; scim-bridge
 '(scim-preedit-default-face            ;Ԥѡ���ڵ�Ĭ�����
   ((t (:background "DarkRed"
                    :foreground "White"))))
 ;; rfcview
 '(rfcview-headlink-face                ;����
   ((t (:foreground "DodgerBlue"))))
 '(rfcview-headname-face                ;������
   ((t (:foreground "DarkRed"
                    :underline t :weight bold))))
 '(rfcview-headnum-face                 ;������
   ((t (:foreground "DarkRed"
                    :weight bold))))
 '(rfcview-mouseover-face               ;����ƶ�
   ((t (:background "DarkRed"
                    :foreground "white" :weight bold))))
 '(rfcview-rfcnum-face                  ;RFC ID
   ((t (:foreground "Green3"
                    :weight bold))))
 '(rfcview-stdnum-face                  ;STD ID
   ((t (:foreground "Grey"
                    :weight bold))))
 '(rfcview-title-face                   ;����
   ((t (:foreground "Gold"
                    :weight bold))))
 ;; Helm Themes
 '(helm-selection ((t (:background "dark red" :foreground "light gray"))))
 '(helm-selection-line ((t (:background "dark red" :foreground "light gray"))))
 '(helm-source-header ((t (:foreground "yellow" :underline t :family "Sans Serif"))))

 )

(setq
 ;; rcirc �ݳƵ������ɫ
 rcirc-colors '("LightGrey" "SlateBlue" "DeepPink"
                "HotPink" "DodgerBlue1" "OliveDrab2"
                "Chartreuse" "LightCyan" "DarkMagenta"
                "DarkKhaki" "Grey" "Pink" "FireBrick3"
                "Chocolate3" "sienna" "Orange2")
 ;; ������ɫ
 calendar-load-hook
 '(lambda ()
    (set-face-foreground 'diary-face "skyblue")
    (set-face-background 'holiday-face "slate blue")
    (set-face-foreground 'holiday-face "white"))
 ;; �ʼ�ͼ��
 display-time-mail-icon
 '(image
   :type jpeg
   :file "/usr/share/deepin-emacs/Image/mail1.jpeg"
   :background "DarkRed"
   :ascent center)
 ;; Scim-bridge �����ɫ (���� . �ر�)
 scim-cursor-color
 '("Gold3" . "Red3")
 )

(provide 'HualetTheme)
