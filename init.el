;;; Code:
(defvar package-list
  '(
(abyss-theme afternoon-theme company-auctex auctex company-bibtex company-c-headers company-math company-reftex company doom-themes esup fireplace flatland-black-theme flatland-theme flatui-dark-theme flatui-theme flycheck-tip flyspell-correct-helm flyspell-correct helm-descbinds helm-flycheck flycheck helm-flyspell helm-fuzzier helm-fuzzy-find helm-ispell helm-ls-git helm-org helm-org-rifle helm-spotify-plus helm-system-packages helm helm-core helpful elisp-refs f dash-functional highlight-symbol idea-darkula-theme indent-guide loop magithub ghub+ apiwrap ghub magit git-commit markdown-mode math-symbol-lists multi ob-browser org-alert org-autolist org-babel-eval-in-repl ess julia-mode matlab-mode eval-in-repl ace-window avy org-beautify-theme org-brain org org-ehtml org-gcal alert log4e gntp org-journal org-journal-list paredit parsebib pdf-tools pkg-info epl popup pulseaudio-control request-deferred request deferred s smartparens dash tablist transient treepy volatile-highlights web-server which-key with-editor async yasnippet-snippets yatemplate yasnippet)
))
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/"))
(package-initialize)
(add-to-list 'load-path "~/.emacs.d/elpa/")
(add-to-list 'load-path "~/.emacs.d/lisp/")
(tool-bar-mode -1)
(blink-cursor-mode -1)
(setq inhibit-startup-screen t)
(setq debug-on-error t)
(scroll-bar-mode t)
(set-scroll-bar-mode 'right)
(add-hook 'after-init-hook 'global-company-mode)

;;(require 'init-exwm "~/.emacs.d/lisp/init-exwm.el")
(require 'setup-helm)
(require 'setup-latex)
(require 'setup-programming)
(require 'setup-editing)
(require 'setup-convenience)
(require 'setup-external)
(require 'setup-data)
(require 'setup-faces)
(require 'setup-help)
(require 'init-pdf-view)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   ["#1B2229" "#BF616A" "#A3BE8C" "#ECBE7B" "#8FA1B3" "#c678dd" "#46D9FF" "#DFDFDF"])
 '(ansi-term-color-vector
   [unspecified "#2d2a2e" "#ff6188" "#a9dc76" "#ffd866" "#78dce8" "#ab9df2" "#ff6188" "#fcfcfa"] t)
 '(compilation-message-face (quote default))
 '(custom-enabled-themes (quote (doom-one)))
 '(custom-safe-themes
   (quote
    ("423435c7b0e6c0942f16519fa9e17793da940184a50201a4d932eafe4c94c92d" "fe76f3d5094967034192f6a505085db8db6deb0e135749d9a54dc488d6d3ee2f" "5e0b63e0373472b2e1cf1ebcc27058a683166ab544ef701a6e7f2a9f33a23726" "a9c619535d63719a15f22e3c450a03062d3fed1e356ef96d33015849c4c43946" "41039913efab185af1ec1b13ff4df36d6941994d5e3dee39791f30fcd94b42be" "5c9a906b076fe3e829d030a404066d7949e2c6c89fc4a9b7f48c054333519ee7" "e7666261f46e2f4f42fd1f9aa1875bdb81d17cc7a121533cad3e0d724f12faf2" "9d54f3a9cf99c3ffb6ac8e84a89e8ed9b8008286a81ef1dbd48d24ec84efb2f1" "a4b9eeeabde73db909e6b080baf29d629507b44276e17c0c411ed5431faf87dd" "a4fa3280ffa1f2083c5d4dab44a7207f3f7bcb76e720d304bd3bd640f37b4bef" "c6b93ff250f8546c7ad0838534d46e616a374d5cb86663a9ad0807fd0aeb1d16" "92d8a13d08e16c4d2c027990f4d69f0ce0833c844dcaad3c8226ae278181d5f3" "96998f6f11ef9f551b427b8853d947a7857ea5a578c75aa9c4e7c73fe04d10b4" "c48551a5fb7b9fc019bf3f61ebf14cf7c9cdca79bcb2a4219195371c02268f11" "987b709680284a5858d5fe7e4e428463a20dfabe0a6f2a6146b3b8c7c529f08b" "e0d42a58c84161a0744ceab595370cbe290949968ab62273aed6212df0ea94b4" "3cd28471e80be3bd2657ca3f03fbb2884ab669662271794360866ab60b6cb6e6" "3cc2385c39257fed66238921602d8104d8fd6266ad88a006d0a4325336f5ee02" "e9776d12e4ccb722a2a732c6e80423331bcb93f02e089ba2a4b02e85de1cf00e" "72a81c54c97b9e5efcc3ea214382615649ebb539cb4f2fe3a46cd12af72c7607" "58c6711a3b568437bab07a30385d34aacf64156cc5137ea20e799984f4227265" "3d5ef3d7ed58c9ad321f05360ad8a6b24585b9c49abcee67bdcbb0fe583a6950" "b3775ba758e7d31f3bb849e7c9e48ff60929a792961a2d536edec8f68c671ca5" "9b59e147dbbde5e638ea1cde5ec0a358d5f269d27bd2b893a0947c4a867e14c1" "63af2870d82065ce90d4c34054aa0a0e524824e9865af9f90f3d6987e61d756a" "6cbf6003e137485fb3f904e76fb15bc48abc386540f43f54e2a47a9884e679f6" "5091eadbb87fa0a168a65f2c3e579d1a648d764f12ab9d3ab7bdefca709cd2a5" "32fd809c28baa5813b6ca639e736946579159098d7768af6c68d78ffa32063f4" "dc677c8ebead5c0d6a7ac8a5b109ad57f42e0fe406e4626510e638d36bcc42df" "1ca1f43ca32d30b05980e01fa60c107b02240226ac486f41f9b790899f6f6e67" "15ba8081651869ec689c9004288bed79003de5b4ee9c51a9d4a208d9e3439706" "eb94e44599a45c495ad472ad551a40b87cbc4bae9631211e7a78d72b102c61b1" "a02836a5807a687c982d47728e54ff42a91bc9e6621f7fe7205b0225db677f07" "2540689fd0bc5d74c4682764ff6c94057ba8061a98be5dd21116bf7bf301acfb" "4b0b568d63b1c6f6dddb080b476cfba43a8bbc34187c3583165e8fb5bbfde3dc" "1897b97f63e91a792e8540c06402f29d5edcbfb0aafd64b1b14270663d6868ee" "bc99493670a29023f99e88054c9b8676332dda83a37adb583d6f1e4c13be62b8" "b60f08ddc98a95485ec19f046a81d5877b26ab80a67782ea5b91a00ea4f52170" "0fe9f7a04e7a00ad99ecacc875c8ccb4153204e29d3e57e9669691e6ed8340ce" "4a9f595fbffd36fe51d5dd3475860ae8c17447272cf35eb31a00f9595c706050" "669e05b25859b9e5b6b9809aa513d76dd35bf21c0f16d8cbb80fb0727dc8f842" "8c75e2bdf8d1293c77a752dd210612cfb99334f7edd360a42a58a8497a078b35" "4639288d273cbd3dc880992e6032f9c817f17c4a91f00f3872009a099f5b3f84" "2296db63b1de14e65390d0ded8e2b5df4b9e4186f3251af56807026542a58201" "09cadcc2784baa744c6a7c5ebf2a30df59c275414768b0719b800cabd8d1b842" "420689cc31d01fe04b8e3adef87b8838ff52faa169e69ca4e863143ae9f3a9f9" "8b4d8679804cdca97f35d1b6ba48627e4d733531c64f7324f764036071af6534" "392395ee6e6844aec5a76ca4f5c820b97119ddc5290f4e0f58b38c9748181e8d" "9b35c097a5025d5da1c97dba45fed027e4fb92faecbd2f89c2a79d2d80975181" "3e160974b9e3e1b53270d1fb5bbaf56f0c689017e177972f72584bf096efc4cc" "54449a089fc2f95f99ebc9b9b6067c802532fd50097cf44c46a53b4437d5c6cc" "e47c0abe03e0484ddadf2ae57d32b0f29f0b2ddfe7ec810bd6d558765d9a6a6c" "2d1fe7c9007a5b76cea4395b0fc664d0c1cfd34bb4f1860300347cdad67fb2f9" "1c082c9b84449e54af757bcae23617d11f563fc9f33a832a8a2813c4d7dfb652" "93a0885d5f46d2aeac12bf6be1754faa7d5e28b27926b8aa812840fe7d0b7983" "100e7c5956d7bb3fd0eebff57fde6de8f3b9fafa056a2519f169f85199cc1c96" "6b2636879127bf6124ce541b1b2824800afc49c6ccd65439d6eb987dbf200c36" "7e78a1030293619094ea6ae80a7579a562068087080e01c2b8b503b27900165c" "3e335d794ed3030fefd0dbd7ff2d3555e29481fe4bbb0106ea11c660d6001767" "6749346a23542aad64e81ac371c32a7c88d1e9120c310533d4007f3461dfb145" "e1943fd6568d49ec819ee3711c266a8a120e452ba08569045dd8f50cc5ec5dd3" "35b000995eb4a526249078664d91b056feab7e96e81b2f226a0d9cad7f0a416e" "11986184025c9e658eeff90e95ab8e9592f40b3564a5854f9ce1eab1804abd79" "cc0dbb53a10215b696d391a90de635ba1699072745bf653b53774706999208e3" "4780d7ce6e5491e2c1190082f7fe0f812707fc77455616ab6f8b38e796cbffa9" "39dd7106e6387e0c45dfce8ed44351078f6acd29a345d8b22e7b8e54ac25bac4" "cab317d0125d7aab145bc7ee03a1e16804d5abdfa2aa8738198ac30dc5f7b569" "d1ede12c09296a84d007ef121cd72061c2c6722fcb02cb50a77d9eae4138a3ff" "bd7b7c5df1174796deefce5debc2d976b264585d51852c962362be83932873d9" "f738c3eb5cfc7e730fea413f9cd8ba0624bd8b4837451660fe169f13f77c7814" "732b807b0543855541743429c9979ebfb363e27ec91e82f463c91e68c772f6e3" "a24c5b3c12d147da6cef80938dca1223b7c7f70f2f382b26308eba014dc4833a" default)))
 '(exwm-systemtray-height 12)
 '(exwm-systemtray-icon-gap 1)
 '(face-font-family-alternatives
   (quote
    (("Open Sans" "Symbola" "Noto Sans Symbols2")
     ("Monospace Serif" "Courier 10 Pitch" "Consolas" "Courier Std" "FreeMono" "Nimbus Mono L" "courier" "fixed")
     ("courier" "CMU Typewriter Text" "fixed")
     ("Sans Serif" "helv" "helvetica" "arial" "fixed")
     ("helv" "helvetica" "arial" "fixed"))))
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
 '(hl-paren-background-colors (quote ("#2492db" "#95a5a6" nil)))
 '(hl-paren-colors (quote ("#ecf0f1" "#ecf0f1" "#c0392b")))
 '(hl-sexp-background-color "#1c1f26")
 '(jdee-db-active-breakpoint-face-colors (cons "#1B2229" "#D08770"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#1B2229" "#A3BE8C"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#1B2229" "#4f5b66"))
 '(jdee-server-dir "/home/dragomundo/.emacs.d/jars/")
 '(linum-format " %5i ")
 '(magit-diff-use-overlays nil)
 '(objed-cursor-color "#cc6666")
 '(package-selected-packages
   (quote
    (flatland-black-theme flatland-theme flatui-dark-theme flatui-theme idea-darkula-theme which-key company company-auctex company-bibtex company-c-headers company-math company-reftex helm-flycheck helm-fuzzy-find helm-ispell helm-org helm-org-rifle helm-spotify-plus ob-browser org org-alert org-autolist org-babel-eval-in-repl org-beautify-theme org-brain org-ehtml org-gcal org-journal org-journal-list fireplace esup indent-guide auctex pulseaudio-control doom-themes helm-descbinds helm-flyspell helm-ls-git flyspell-correct-helm helm-fuzzier flycheck-tip helm-system-packages helpful highlight-symbol magit magithub nyan-mode smartparens volatile-highlights yasnippet yasnippet-snippets yatemplate helm afternoon-theme abyss-theme pdf-tools flycheck exwm)))
 '(pdf-view-midnight-colors (cons "#1d1f21" "#c5c8c6"))
 '(pos-tip-background-color "#FFFACE")
 '(pos-tip-foreground-color "#272822")
 '(ps-font-family (quote Monospace))
 '(sml/active-background-color "#34495e")
 '(sml/active-foreground-color "#ecf0f1")
 '(sml/inactive-background-color "#dfe4ea")
 '(sml/inactive-foreground-color "#34495e")
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
