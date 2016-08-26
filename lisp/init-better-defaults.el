;;�Զ������޸ĺ������
(global-auto-revert-mode t)


;;���ô��ļ���ȱʡ·��
(setq default-directory "G:/")

;;֧��emacs���ⲿ�����ճ��
(setq x-select-enable-clipboard t)

;; һ�򿪾����� text ģʽ��
(setq default-major-mode 'text-mode)




;;�ر��Զ�����
(setq auto-save-default nil)

;;�ر��Զ�����
(setq make-backup-files nil)

;; ���������β�����ƶ���ʱ��ʼ�ձ�������β��
(setq track-eol t) 



;;�� Emacs ����ֱ�Ӵ򿪺���ʾͼƬ�� 
(global-font-lock-mode t)

;;����ļ�
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)



;;��ѹ���ļ�ʱ�Զ���ѹ����
(auto-compression-mode 1)


;;���� sentence-end ����ʶ�����ı�㡣������ fill ʱ�ھ�ź�� �������ո� 
(setq enable-recursive-minibuffers t)


;;������shell��telnet��w3m��ģʽ��ʱ����Ȼ������Ҫ������������,��ʱ�����Գ��������
(add-hook 'comint-output-filter-functions
'comint-watch-for-password-prompt)


;;����Щȱʡ���õĹ��ܴ򿪡� 
(put 'set-goal-column 'disabled nil)
(put 'narrow-to-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(put 'LaTeX-hide-environment 'disabled nil)

;; �� y/n���� yes/no
(fset 'yes-or-no-p 'y-or-n-p)

;;��mozilla, openoffice�ȿ��������������޷���ȷճ����Emacs��(Emacs 21.3 �������д�����, �������ҵ�FreeBSD����������)
(set-clipboard-coding-system 'ctext)

;;Ϊʲôʹ���﷨��ʾ�Ĵ��ļ����ƶ�ʱ���֮��
;;(setq lazy-lock-defer-on-scrolling t)
;;(setq font-lock-support-mode 'lazy-lock-mode)
;;(setq font-lock-maximum-decoration t)

;;���� sentence-end ����ʶ�����ı�㡣������ fill ʱ�ھ�ź���������ո�
(setq sentence-end "\\([������]\\|����\\|[.?!][]\"')}]*\\($\\|[ \t]\\)\\)[ \t\n]*")
(setq sentence-end-double-space nil)

;;���Եݹ��ʹ�� minibuffer
(setq enable-recursive-minibuffers t)



;; ����Ĭ��tab���Ϊ2
(setq c-basic-offset 4)
(setq indent-tabs-mode nil) 
(setq default-tab-width 4)
(setq tab-width 4) 
(setq tab-stop-list ())

;;��tab����  
(setq indent-tabs-mode t)  
(setq c-indent-level 4)  
(setq c-continued-statement-offset 4)  
(setq c-brace-offset -4)  
(setq c-argdecl-indent 4)  
(setq c-label-offset -4)  
(setq c-basic-offset 4)  
(global-set-key "\C-m" 'reindent-then-newline-and-indent)  

;;��һ���ܴ�� kill ring. ������ֹ�Ҳ�С��ɾ����Ҫ�Ķ������Һ� Ŭç�ģ���֪��
(setq kill-ring-max 200)

;;�� dired ���Եݹ�Ŀ�����ɾ��Ŀ¼�� 
(setq dired-recursive-copies 'top)
(setq dired-recursive-deletes 'top)





;;�趨���Ի���Ϊutf-8  
(setq current-language-environment "UTF-8")  
;;(setq default-input-method "chinese-wubi")  
(setq locale-coding-system 'utf-8)  
(set-terminal-coding-system 'utf-8)  
(set-keyboard-coding-system 'utf-8)  
(set-selection-coding-system 'utf-8)  



;; �Զ������ļ�ĩ����һ����
(setq require-final-newline t)

;;---------------------------------------------------------------------
;���emacs shell ����
;;(setq ansi-color-for-comint-mode t)
;;(customize-group 'ansi-colors)
;;(kill-this-buffer);�ر�customize����
;;(prefer-coding-system 'gb18030)
;;(prefer-coding-system 'utf-8)
(setq file-name-coding-system 'chinese-gbk)
(setq locale-coding-system 'chinese-gbk)

(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)


;;===========================================================
;;���Ա����ص� init.el
(provide 'init-better-defaults)