;;
;; Temp files
;; 
;; Set up a directory for temporary files
(setq my-temporary-files-directory (expand-file-name "temp" user-emacs-directory))

;; Create the temporary files directory if it doesn't exist
(unless (file-exists-p my-temporary-files-directory)
  (make-directory my-temporary-files-directory))

;; Store auto-save files in the temporary files directory
(setq auto-save-file-name-transforms `((".*" ,(concat my-temporary-files-directory "/\\1") t)))

;; Store backup files in the temporary files directory
(setq backup-directory-alist `((".*" . ,my-temporary-files-directory)))

;; Set version control for backup files
(setq version-control t)

;; Keep multiple numbered backup files
(setq delete-old-versions t
      kept-new-versions 6
      kept-old-versions 2)


(provide 'init-recovery)
