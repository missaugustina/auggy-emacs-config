(defvar emacs-conf-path
  "~/.emacs.d"
  "The full path to the emacs config directory")

;; I use cl for a lot of things, so just load it right away
(require 'cl)

(dolist (file (directory-files emacs-conf-path t "^[0-9]+.*\\.el$"))
  (load file))

;; FIXME: this is pretty fucked up for a cli emacs. especially on dark
;; background
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 100 :width normal :foundry "bitstream" :family "Bitstream Vera Sans Mono"))))
 '(cperl-array-face ((t (:foreground "CadetBlue1" :weight bold))))
 '(cperl-hash-face ((((class color) (background dark)) (:foreground "DarkGoldenrod" :weight bold))))
 '(cperl-invalid-face default)
 '(diff-added ((t (:inherit diff-changed :foreground "green"))))
 '(diff-removed ((t (:inherit diff-changed :foreground "red"))))
 '(erc-current-nick-face ((t (:foreground "green3" :weight bold))))
 '(erc-input-face ((t (:foreground "brown1"))))
 '(erc-my-nick-face ((t (:foreground "brown1" :weight bold))))
 '(erc-nick-default-face ((t (:weight bold))))
 '(flymake-errline ((((class color) (background light)) (:background "brightred" :weight bold))))
 '(font-lock-builtin-face ((((class color) (min-colors 88) (background light)) (:foreground "orchid3"))))
 '(font-lock-comment-face ((((class color) (min-colors 88) (background light)) (:foreground "firebrick1"))))
 '(font-lock-keyword-face ((((class color) (min-colors 88) (background light)) (:foreground "purple4" :weight bold))))
 '(font-lock-string-face ((((class color) (min-colors 88) (background light)) (:foreground "red2"))))
 '(font-lock-variable-name-face ((((class color) (min-colors 88) (background light)) (:foreground "orange"))))
 '(hl-line ((((type nil)) nil) (t (:inherit highlight))))
 '(mode-line ((t (:background "#222222" :foreground "#bbbbbc" :box (:line-width 1 :color "grey50")))))
 '(mode-line-inactive ((t (:inherit mode-line :background "#222222" :foreground "#bbbbbc" :box (:line-width 1 :color "black")))))
 '(rcirc-dim-nick ((t (:inherit default :foreground "grey" :strike-through t))))
 '(region ((((class color) (min-colors 88) (background light)) (:background "darkgrey")))))
