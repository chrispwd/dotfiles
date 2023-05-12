;;; look-and-feel.el -*- lexical-binding: t; -*-

;; Configuration for UI goes here. Modeline styling, themes, etc.
;;; dependencies
(cop-install-package-if-not-already 'all-the-icons)
(cop-install-package-if-not-already 'doom-themes)
(cop-install-package-if-not-already 'doom-modeline)
(cop-install-package-if-not-already 'autothemer)

;;; doom-themes
;; Load custom theme path
(add-to-list 'custom-theme-load-path "~/.config/chrispmacs/themes")
(require 'doom-themes)
(require 'autothemer)
;; config
(setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
      doom-themes-enable-italic nil) ; if nil, italics is universally disabled
;(load-theme 'doom-solarized-dark t)
(load-theme 'doom-tomorrow-night t)
;(load-theme 'catppuccin-mocha t)

;;; modeline
(require 'doom-modeline)
;; Start up the modeline after initialization is finished
(add-hook 'after-init-hook 'doom-modeline-mode)
;; config
(customize-set-variable 'doom-modeline-height 15)
(customize-set-variable 'doom-modeline-bar-width 6)
(customize-set-variable 'doom-modeline-minor-modes t)
(customize-set-variable 'doom-modeline-buffer-file-name-style 'truncate-except-project)

;; Disable line numbers for some modes
(dolist (mode '(org-mode-hook
                term-mode-hook
                vterm-mode-hook
                shell-mode-hook
                eshell-mode-hook
                dired-mode-hook))
  (add-hook mode (lambda () (display-line-numbers-mode 0))))

;;; font settings
(cond
  ((eq system-type 'gnu/linux)
    (defvar cop/default-font-size 120)
    (defvar cop/default-variable-font-size 120))
  ((eq system-type 'darwin)
    (defvar cop/default-font-size 180)
    (defvar cop/default-variable-font-size 180))
  (t
    (message "Config for unknown system type.")))

;; TODO: Put face attributes with their respective modules.
;; The modules are now load-order-dependent because of this
;; (set-face-attribute 'default nil
;;                     :font "Iosevka Term SS03 Light 12"
;;                     :height cop/default-font-size
;;                     :slant 'normal)
;; (set-face-attribute 'font-lock-builtin-face nil
;;                     :font "Iosevka Term SS03 Light 12"
;;                     :slant 'normal)
;; (set-face-attribute 'eglot-highlight-symbol-face nil
;;                     :font "Iosevka Term SS03 Semibold 12"
;;                     :weight 'semi-bold)
;; (set-face-attribute 'font-lock-type-face nil
;;                     :inherit 'default
;;                     :slant 'normal)
;; (set-face-attribute 'font-lock-constant-face nil
;;                     :inherit 'default
;;                     :weight 'normal)
;; (set-face-attribute 'font-lock-comment-face nil
;;                     :font "Iosevka Term SS03 Light Oblique 12"
;;                     :slant 'oblique)
;; (set-face-attribute 'font-lock-keyword-face nil
;;                     :weight 'normal)
;; (set-face-attribute 'font-lock-function-name-face nil
;;                     :font "Iosevka Term SS03 Light 12"
;;                     :weight 'light)
;; (set-face-attribute 'tree-sitter-hl-face:function.call nil
;;                     :font "Iosevka Term SS03 Light 12"
;;                     :weight 'light)
;; (set-face-attribute 'link nil
;;                     :font "Iosevka Term SS03 Medium 12"
;;                     :weight 'medium)
;; (set-face-attribute 'bold nil
;;                      :font "Iosevka Term SS03 12"
;;                      :height cop/default-font-size
;;                      :weight 'medium)
(set-face-attribute 'bold nil
                    :inherit 'default
                    :weight 'bold)
(set-face-attribute 'font-lock-constant-face nil
                    :weight 'normal)
(set-face-attribute 'font-lock-preprocessor-face nil
                    :weight 'normal)
(set-face-attribute 'font-lock-keyword-face nil
                    :weight 'normal)

(provide 'look-and-feel)
