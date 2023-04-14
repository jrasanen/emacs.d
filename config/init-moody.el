;;; -*- lexical-binding: t; -*-
;;; init-moody.el --- Summary

(use-package moody
  :straight t
  :ensure t
  :config
  (setq x-underline-at-descent-line t)
  (moody-replace-mode-line-buffer-identification)
  (moody-replace-vc-mode)
  (moody-replace-eldoc-minibuffer-message-function))

(use-package minions
  :straight t
  :ensure t
  :defer nil
  :init (minions-mode))

(when (autoloadp (symbol-function 'glasses-mode))
  (cl-pushnew 'glasses-mode minor-mode-list))

(provide 'init-moody)
;;; init-moody.el ends here
