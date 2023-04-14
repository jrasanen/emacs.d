(use-package magit
  :ensure t
  :straight t
  :bind (("C-x g" . magit-status)
         ("C-x C-g" . magit-status)))


(use-package git-gutter
  :ensure t
  :straight t
  :init (global-git-gutter-mode t))

(provide 'init-magit)