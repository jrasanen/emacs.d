(use-package nyan-mode
  :ensure t
  :straight t
  :defer 60
  :if (display-graphic-p)
  :config
  (nyan-mode +1))

(setq nyan-bar-length 10)

(use-package hide-mode-line
  :straight t
  :ensure t)

(provide 'init-nyan-mode)