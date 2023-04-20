(global-unset-key (kbd "C-z"))

(defun my/insert-newline-below ()
  "Insert a new line below the current line and move the cursor."
  (interactive)
  (end-of-line)
  (newline-and-indent))

(cond
 ((eq system-type 'darwin)
  (setq mac-command-modifier 'meta)
  (setq mac-option-modifier 'super)
  (setq mac-right-command-modifier 'left)
  (setq mac-right-option-modifier 'left)
  (global-set-key (kbd "s-s") 'save-buffer)
  (global-set-key (kbd "s-f") 'consult-line)
  (global-set-key (kbd "s-F") 'consult-ripgrep)
  (global-set-key (kbd "s-p") 'project-find-file)
  (global-unset-key (kbd "M-z"))
  (global-set-key (kbd "M-z")   'undo-fu-only-undo)
  (global-set-key (kbd "M-S-z") 'undo-fu-only-redo)
  (global-set-key (kbd "M-c") 'kill-ring-save)
  (global-set-key (kbd "M-v") 'yank)
  (global-set-key (kbd "s-SPC") 'mark-sexp))
 (t
  (global-set-key (kbd "C-s") 'save-buffer)
  (global-set-key (kbd "C-f") 'consult-line)
  (global-set-key (kbd "C-S-f") 'consult-ripgrep)
  (global-set-key (kbd "C-p") 'project-find-file)
  (global-set-key (kbd "M-d") 'duplicate-dwim)
  (global-set-key (kbd "C-S-<up>") 'move-text-up)
  (global-set-key (kbd "C-S-<down>") 'move-text-down)
  (global-set-key (kbd "C-c") 'kill-ring-save)
  (global-set-key (kbd "C-v") 'yank)
  (global-unset-key (kbd "C-z"))
  (global-set-key (kbd "C-z")   'undo-fu-only-undo)
  (global-set-key (kbd "C-S-z") 'undo-fu-only-redo)
  (global-set-key (kbd "C-d") 'mc/mark-next-like-this)
  (global-set-key (kbd "C-D") 'mc/mark-all-like-this-dwim)
  (global-set-key (kbd "M-p") 'consult-find)
  (global-set-key (kbd "M-RET") 'my/insert-newline-below)
  ))

(global-set-key (kbd "C-o") 'pop-global-mark)
(global-set-key (kbd "M-RET") 'my/insert-newline-below)
(define-key key-translation-map (kbd "ESC") (kbd "C-g"))

(provide 'init-keybindings)
