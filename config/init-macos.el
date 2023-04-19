
;; ls --dired doesn't work with macOS
(when (string= system-type "darwin")       
  (setq dired-use-ls-dired nil))

(provide 'init-macos)
;;; init-macos.el ends here
