;;; package --- Summary:
;;; Commentary:

;;; Code:
(require 'saveplace)
(setq-default save-place t)
(require 'pulseaudio-control)
(pulseaudio-control-default-keybindings)
(provide 'setup-data)
;;; setup-data.el ends here
