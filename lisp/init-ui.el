;;-------------------------color-theme 背景插件---------------------------------------

;;(require 'color-theme)
;;(color-theme-initialize);;重要
;;(color-theme-bharadwaj-slate)

;;(color-theme-vim-colors)
(load-theme 'monokai t)


;;关闭起动时的那个“开机画面”。 
(setq inhibit-startup-message t)

;;关闭gnus启动时的画面
(setq gnus-inhibit-startup-message t)

;; 显示时间，格式如下
(display-time-mode 1)
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
(transient-mark-mode t)



;; 显示行列号,它显示在minibuffer上面那个杠上
(setq column-number-mode t)
(setq line-number-mode t)
(put 'upcase-region 'disabled nil) 


;;设置光标为竖线
(setq-default cursor-type 'bar)

;;设置光标为方块
;;(setq-default cursor-type 'box)

;; 鼠标颜色设置为白色
(set-mouse-color "white")



;;关闭烦人的出错时的提示声。 
(setq visible-bell t)

;;防止页面滚动时跳动，
;;scroll-margin 3 可以在靠近屏幕边沿3行时就开始滚动
;;scroll-step 1 设置为每次翻滚一行，可以使页面更连续
(setq scroll-step 1 scroll-margin 3 scroll-conservatively 10000) 

;;光标靠近鼠标指针时，让鼠标指针自动让开，别挡住视线。 
(mouse-avoidance-mode 'animate)


;; 字体设置
;;========================================
(set-fontset-font (frame-parameter nil 'font)
    'unicode '("YaHei Consolas Hybrid" . "unicode-bmp"))

;;为什么不能像Windows下编辑器那样, 高亮显示要拷贝的区域
(transient-mark-mode t)

;; 语法高亮
(global-font-lock-mode t)

;;高亮当前行  
(require 'hl-line)
(global-hl-line-mode 1)

;; 显示括号匹配
(show-paren-mode t)
(setq show-paren-style 'parentheses)


;; 在标题栏提示你目前在什么位置%b
(setq frame-title-format "hake%n%F/%b")

;; 默认显示 80列就换行
(setq default-fill-column 80)

;; 去掉工具栏    (-1生效)
(tool-bar-mode -1)

;;去掉菜单栏
(menu-bar-mode -1)

;; 去掉滚动栏
(scroll-bar-mode -1)




;;粘贴于光标处,而不是鼠标指针处
(setq mouse-yank-at-point t)


;; 设置启动时窗口的长宽，下面为100*40
(setq initial-frame-alist '((width . 100) (height . 40))) 


;;启动0.3秒后自动最大化 （windows下）  
;;(run-with-idle-timer 0.3 nil 'w32-send-sys-command 61488)  
;;    (prefer-coding-system 'utf-8)  

;;===========================================================
;;可以被加载到 init.el
(provide 'init-ui)
