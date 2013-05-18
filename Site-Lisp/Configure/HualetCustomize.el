;;;;;;;;;;;;;;;;;;;;;;;;;; ��Ҫ�޸ĵĶ��� ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defvar my-name "")
(defvar my-full-name "")
(defvar my-mail "")
(defvar my-homepage "")
(defvar my-irc-nick "")
(defvar my-irc-passwd "")
(defvar my-irc-channel-list '())

;; ��չ�Զ������
(custom-set-variables
 ;; ������Ϣ
 '(my-name "Hualet")                          ;����
 '(my-full-name "Hualet Wang")             ;ȫ��
 '(my-mail "mr.asianwang@gmail.com")     ;�ʼ���ַ
 '(my-homepage "http://www.google.com/ncr") ;��ҳ, �޹���/�������Զ�ת��
 '(my-irc-nick "hualet")                          ;IRC�ǳ�
 '(my-irc-passwd "Wyh19910402")                        ;IRC����
 '(my-irc-channel-list
   '(
     "#emacs"
     "#haskell"
     "#python"
     "#ubuntu"
     "#django"
     ))
 ;; �򿪻�ر��ļ�
 '(startup-open-file-list               ;�����򿪵��ļ��б�
   '(
     "~/Notes/hualet.org"
     ))
 '(startup-close-file-list              ;�����رյ�buffer�б�
   '(
     ))
 ;; Ŀ¼����
 '(my-home-directory "~/")                                              ;HOMEĿ¼
 '(my-default-download-directory "~/Downloads/")                     ;Ĭ������Ŀ¼
 '(my-resource-backup-directory "~/Backup/")                        ;���ϱ���Ŀ¼
 '(my-book-directory "~/Book/")                                     ;ͼ��Ŀ¼
 '(my-reading-directory "~/Book/Reading/")                          ;����Ŀ¼
 '(my-translate-png-directory "~/Book/Doc-View_Translate_Book")     ;PDFת����ͼƬ��Ŀ¼
 '(my-picture-directory "~/Pictures/")                               ;ͼƬĿ¼
 '(my-lyrics-directory "~/Lyrics/")                                 ;���Ŀ¼
 '(my-screenshots-storage-directory "~/Pictures/Screenshots/")       ;��Ļ��ͼĿ¼
 '(my-notes-directory "~/Notes/")                             ;�ʼ�Ŀ¼

 ;; ERC
 '(erc-server "irc.freenode.net")       ;���÷�����
 '(erc-port 6667)                       ;���ö˿�
 `(erc-ignore-list '("ams", "trick"))   ;���ð׳��б�, �����Ϳ��������ǵ���Ϣ
 ;; Google Desktop Search
 '(google-desktop-search-url "http://127.0.0.1:38923/?hl=zh_CN&s=vhITkQ_HHma9o9JG6cj-xJjhra0") ;Google����������ΨһURL, ������ⲿ������ĵ�ַ������
 ;; Gmail
 '(w3m-gmail-login-string "http://mail.google.com/mail/h/h4339zs3i3b6/?zy=n&f=1") ;gmail ��¼�ַ���
 )

(provide 'HualetCustomize)
