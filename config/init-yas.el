(use-package yasnippet
  :ensure t
  :straight t)

(use-package yasnippet-snippets
  :ensure t
  :straight)

(setq yas-snippet-dirs 
  (append yas-snippet-dirs
    '("~/.emacs.d/yas"))) 

(provide 'init-yas)