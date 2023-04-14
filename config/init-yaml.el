(use-package yaml-mode
  :straight t
  :mode ("\\.yml\\'" "\\.yaml\\'")
  :config
  (add-hook 'yaml-mode-hook
            (lambda ()
              (define-key yaml-mode-map (kbd "C-m") 'newline-and-indent))))

(provide 'init-yaml)