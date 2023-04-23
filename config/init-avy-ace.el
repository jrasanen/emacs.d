(use-package avy
  :straight t
  :bind (("M-s" . avy-goto-char-timer)
         ("M-g f" . avy-goto-line)
         ("M-g w" . avy-goto-word-1)
         ("M-g e" . avy-goto-word-0)
         ("C-c C-j" . avy-resume)))

(use-package ace-window
  :straight t
  :bind (("M-o" . ace-window)))

(use-package ace-jump-mode
  :straight t
  :bind (("C-c SPC" . ace-jump-mode)))

(use-package ace-link
  :straight t
  :config
  (ace-link-setup-default))

(use-package ace-jump-buffer
  :straight t
  :bind (("C-x b" . ace-jump-buffer)))

(provide 'init-avy-ace)