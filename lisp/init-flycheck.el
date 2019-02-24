;;; init-flycheck.el --- Commentary

;; All flycheck configs

;; TODO: Find a way to organize these because flycheck is needed for many other packages


(require 'flycheck)
(add-hook 'after-init-hook #'global-flycheck-mode)


(provide 'init-flycheck)
