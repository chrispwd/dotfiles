;;; look-and-feel.el -*- lexical-binding: t; -*-

;; TODO :: finish porting over
(straight-use-package 'all-the-icons)
(straight-use-package 'doom-themes)
(straight-use-package 'doom-modeline)
(straight-use-package 'autothemer)

;; Theme
(use-package all-the-icons
             :straight t)

(use-package doom-themes
             :straight t
             :init
             (setq doom-themes-enable-bold t
                   doom-themes-enable-italic t)
             :config
             (use-package autothemer
                          :straight t)
             (load-theme 'doom-tomorrow-night t))

(use-package doom-modeline
             :straight t
             :after (all-the-icons)
             :hook (after-init . doom-modeline-mode)
	     :init
	     (setq doom-modeline-icon nil)
             :config
             (customize-set-variable 'doom-modeline-height 15)
             (customize-set-variable 'doom-modeline-bar-width 6)
             (customize-set-variable 'doom-modeline-minor-modes t)
             (customize-set-variable 'doom-modeline-buffer-file-name-style 'truncate-except-project))

;; Fonts and Faces
(cond
  ((eq system-type 'gnu/linux)
    (defvar cop/default-font-size 140)
    (defvar cop/default-variable-font-size 140))
  ((eq system-type 'darwin)
    (defvar cop/default-font-size 180)
    (defvar cop/default-variable-font-size 180))
  (t
    (message "Config for unknown system type.")))

(set-face-attribute 'default nil
                    :font "Iosevka Term SS12"
                    :height cop/default-font-size
                    :slant 'normal)
(set-face-attribute 'bold nil
                    :inherit 'default
                    :weight 'bold)
(set-face-attribute 'font-lock-builtin-face nil
                    :font "Iosevka Term SS12"
                    :slant 'normal)
(set-face-attribute 'font-lock-constant-face nil
                    :inherit 'default
                    :weight 'normal)
;; (set-face-attribute 'font-lock-comment-face nil
;;                     :font "Iosevka Term SS03 Light Oblique 12"
;;                     :slant 'oblique)
(set-face-attribute 'font-lock-preprocessor-face nil
                    :weight 'normal)
(set-face-attribute 'font-lock-keyword-face nil
                    :weight 'normal)
(set-face-attribute 'font-lock-type-face nil
                    :inherit 'default
                    :slant 'normal)
(set-face-attribute 'font-lock-function-name-face nil
                    :font "Iosevka Term SS03 Light 12"
                    :weight 'light)
;; (set-face-attribute 'eglot-highlight-symbol-face nil
;;                     :font "Iosevka Term SS03 Semibold 12"
;;                     :weight 'semi-bold)
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

(provide 'look-and-feel)
