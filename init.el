;; Emacs 29 configuration for Linux and macOS
(toggle-debug-on-error 1)

;; Packages might have warnings which is annoying
(setq warning-minimum-level :error)
(show-paren-mode 1)
(setq-default indent-tabs-mode nil)
(savehist-mode 1)
(save-place-mode 1)
(desktop-save-mode 1)
(setq desktop-save-mode t)
(setq desktop-restore-frames nil)
(setq max-lisp-eval-depth 9999)
(setq undo-limit 40000
      undo-outer-limit 8000000
      undo-strong-limit 100000)

;; Bootstrap straight.el
(setq straight-repository-branch "develop")
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 6))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

;; Integrate straight.el with use-package
(straight-use-package 'use-package)
(setq straight-use-package-by-default t)

;; Load separate configuration files
(add-to-list 'load-path (expand-file-name "config" user-emacs-directory))

(require 'init-packages)
(require 'init-dashboard)
(require 'init-marginalia)
(require 'init-ui)
(require 'init-lsp)
(require 'init-tree-sitter)
(require 'init-treemacs)
(require 'init-multiple-cursors)
(require 'init-copilot)
(require 'init-projectile)
(require 'init-flycheck)
(require 'init-company)
(require 'init-elixir)
(require 'init-theme)
(require 'init-magit)
(require 'init-keybindings)
(require 'init-expand-region)
(require 'init-yaml)
(require 'init-recovery)
(require 'init-moody)
(require 'init-general)

(provide 'init)
;;; init.el ends here
