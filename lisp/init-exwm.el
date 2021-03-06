;;; init-exwm.el --- Commentary

;;  Exwm configuration file
;;; Code:
(provide 'init-exwm)

(require 'exwm)
(require 'exwm-systemtray)
(exwm-systemtray-enable)
(require 'exwm-config)
(exwm-config-default)
(require 'my-functions)




(exwm-input-set-key (kbd "s-R") #'exwm-reset)
(exwm-input-set-key (kbd "s-x") #'exwm-input-toggle-keyboard)
(exwm-input-set-key (kbd "s-h") #'windmove-left)
(exwm-input-set-key (kbd "s-j") #'windmove-down)
(exwm-input-set-key (kbd "s-k") #'windmove-up)
(exwm-input-set-key (kbd "s-l") #'windmove-right)
(exwm-input-set-key (kbd "s-D") #'kill-this-buffer)
(exwm-input-set-key (kbd "s-b") #'list-buffers)
(exwm-input-set-key (kbd "s-f") #'find-file)

(when (require 'my-functions)
  (exwm-input-set-key (kbd "s-\\") 'dragomundo/toggle-window-split)
  (exwm-input-set-key (kbd "s-H") 'dragomundo/swap-windows-left)
  (exwm-input-set-key (kbd "s-J") 'dragomundo/swap-windows-below)
  (exwm-input-set-key (kbd "s-K") 'dragomundo/swap-windows-above)
  (exwm-input-set-key (kbd "s-L") 'dragomundo/swap-windows-right)
  (exwm-input-set-key (kbd "s-S") 'dragomundo/swap-windows))
;; (setq exwm-input-simulation-keys
;;         '(([?\C-b] . [left])
;;           ([?\C-f] . [right])
;;           ([?\C-p] . [up])
;;           ([?\C-n] . [down])
;;           ([?\C-a] . [home])
;;           ([?\C-e] . [end])
;;           ([?\M-v] . [prior])
;;           ([?\C-v] . [next])
;;           ([?\C-d] . [delete])
;;           ([?\C-k] . [S-end delete])))
;; (defun exwm-config-default ()
;;   "Default configuration of EXWM."
;;   ;; Set the initial workspace number.
;;   (setq exwm-workspace-number 4)
;;   ;; Make class name the buffer name
;;   (add-hook 'exwm-update-class-hook
;;             (lambda ()
;;               (exwm-workspace-rename-buffer exwm-class-name)))
;;   ;; 's-r': Reset
;;   (exwm-input-set-key (kbd "s-r") #'exwm-reset)
;;   ;; 's-w': Switch workspace
;;   (exwm-input-set-key (kbd "s-w") #'exwm-workspace-switch)
;;   ;; 's-N': Switch to certain workspace
;;   (dotimes (i 10)
;;     (exwm-input-set-key (kbd (format "s-%d" i))
;;                         `(lambda ()
;;                            (interactive)
;;                            (exwm-workspace-switch-create ,i))))
;;   ;; 's-&': Launch application
;;   (exwm-input-set-key (kbd "s-&")
;;                       (lambda (command)
;;                         (interactive (list (read-shell-command "$ ")))
;;                         (start-process-shell-command command nil command)))
;;   ;; Line-editing shortcuts
;;   
;;   ;; Enable EXWM
;;   (exwm-enable)
;;   ;; Configure Ido
;;   (exwm-config-ido)
;;   ;; Other configurations
;;   (exwm-config-misc))

;; (defun exwm-config--fix/ido-buffer-window-other-frame ()
;;   "Fix `ido-buffer-window-other-frame'."
;;   (defalias 'exwm-config-ido-buffer-window-other-frame
;;     (symbol-function #'ido-buffer-window-other-frame))
;;   (defun ido-buffer-window-other-frame (buffer)
;;     "This is a version redefined by EXWM.

;; You can find the original one at `exwm-config-ido-buffer-window-other-frame'."
;;     (with-current-buffer (window-buffer (selected-window))
;;       (if (and (derived-mode-p 'exwm-mode)
;;                exwm--floating-frame)
;;           ;; Switch from a floating frame.
;;           (with-current-buffer buffer
;;             (if (and (derived-mode-p 'exwm-mode)
;;                      exwm--floating-frame
;;                      (eq exwm--frame exwm-workspace--current))
;;                 ;; Switch to another floating frame.
;;                 (frame-root-window exwm--floating-frame)
;;               ;; Do not switch if the buffer is not on the current workspace.
;;               (or (get-buffer-window buffer exwm-workspace--current)
;;                   (selected-window))))
;;         (with-current-buffer buffer
;;           (when (derived-mode-p 'exwm-mode)
;;             (if (eq exwm--frame exwm-workspace--current)
;;                 (when exwm--floating-frame
;;                   ;; Switch to a floating frame on the current workspace.
;;                   (frame-selected-window exwm--floating-frame))
;;               ;; Do not switch to exwm-mode buffers on other workspace (which
;;               ;; won't work unless `exwm-layout-show-all-buffers' is set)
;;               (unless exwm-layout-show-all-buffers
;;                 (selected-window)))))))))

;; (defun exwm-config-ido ()
;;   "Configure Ido to work with EXWM."
;;   (ido-mode 1)
;;   (add-hook 'exwm-init-hook #'exwm-config--fix/ido-buffer-window-other-frame))

;; (defun exwm-config-misc ()
;;   "Other configurations."
;;   ;; Make more room
;;   (menu-bar-mode -1)
;;   (tool-bar-mode -1)
;;   (scroll-bar-mode -1)
;;   (fringe-mode -1)


;;; init-exwm.el ends here
