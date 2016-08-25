;;自动加载修改后的配置
(global-auto-revert-mode t)


;;设置打开文件的缺省路径
(setq default-directory "G:/")

;;支持emacs和外部程序的粘贴
(setq x-select-enable-clipboard t)

;; 一打开就起用 text 模式。
(setq default-major-mode 'text-mode)




;;关闭自动保存
(setq auto-save-default nil)

;;关闭自动备份
(setq make-backup-files nil)

;; 当光标在行尾上下移动的时候，始终保持在行尾。
(setq track-eol t) 



;;让 Emacs 可以直接打开和显示图片。 
(global-font-lock-mode t)

;;最近文件
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)



;;打开压缩文件时自动解压缩。
(auto-compression-mode 1)


;;设置 sentence-end 可以识别中文标点。不用在 fill 时在句号后插 入两个空格。 
(setq enable-recursive-minibuffers t)


;;当你在shell、telnet、w3m等模式下时，必然碰到过要输入密码的情况,此时加密显出你的密码
(add-hook 'comint-output-filter-functions
'comint-watch-for-password-prompt)


;;把这些缺省禁用的功能打开。 
(put 'set-goal-column 'disabled nil)
(put 'narrow-to-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(put 'LaTeX-hide-environment 'disabled nil)

;; 以 y/n代表 yes/no
(fset 'yes-or-no-p 'y-or-n-p)

;;在mozilla, openoffice等拷贝的中文文字无法正确粘贴在Emacs中(Emacs 21.3 发布版有此问题, 至少在我的FreeBSD下是这样的)
(set-clipboard-coding-system 'ctext)

;;为什么使用语法显示的大文件在移动时如此之慢
;;(setq lazy-lock-defer-on-scrolling t)
;;(setq font-lock-support-mode 'lazy-lock-mode)
;;(setq font-lock-maximum-decoration t)

;;设置 sentence-end 可以识别中文标点。不用在 fill 时在句号后插入两个空格。
(setq sentence-end "\\([。！？]\\|……\\|[.?!][]\"')}]*\\($\\|[ \t]\\)\\)[ \t\n]*")
(setq sentence-end-double-space nil)

;;可以递归的使用 minibuffer
(setq enable-recursive-minibuffers t)



;; 设置默认tab宽度为2
(setq c-basic-offset 4)
(setq indent-tabs-mode nil) 
(setq default-tab-width 4)
(setq tab-width 4) 
(setq tab-stop-list ())

;;用tab缩进  
(setq indent-tabs-mode t)  
(setq c-indent-level 4)  
(setq c-continued-statement-offset 4)  
(setq c-brace-offset -4)  
(setq c-argdecl-indent 4)  
(setq c-label-offset -4)  
(setq c-basic-offset 4)  
(global-set-key "\C-m" 'reindent-then-newline-and-indent)  

;;用一个很大的 kill ring. 这样防止我不小心删掉重要的东西。我很 努莽的，你知道
(setq kill-ring-max 200)

;;让 dired 可以递归的拷贝和删除目录。 
(setq dired-recursive-copies 'top)
(setq dired-recursive-deletes 'top)





;;设定语言环境为utf-8  
(setq current-language-environment "UTF-8")  
;;(setq default-input-method "chinese-wubi")  
(setq locale-coding-system 'utf-8)  
(set-terminal-coding-system 'utf-8)  
(set-keyboard-coding-system 'utf-8)  
(set-selection-coding-system 'utf-8)  



;; 自动的在文件末增加一新行
(setq require-final-newline t)

;;---------------------------------------------------------------------
;解决emacs shell 乱码
;;(setq ansi-color-for-comint-mode t)
;;(customize-group 'ansi-colors)
;;(kill-this-buffer);关闭customize窗口
;;(prefer-coding-system 'gb18030)
;;(prefer-coding-system 'utf-8)
(setq file-name-coding-system 'chinese-gbk)
(setq locale-coding-system 'chinese-gbk)

(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)


;;===========================================================
;;可以被加载到 init.el
(provide 'init-better-defaults)