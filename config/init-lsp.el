;; which key
(use-package which-key
  :straight t
  :init
  (which-key-mode)
  :config
  (setq which-key-idle-delay 0.2))

;; https://emacs-lsp.github.io/lsp-mode/page/performance/#use-plists-for-deserialization)
(setq read-process-output-max (* 1024 1024))
(setq lsp-log-io nil) ; if set to true can cause a performance hit
(setq gc-cons-threshold 100000000)

;; Configure LSP
(use-package lsp-mode
  :defer t
  :commands (lsp lsp-deferred)
  :hook
  (elixir-mode . lsp-deferred)
  (elixir-ts-mode . lsp-deferred)
  (heex-ts-mode . lsp-deferred)
  :config
  (lsp-enable-which-key-integration t)
  )

(use-package lsp-ui
  :ensure t
  :after lsp-mode
  :commands lsp-ui-mode
  :init
  (setq lsp-ui-sideline-enable t
        lsp-ui-doc-enable t
        lsp-ui-flycheck-enable t
        lsp-ui-sideline-show-hover t
        lsp-ui-sideline-delay 0.5))

(use-package lsp-treemacs
  :ensure t
  :straight t
  :after lsp)

(use-package consult-lsp
  :ensure t
  :straight t
  :after lsp-mode)

(provide 'init-lsp)
;;; init-lsp.el ends here
