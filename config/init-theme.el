;; Install themes
(use-package ef-themes
  :straight (:host github :repo "protesilaos/ef-themes" :files ("*.el"))
  :ensure t
  )

(setq ef-themes-mixed-fonts t
      ef-themes-variable-pitch-ui t)

(mapc #'disable-theme custom-enabled-themes)

;; Install and configure JetBrains Mono font
(defun set-jetbrains-mono-font (frame)
  (set-frame-font "JetBrains Mono-16" nil t))

(if (daemonp)
    (add-hook 'after-make-frame-functions #'set-jetbrains-mono-font)
  (set-jetbrains-mono-font nil))

(defvar light-theme 'ef-spring)
(defvar dark-theme 'ef-winter)

(defun light ()
  "Switch to the light theme."
  (interactive)
  (mapc #'disable-theme custom-enabled-themes)
  (load-theme light-theme t))

(defun dark ()
  "Switch to the dark theme."
  (interactive)
  (mapc #'disable-theme custom-enabled-themes)
  (load-theme dark-theme t))

;; Set the initial theme
(load-theme dark-theme t)

(provide 'init-theme)
