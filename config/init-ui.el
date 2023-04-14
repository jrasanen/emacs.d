;; Disabling things
(menu-bar-mode -1)
(tool-bar-mode -1)
(toggle-scroll-bar -1)

;; Enable window-divider-mode
(window-divider-mode)

;; Customize window divider colors
(custom-set-faces
  '(window-divider ((t (:foreground "gray40")))))

;; Customize window divider width
(setq window-divider-default-right-width 1)
(setq window-divider-default-places 'right-only)

(use-package all-the-icons
  :if (display-graphic-p))

(add-to-list 'default-frame-alist '(ns-transparent-titlebar . t))
(add-to-list 'default-frame-alist '(ns-appearance . dark))

(provide 'init-ui)