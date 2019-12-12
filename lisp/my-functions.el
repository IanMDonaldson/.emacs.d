;;; Commentary
;;; package --- Summary:

;;; Code:
(provide 'my-functions)
(defun dragomundo/swap-windows (&optional w1 w2)
  "If 2 windows are up, swap them.
Else if W1 is a window, swap it with current window.
If W2 is a window too, swap both."
  (interactive)
  (unless (or (= 2 (count-windows))
              (windowp w1)
              (windowp w2))
    (error "Ambiguous window selection"))
  (let* ((w1 (or w1 (car (window-list))))
         (w2 (or w2
                 (if (eq w1 (car (window-list)))
                     (nth 1 (window-list))
                   (car (window-list)))))
         (b1 (window-buffer w1))
         (b2 (window-buffer w2))
         (s1 (window-start w1))
         (s2 (window-start w2)))
    (with-temp-buffer
      ;; Some buffers like EXWM buffers can only be in one live buffer at once.
      ;; Switch to a dummy buffer in w2 so that we don't display any buffer twice.
      (set-window-buffer w2 (current-buffer))
      (set-window-buffer w1 b2)
      (set-window-buffer w2 b1))
    (set-window-start w1 s2)
    (set-window-start w2 s1))
  (select-window w1))
(global-set-key (kbd "C-x \\") 'swap-windows)

(defun dragomundo/swap-windows-left ()
  "Swap current window with the window to the left."
  (interactive)
  (dragomundo/swap-windows (window-in-direction 'left)))
(defun dragomundo/swap-windows-below ()
  "Swap current window with the window below."
  (interactive)
  (dragomundo/swap-windows (window-in-direction 'below)))
(defun dragomundo/swap-windows-above ()
  "Swap current window with the window above."
  (interactive)
  (dragomundo/swap-windows (window-in-direction 'above)))
(defun dragomundo/swap-windows-right ()
  "Swap current window with the window to the right."
  (interactive)
  (dragomundo/swap-windows (window-in-direction 'right)))

(defun dragomundo/switch-to-last-buffer ()
  "Switch to last open buffer in current window."
  (interactive)
  (switch-to-buffer (other-buffer (current-buffer) 1)))


(defun dragomundo/toggle-window-split ()
  "Switch between vertical and horizontal split.
It only works for frames with exactly two windows."
  (interactive)
  (if (= (count-windows) 2)
      (let* ((this-win-buffer (window-buffer))
             (next-win-buffer (window-buffer (next-window)))
             (this-win-edges (window-edges (selected-window)))
             (next-win-edges (window-edges (next-window)))
             (this-win-2nd (not (and (<= (car this-win-edges)
                                         (car next-win-edges))
                                     (<= (cadr this-win-edges)
                                         (cadr next-win-edges)))))
             (splitter
              (if (= (car this-win-edges)
                     (car (window-edges (next-window))))
                  'split-window-horizontally
                'split-window-vertically)))
        (delete-other-windows)
        (let ((first-win (selected-window)))
          (funcall splitter)
          (if this-win-2nd (other-window 1))
          (set-window-buffer (selected-window) this-win-buffer)
          (set-window-buffer (next-window) next-win-buffer)
          (select-window first-win)
          (if this-win-2nd (other-window 1))))))
(global-set-key (kbd "C-x C-\\") 'toggle-window-split)
(provide 'my-functions)
;;; functions.el ends here
