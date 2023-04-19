;; Configure Elixir

;; Configure web-mode for Elixir templates
(use-package web-mode
  :ensure t
  :straight t
  :custom
  (web-mode-markup-indent-offset 2)
  (web-mode-css-indent-offset 2)
  (web-mode-code-indent-offset 2))

(use-package js
  :custom
  (js-indent-level 2))

(use-package apprentice
  :straight (:host github :repo "Sasanidas/Apprentice" :files ("*.el"))
  :ensure t)

;; Configure elixir-ts-mode and heex-ts-mode
(use-package elixir-ts-mode
  :ensure t
  :straight t)

(use-package heex-ts-mode
  :ensure t
  :straight t
  :hook (web-mode . (lambda ()
                      (when (string-match-p "\\.heex\\'" (buffer-file-name))
                        (heex-ts-mode)))))

(defun my/lsp-format-elixir-buffer ()
  "Format the current Elixir buffer using LSP if it's in `elixir-mode`."
  (when (memq major-mode '(elixir-ts-mode heex-ts-mode))
    (if lsp-mode
      (lsp-format-buffer)
      (elixir-format))))

(add-hook 'before-save-hook #'my/lsp-format-elixir-buffer)


;;
;; Word wrap settings
;;
(setq-default fill-column 100)

(defun my/elixir-ts-auto-fill-setup ()
  (when (memq major-mode '(elixir-ts-mode heex-ts-mode))
    (set-fill-column fill-column)
    (auto-fill-mode 1)))

(add-hook 'elixir-ts-mode-hook #'my/elixir-ts-auto-fill-setup)


(provide 'init-elixir)
;;; init-elixir.el ends here
