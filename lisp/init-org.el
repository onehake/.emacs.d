;;------------------------------ org-mode--------------------------------------------
(require 'org)

(setq src-fontify-natively t)

(setq org-agenda-files '("~/org"))
(global-set-key (kbd "C-c a") 'org-agenda)

(setq org-hide-leading-stars t)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done 'time)

;; �Զ���ʾ�ճ̱�
;;(setq org-agenda-files (list "~/GTD/inbox.org")) (org-agenda-list t )
;; �ر��������� ;;(delete-other-windows) 



;;===================================================================
;;���Ա����ص� init.el
(provide 'init-org)