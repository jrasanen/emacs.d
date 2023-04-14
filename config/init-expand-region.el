(use-package expand-region
  :straight t
  :bind (("C-=" . er/expand-region)
         ("M-<up>" . er/expand-region)))

(provide 'init-expand-region)