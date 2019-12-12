;;
;; (require 'magit)
;; (set-default 'magit-stage-all-confirm nil)
;; (add-hook 'magit-mode-hook 'magit-load-config-extensions)

;; ;; full screen magit-status
;; (defadvice magit-status (around magit-fullscreen activate)
;;   (window-configuration-to-register :magit-fullscreen)
;;   ad-do-it
;;   (delete-other-windows))

;; (global-unset-key (kbd "C-x g"))
;; (global-set-key (kbd "C-x g h") 'magit-log)
;; (global-set-key (kbd "C-x g f") 'magit-file-log)
;; (global-set-key (kbd "C-x g b") 'magit-blame-mode)
;; (global-set-key (kbd "C-x g m") 'magit-branch-manager)
;; (global-set-key (kbd "C-x g c") 'magit-branch)
;; (global-set-key (kbd "C-x g s") 'magit-status)
;; (global-set-key (kbd "C-x g r") 'magit-reflog)
;; (global-set-key (kbd "C-x g t") 'magit-tag)
;;; Code

(require 'flycheck)
(require 'flycheck-tip)
(require 'company)


(add-hook 'emacs-lisp-mode-hook 'turn-on-eldoc-mode)
(add-hook 'lisp-interaction-mode-hook 'turn-on-eldoc-mode)
(add-hook 'ielm-mode-hook 'turn-on-eldoc-mode)

(add-to-list 'auto-mode-alist
	     '("\\.l\\'" . c-mode)
	     '("\\.y\\'" . c-mode))
;;---------------------------------------------
;;     C++-MODE AND C MODE INDENTATION
;;-----------------------------------

(add-hook 'after-init-hook #'global-flycheck-mode)
(add-hook 'c++-mode-hook (lambda () (setq flycheck-gcc-language-standard "c++17")))
(add-hook 'c-mode-common-hook`
          (lambda ()
            (setq c-basic-offset 4)
            (setq indent-tabs-mode nil)
            (setq tab-width 4)
            (setq standard-indent 4)
            (setq c-tab-always-indent t)
            (setq c-basic-indent 4)))

(eval-after-load 'cc-mode
  '(progn
     (add-hook 'c++-mode-hook #'my-c++-indent-setup)
     (define-key c-mode-base-map "/" 'self-insert-command)
     (define-key c-mode-base-map "*" 'self-insert-command)))


(provide 'setup-programming)
;;; setup-programming.el ends here


