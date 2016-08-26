;;F10 ��ʾ/���ز˵��� ;; M-x menu-bar-open
(define-key global-map (kbd "<f10>") 'menu-bar-mode)

(global-set-key (kbd "<f2>") 'open-my-init-file)

;; �س�����
(global-set-key "\C-m" 'newline-and-indent)
(global-set-key (kbd "C-<return>") 'newline)

;; ����C->����Ϊ����֮����л���Ĭ�ϵ���C-x-o,�Ƚ��鷳
;;(global-set-key (kbd "C->") 'other-window) 

;;ϵͳ�������ݼ���C-c C-c���ƣ�C-c C-vճ����  
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
;;���Ա����ص� init.el
(provide 'init-keybindings)