;;; package --- Summary
;;; Commentary:
;;; Code:
(require 'nyan-mode)
(eval-after-load 'setup-programming
  '(progn
     (setq mode-line-format
      (list
       '(:eval (list (nyan-create)))
       ))))

(provide 'setup-environment)
;;; setup-environment.el ends here
