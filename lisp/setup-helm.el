;;; package --- Summary:
;;; Commentary:
;; helm configuration file
;;; Code:
(require 'helm)
(require 'helm-config)
(require 'helm-ls-git)

(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action) ; rebind tab to run persistent action
(define-key helm-map (kbd "C-i") 'helm-execute-persistent-action) ; make TAB work in terminal
(define-key helm-map (kbd "C-z")  'helm-select-action) ; list actions using C-z
;;-------------------------
;; HELM-LS-GIT
;;-------------------------
(global-set-key (kbd "C-<f6>") 'helm-ls-git-ls) ;;search git repo
(global-set-key (kbd "C-x C-d") 'helm-browse-project) ;; also search project
;;-----------------------------------
;;   HELM-DESCBINDS
;;-----------------------------------
(require 'helm-descbinds)
(helm-descbinds-mode)
;;-----------------------------------
;;   HELM-FLYSPELL
;;-----------------------------------
(require 'helm-flyspell)
(define-key flyspell-mode-map (kbd "C-;") 'helm-flyspell-correct)


(when (executable-find "curl")
  (setq helm-google-suggest-use-curl-p t))

(setq helm-split-window-in-side-p           t ; open helm buffer inside current window, not occupy whole other window
      helm-move-to-line-cycle-in-source     t ; move to end or beginning of source when reaching top or bottom of source.
      helm-ff-search-library-in-sexp        t ; search for library in `require' and `declare-function' sexp.
      helm-scroll-amount                    8 ; scroll 8 lines other window using M-<next>/M-<prior>
      helm-ff-file-name-history-use-recentf t
      helm-echo-input-in-header-line t)

(defun helm-hide-minibuffer-maybe ()
  "Hide minibuffer in Helm session if we use the header line as input field."
  (when (with-helm-buffer helm-echo-input-in-header-line)
    (let ((ov (make-overlay (point-min) (point-max) nil nil t)))
      (overlay-put ov 'window (selected-window))
      (overlay-put ov 'face
                   (let ((bg-color (face-background 'default nil)))
                     `(:background ,bg-color :foreground ,bg-color)))
      (setq-local cursor-type nil))))


(add-hook 'helm-minibuffer-set-up-hook
          'helm-hide-minibuffer-maybe)

(setq helm-autoresize-max-height 0)
(setq helm-autoresize-min-height 20)
(helm-autoresize-mode t)

(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(setq helm-locate-fuzzy-match t)
(setq helm-M-x-fuzzy-match t)
(setq helm-buffers-fuzzy-matching t
      helm-recenf-fuzzy-match     t)
(helm-mode 1)
(require 'helm-system-packages)

(provide 'setup-helm)
;;; setup-helm.el ends here
