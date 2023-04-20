(use-package helpful
  :straight t
  :ensure t)
(global-set-key (kbd "C-h f") #'helpful-callable)
(global-set-key (kbd "C-h v") #'helpful-variable)
(global-set-key (kbd "C-h k") #'helpful-key)
(global-set-key (kbd "C-h x") #'helpful-command)
(global-set-key (kbd "C-h C-d") #'helpful-at-point)
(global-set-key (kbd "C-h F") #'helpful-function)
(provide 'init-helpful)
;;; init-helpful.el ends here
