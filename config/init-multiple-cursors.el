;; Configure Multiple Cursors
(use-package multiple-cursors
  :ensure t
  :straight t
  :bind (("H-SPC" . set-rectangular-region-anchor) 
         ("C-M-SPC" . set-rectangular-region-anchor) 
         ("C->" . mc/mark-next-like-this) 
         ("C-<" . mc/mark-previous-like-this) 
         ("C-c C->" . mc/mark-all-like-this) 
         ("C-c C-SPC" . mc/edit-lines)))
(provide 'init-multiple-cursors)
;;; init-multiple-cursors.el ends here
