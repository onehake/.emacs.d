;;安装包镜像/安装源中国大陆服务器
;;顺带提一句, 如果 M-x package-install 出现找不到包的 url , 可能是本地缓存的包地址已经;;升级变换, M-x package-refresh-contents 可能就可以了.
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


;;------------------------popwin (C-h v光标在窗口自动切换)---------------------
(require 'popwin)
(popwin-mode 1)


;;-------------------------smartparens--括号  引号自动完成
(require 'smartparens-config)
(smartparens-global-mode t)


;;-------------------------------------hungry-delete ;; 删除多个空格
(require 'hungry-delete)
(global-hungry-delete-mode)


;;------------------------- erc------------------------
(require 'erc)
;; 将F9设置为打开Erc的快捷键
(global-set-key [f9] 'erc) 



;;-------------------company   
(global-company-mode t)



;;------------------------------linum  全局显示行;;号----------------------------------
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
;; 设置仅在打开c/c++文件时打开
(add-hook 'c-mode-common-hook '(lambda() (require 'xcscope)))


;;==============swiper  搜索------------------
;;安装 swiper  counsel
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "<f6>") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-h f") 'counsel-describe-function)
(global-set-key (kbd "C-h v") 'counsel-describe-variable)



;;-------------------------------五笔输法------------------------------------------
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

;;可以被加载到 init.el
(provide 'init-packages)