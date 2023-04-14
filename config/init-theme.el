;; Install and configure JetBrains Mono font
(defun set-jetbrains-mono-font (frame)
  (set-frame-font "JetBrains Mono-12" nil t))

(if (daemonp)
    (add-hook 'after-make-frame-functions #'set-jetbrains-mono-font)
  (set-jetbrains-mono-font nil))

;; Define light and dark theme switching functions
(defvar light-theme 'leuven)
(defvar dark-theme 'wombat)

(defun light ()
  "Switch to the light theme."
  (interactive)
  (load-theme light-theme t))

(defun dark ()
  "Switch to the dark theme."
  (interactive)
  (load-theme dark-theme t))

;; Set the initial theme
(load-theme dark-theme t)

(provide 'init-theme)
