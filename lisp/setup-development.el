(add-hook 'emacs-lisp-mode-hook 'turn-on-eldoc-mode)
(add-hook 'lisp-interaction-mode-hook 'turn-on-eldoc-mode)
(add-hook 'ielm-mode-hook 'turn-on-eldoc-mode)
(setq c-basic-offset 4)
(setq gc-cons-threshold 100000000)
(provide 'setup-development)
;;; setup-development.el ends here
