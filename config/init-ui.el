;; Disabling things
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; I hate the bell
(setq ring-bell-function 'ignore)

;; Enable window-divider-mode
(window-divider-mode)

;; Customize window divider colors
(custom-set-faces
  '(window-divider ((t (:foreground "gray40")))))

;; Customize window divider width
(setq window-divider-default-right-width 1)
(setq window-divider-default-places 'right-only)

(add-to-list 'default-frame-alist '(ns-transparent-titlebar . t))
(add-to-list 'default-frame-alist '(ns-appearance . dark))

(provide 'init-ui)