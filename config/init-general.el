;; Configure general
(use-package general
  :straight (:host github :repo "noctuid/general.el" :files ("*.el"))
  :ensure t)

(general-auto-unbind-keys)

(provide 'init-general)
