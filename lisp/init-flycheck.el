;;; init-flycheck.el --- Commentary

;; All flycheck configs

;; TODO: Find a way to organize these because flycheck is needed for many other packages


(require 'flycheck)
(require 'flycheck-tip)

(add-hook 'after-init-hook #'global-flycheck-mode)
(add-hook 'c++-mode-hook (lambda () (setq flycheck-gcc-language-standard "c++17")))
(defun my-c++-indent-setup ()
  "Heynow."
  '(
    (c-basic-offset . 4)
   (c-comment-only-line-offset . 0)
   (c-hanging-braces-alist
    (brace-list-open)
    (brace-entry-open)
    (substatement-open after)
    (block-close . c-snug-do-while)
    (arglist-cont-nonempty))
   (c-cleanup-list brace-else-brace)
   (c-offsets-alist
    (statement-block-intro . +)
    (knr-argdecl-intro . 0)
    (substatement-open . 0)
    (substatement-label . 0)
    (label . 0)
    (statement-cont . +))))

(eval-after-load 'cc-mode
  '(progn
     (add-hook 'c++-mode-hook #'my-c++-indent-setup)
     (add-hook 'c++-mode-hook #'smartparens-mode)
     (define-key c-mode-base-map "/" 'self-insert-command)
     (define-key c-mode-base-map "*" 'self-insert-command)))


(provide 'init-flycheck)
