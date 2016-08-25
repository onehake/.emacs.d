;;------------------------------ org-mode--------------------------------------------
(require 'org)

(setq src-fontify-natively t)

(setq org-agenda-files '("~/org"))
(global-set-key (kbd "C-c a") 'org-agenda)

(setq org-hide-leading-stars t)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done 'time)

;; 自动显示日程表
;;(setq org-agenda-files (list "~/GTD/inbox.org")) (org-agenda-list t )
;; 关闭其它窗口 ;;(delete-other-windows) 



;;===================================================================
;;可以被加载到 init.el
(provide 'init-org)