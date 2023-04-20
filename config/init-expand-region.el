(use-package expand-region
  :straight t
  :bind (("C-=" . er/expand-region)
         ("M-<up>" . er/expand-region)))


(use-package vimish-fold
  :straight t)

(provide 'init-expand-region)