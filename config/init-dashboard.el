(use-package page-break-lines
  :ensure t
  :straight t)

(use-package all-the-icons
  :ensure t
  :straight t)

(use-package dashboard
  :ensure t
  :straight t
  :config
  (dashboard-setup-startup-hook))

(setq initial-buffer-choice (lambda () (get-buffer-create "*dashboard*")))

(setq dashboard-items '((recents  . 10)
                        (projects . 5)))

(setq dashboard-set-footer nil)
(setq dashboard-set-heading-icons nil)
(setq dashboard-set-file-icons t)
(setq dashboard-set-navigator t)

(provide 'init-dashboard)
;;; init-dashboard.el ends here