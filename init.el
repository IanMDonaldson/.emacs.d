;;; Code:
(setq package-list
      '(
        abyss-theme
        ac-helm
        afternoon-theme
        aggressive-indent
        auto-complete
        clean-aindent-mode
        doom-themes
        flycheck
        flycheck-tip
        flyspell
        flyspell-correct-helm
        helm
        helm-cscope
        helm-descbinds
        helm-flyspell
        helm-fuzzier
        helm-ls-git
        helm-system-packages
        helpful
        highlight-symbol
        magit
        magit
        magithub
        material-theme
        mbo70s-theme
        melancholy-theme
        mellow-theme
        metalheart-theme
        minimal-theme
        monochrome-theme
        monokai-alt-theme
        monokai-theme
        monotropic-theme
        pulseaudio-control
        shell-pop
        smartparens
        term
        treemacs
        treemacs
        treemacs-magit
        volatile-highlights
        xcscope
        yasnippet
        yasnippet-snippets
        yatemplate))
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/")
             '("elpa" . "https://elpa.gnu.org/packages/"))
(add-to-list 'load-path "~/.emacs.d/elpa/")
(add-to-list 'load-path "~/.emacs.d/lisp/")

;;activate packages
(package-initialize)
;; fetch list of packages available
(unless package-archive-contents
  (package-refresh-contents))

;; install missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

;;(require 'init-exwm "~/.emacs.d/lisp/init-exwm.el")
(require 'setup-helm)
(require 'setup-programming)
(require 'setup-editing)
(require 'setup-convenience)
(require 'setup-data)
(require 'setup-faces)
(require 'setup-help)
(require 'init-pdf-view)
(require 'init-aggressive-indent)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   ["#1B2229" "#BF616A" "#A3BE8C" "#ECBE7B" "#8FA1B3" "#c678dd" "#46D9FF" "#DFDFDF"])
 '(compilation-message-face (quote default))
 '(custom-enabled-themes (quote (doom-one)))
 '(custom-safe-themes
   (quote
    ("2d1fe7c9007a5b76cea4395b0fc664d0c1cfd34bb4f1860300347cdad67fb2f9" "1c082c9b84449e54af757bcae23617d11f563fc9f33a832a8a2813c4d7dfb652" "93a0885d5f46d2aeac12bf6be1754faa7d5e28b27926b8aa812840fe7d0b7983" "100e7c5956d7bb3fd0eebff57fde6de8f3b9fafa056a2519f169f85199cc1c96" "6b2636879127bf6124ce541b1b2824800afc49c6ccd65439d6eb987dbf200c36" "7e78a1030293619094ea6ae80a7579a562068087080e01c2b8b503b27900165c" "3e335d794ed3030fefd0dbd7ff2d3555e29481fe4bbb0106ea11c660d6001767" "6749346a23542aad64e81ac371c32a7c88d1e9120c310533d4007f3461dfb145" "e1943fd6568d49ec819ee3711c266a8a120e452ba08569045dd8f50cc5ec5dd3" "35b000995eb4a526249078664d91b056feab7e96e81b2f226a0d9cad7f0a416e" "11986184025c9e658eeff90e95ab8e9592f40b3564a5854f9ce1eab1804abd79" "cc0dbb53a10215b696d391a90de635ba1699072745bf653b53774706999208e3" "4780d7ce6e5491e2c1190082f7fe0f812707fc77455616ab6f8b38e796cbffa9" "39dd7106e6387e0c45dfce8ed44351078f6acd29a345d8b22e7b8e54ac25bac4" "cab317d0125d7aab145bc7ee03a1e16804d5abdfa2aa8738198ac30dc5f7b569" "d1ede12c09296a84d007ef121cd72061c2c6722fcb02cb50a77d9eae4138a3ff" "bd7b7c5df1174796deefce5debc2d976b264585d51852c962362be83932873d9" "f738c3eb5cfc7e730fea413f9cd8ba0624bd8b4837451660fe169f13f77c7814" "732b807b0543855541743429c9979ebfb363e27ec91e82f463c91e68c772f6e3" "a24c5b3c12d147da6cef80938dca1223b7c7f70f2f382b26308eba014dc4833a" default)))
 '(exwm-systemtray-height 12)
 '(exwm-systemtray-icon-gap 1)
 '(fci-rule-color "#3C3D37" t)
 '(highlight-changes-colors (quote ("#FD5FF0" "#AE81FF")))
 '(highlight-tail-colors
   (quote
    (("#3C3D37" . 0)
     ("#679A01" . 20)
     ("#4BBEAE" . 30)
     ("#1DB4D0" . 50)
     ("#9A8F21" . 60)
     ("#A75B00" . 70)
     ("#F309DF" . 85)
     ("#3C3D37" . 100))))
 '(hl-sexp-background-color "#1c1f26")
 '(jdee-db-active-breakpoint-face-colors (cons "#1B2229" "#D08770"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#1B2229" "#A3BE8C"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#1B2229" "#4f5b66"))
 '(jdee-server-dir "/home/dragomundo/.emacs.d/jars/")
 '(magit-diff-use-overlays nil)
 '(package-selected-packages
   (quote
    (bison-mode auctex pulseaudio-control doom-themes company company-auctex company-rtags helm-descbinds helm-flyspell helm-ls-git flyspell-correct-helm helm-fuzzier clean-aindent-mode flycheck-rtags flycheck-tip helm-rtags helm-system-packages helpful highlight-symbol magit magithub nyan-mode rtags smartparens volatile-highlights yasnippet yasnippet-snippets yatemplate ac-helm helm afternoon-theme abyss-theme pdf-tools monotropic-theme monokai-theme monokai-alt-theme monochrome-theme minimal-theme metalheart-theme mellow-theme melancholy-theme mbo70s-theme material-theme flycheck exwm)))
 '(pos-tip-background-color "#FFFACE")
 '(pos-tip-foreground-color "#272822")
 '(ps-font-family (quote Monospace))
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#F92672")
     (40 . "#CF4F1F")
     (60 . "#C26C0F")
     (80 . "#E6DB74")
     (100 . "#AB8C00")
     (120 . "#A18F00")
     (140 . "#989200")
     (160 . "#8E9500")
     (180 . "#A6E22E")
     (200 . "#729A1E")
     (220 . "#609C3C")
     (240 . "#4E9D5B")
     (260 . "#3C9F79")
     (280 . "#A1EFE4")
     (300 . "#299BA6")
     (320 . "#2896B5")
     (340 . "#2790C3")
     (360 . "#66D9EF"))))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   (quote
    (unspecified "#272822" "#3C3D37" "#F70057" "#F92672" "#86C30D" "#A6E22E" "#BEB244" "#E6DB74" "#40CAE4" "#66D9EF" "#FB35EA" "#FD5FF0" "#74DBCD" "#A1EFE4" "#F8F8F2" "#F8F8F0"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'command-history 'disabled t)
