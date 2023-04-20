(use-package undo-fu
  :straight t)

(use-package undo-fu-session
  :straight t)

(setq undo-limit 67108864) ; 64mb.
(setq undo-strong-limit 100663296) ; 96mb.
(setq undo-outer-limit 1006632960) ; 960mb. Note: Emacs uses 100x for the outer limit.

(add-hook 'org-mode-hook #'undo-fu-session-mode)

(provide 'init-undo-fu)