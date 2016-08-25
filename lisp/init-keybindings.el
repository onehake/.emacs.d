;;F10 显示/隐藏菜单栏 ;; M-x menu-bar-open
(define-key global-map (kbd "<f10>") 'menu-bar-mode)

(global-set-key (kbd "<f2>") 'open-my-init-file)

;; 回车缩进
(global-set-key "\C-m" 'newline-and-indent)
(global-set-key (kbd "C-<return>") 'newline)

;; 设置C->键作为窗口之间的切换，默认的是C-x-o,比较麻烦
;;(global-set-key (kbd "C->") 'other-window) 

;;系统剪贴板快捷键（C-c C-c复制，C-c C-v粘贴）  
(global-set-key "\C-c\C-c" 'clipboard-kill-ring-save)    
(global-set-key "\C-c\C-v" 'clipboard-yank)  

(global-set-key(kbd "M-x") 'counsel-M-x)
(global-set-key(kbd "C-x C-f") 'counsel-describe-function)
(global-set-key(kbd "C-h v") 'counsel-describe-variable)

(global-set-key (kbd "C-h C-f") 'find-function)
(global-set-key (kbd "C-h C-v") 'find-variable)
(global-set-key (kbd "C-h C-k") 'find-function-on-key)

;;(global-set-key (kbd "C-c p f") 'counsel-git)

;;===========================================================
;;可以被加载到 init.el
(provide 'init-keybindings)