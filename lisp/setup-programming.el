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

(require 'xcscope)
(require 'helm-cscope)
(require 'flycheck)
(require 'auto-complete)
(require 'ac-helm)
(require 'flycheck-tip)
(cscope-setup)
;;-----------------------------------
;;   COMPANY-MODE
;;-----------------------------------
;; (push 'company-rtags company-backends)
;; (global-company-mode)
;; (define-key c-mode-base-map (kbd "<C-tab>") (function company-complete))



;;-------------------------------------
;;   HELM
;;-------------------------------------
(add-hook 'c-mode-hook 'helm-cscope-mode)
(add-hook 'c++-mode-hook 'helm-cscope-mode)
(add-hook 'java-mode-hook 'helm-cscope-mode);; Set key bindings
(eval-after-load "helm-cscope"
  '(progn
     (define-key helm-cscope-mode-map (kbd "M-t") 'helm-cscope-find-symbol)
     (define-key helm-cscope-mode-map (kbd "M-r") 'helm-cscope-find-global-definition)
     (define-key helm-cscope-mode-map (kbd "M-g M-c") 'helm-cscope-find-called-function)
     (define-key helm-cscope-mode-map (kbd "M-g M-p") 'helm-cscope-find-calling-this-funtcion)
     (define-key helm-cscope-mode-map (kbd "M-s") 'helm-cscope-select)))


;;----------------------------
;;   FLYCHECK-RTAGS-FUNCTION
;;----------------------------

;; (defun my-flycheck-rtags-setup ()
;;   "Configure flycheck-rtags for better experience."
;;   (flycheck-select-checker 'rtags)
;;   (setq-local flycheck-check-syntax-automatically nil)
;;   (setq-local flycheck-highlighting-mode nil))
;; (add-hook 'c++-mode-hook #'my-flycheck-rtags-setup)
;; (add-hook 'c++-mode-hook 'rtags-start-process-unless-running)
;; (setq rtags-display-result-backend 'helm)

;; ;;----------------------------
;; ;;   RTAGS-KEYBINDINGS N STUFF
;; ;;----------------------------

;; (setq rtags-autostart-diagnostics t)
;; (rtags-diagnostics)
;; (setq rtags-completions-enabled t)
;; (eval-after-load 'company
;;   '(add-to-list
;;     'company-backend 'company-rtags))

;; (rtags-enable-standard-keybindings)
;; (define-key c-mode-base-map (kbd "M-.") 'rtags-find-symbol-at-point)
;; (define-key c-mode-base-map (kbd "M-,") 'rtags-location-stack-back)
;; (define-key c-mode-base-map (kbd "M-;") 'rtags-find-file)
;; (define-key c-mode-base-map (kbd "C-.") 'rtags-find-symbol)
;; (define-key c-mode-base-map (kbd "C-,") 'rtags-find-references)
;; (define-key c-mode-base-map (kbd "C-<") 'rtags-find-virtuals-at-point)
;; (define-key c-mode-base-map (kbd "M-i") 'rtags-imenu)

(provide 'setup-programming)
;;; setup-programming.el ends here


