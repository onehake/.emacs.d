;;-------------------------color-theme �������---------------------------------------

;;(require 'color-theme)
;;(color-theme-initialize);;��Ҫ
;;(color-theme-bharadwaj-slate)

;;(color-theme-vim-colors)
(load-theme 'monokai t)


;;�ر���ʱ���Ǹ����������桱�� 
(setq inhibit-startup-message t)

;;�ر�gnus����ʱ�Ļ���
(setq gnus-inhibit-startup-message t)

;; ��ʾʱ�䣬��ʽ����
(display-time-mode 1)
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
(transient-mark-mode t)



;; ��ʾ���к�,����ʾ��minibuffer�����Ǹ�����
(setq column-number-mode t)
(setq line-number-mode t)
(put 'upcase-region 'disabled nil) 


;;���ù��Ϊ����
(setq-default cursor-type 'bar)

;;���ù��Ϊ����
;;(setq-default cursor-type 'box)

;; �����ɫ����Ϊ��ɫ
(set-mouse-color "white")



;;�رշ��˵ĳ���ʱ����ʾ���� 
(setq visible-bell t)

;;��ֹҳ�����ʱ������
;;scroll-margin 3 �����ڿ�����Ļ����3��ʱ�Ϳ�ʼ����
;;scroll-step 1 ����Ϊÿ�η���һ�У�����ʹҳ�������
(setq scroll-step 1 scroll-margin 3 scroll-conservatively 10000) 

;;��꿿�����ָ��ʱ�������ָ���Զ��ÿ�����ס���ߡ� 
(mouse-avoidance-mode 'animate)


;; ��������
;;========================================
(set-fontset-font (frame-parameter nil 'font)
    'unicode '("YaHei Consolas Hybrid" . "unicode-bmp"))

;;Ϊʲô������Windows�±༭������, ������ʾҪ����������
(transient-mark-mode t)

;; �﷨����
(global-font-lock-mode t)

;;������ǰ��  
(require 'hl-line)
(global-hl-line-mode 1)

;; ��ʾ����ƥ��
(show-paren-mode t)
(setq show-paren-style 'parentheses)


;; �ڱ�������ʾ��Ŀǰ��ʲôλ��%b
(setq frame-title-format "hake%n%F/%b")

;; Ĭ����ʾ 80�оͻ���
(setq default-fill-column 80)

;; ȥ��������    (-1��Ч)
(tool-bar-mode -1)

;;ȥ���˵���
(menu-bar-mode -1)

;; ȥ��������
(scroll-bar-mode -1)




;;ճ���ڹ�괦,���������ָ�봦
(setq mouse-yank-at-point t)


;; ��������ʱ���ڵĳ�������Ϊ100*40
(setq initial-frame-alist '((width . 100) (height . 40))) 


;;����0.3����Զ���� ��windows�£�  
;;(run-with-idle-timer 0.3 nil 'w32-send-sys-command 61488)  
;;    (prefer-coding-system 'utf-8)  

;;===========================================================
;;���Ա����ص� init.el
(provide 'init-ui)
