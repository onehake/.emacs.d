;;��װ������/��װԴ�й���½������
;;˳����һ��, ��� M-x package-install �����Ҳ������� url , �����Ǳ��ػ���İ���ַ�Ѿ�;;�����任, M-x package-refresh-contents ���ܾͿ�����.
(package-initialize)
(add-to-list 'package-archives
                '("aborn" . "http://elpa.popkit.org/packages/") t)
(package-initialize)
(add-to-list 'package-archives'("melpa" . "http://melpa.org/packages") t)


;;(when (>=emacs-major-version 24)
;;	(require 'package)
;;	(package-initialize)
;;	(add-to-list 'pakcage-archives '("melpa" . "http://melpa.org/packages") ;;t)
;;(add-to-list 'package-archives
;;                '("melpa" . "http://melpa.org/packages") t)
;;)

;;---------------------------------


;;------------------------popwin (C-h v����ڴ����Զ��л�)---------------------
(require 'popwin)
(popwin-mode 1)


;;-------------------------smartparens--����  �����Զ����
(require 'smartparens-config)
(smartparens-global-mode t)


;;-------------------------------------hungry-delete ;; ɾ������ո�
(require 'hungry-delete)
(global-hungry-delete-mode)


;;------------------------- erc------------------------
(require 'erc)
;; ��F9����Ϊ��Erc�Ŀ�ݼ�
(global-set-key [f9] 'erc) 



;;-------------------company   
(global-company-mode t)



;;------------------------------linum  ȫ����ʾ��;;��----------------------------------
(require 'linum)
(global-linum-mode 1)

;;--------------------------table.el---------------------------
(autoload 'table-insert "table" "WYGIWYS table editor")


;;------------------evil-------------------------
(evil-mode 0)



;;------------------git------------------------------------
;;(require 'git-emacs) 





;;----------------xcscope------------------
(require 'xcscope) 
;; ���ý��ڴ�c/c++�ļ�ʱ��
(add-hook 'c-mode-common-hook '(lambda() (require 'xcscope)))


;;==============swiper  ����------------------
;;��װ swiper  counsel
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "<f6>") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-h f") 'counsel-describe-function)
(global-set-key (kbd "C-h v") 'counsel-describe-variable)



;;-------------------------------����䷨------------------------------------------
;;(add-to-list 'load-path "./wubi")

;;(require 'wubi)
;;(wubi-load-local-phrases) ; add user's Wubi phrases

;;(register-input-method
;; "chinese-wubi" "Chinese-GB" 'quail-use-package
;; "WuBi" "WuBi"
;; "wubi")

;;(if (< emacs-major-version 21)
;;    (setup-chinese-gb-environment)
;;  (set-language-environment 'Chinese-GB))

;;(setq default-input-method "chinese-wubi")
;;------------------------------

;;���Ա����ص� init.el
(provide 'init-packages)