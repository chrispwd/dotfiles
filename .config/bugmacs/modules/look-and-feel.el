;;; look-and-feel.el -*- lexical-binding: t; -*-

; TODO :: finish porting over
(straight-use-package 'all-the-icons)
(straight-use-package 'doom-themes)
(straight-use-package 'doom-modeline)
(straight-use-package 'autothemer)
(straight-use-package 'fontaine)
(straight-use-package 'ef-themes)
(straight-use-package 'autothemer)

;; Theme
(use-package all-the-icons
             :straight t)

;; (use-package doom-themes
;;              :straight t
;;              :init
;;              (setq doom-themes-enable-bold t
;;                    doom-themes-enable-italic t)
;;              :config
;;              (use-package autothemer
;;                           :straight t)
;;              (load-theme 'doom-tomorrow-night t))

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

(use-package fontaine
  :straight t
  :init
  (setq fontaine-latest-state-file
      (locate-user-emacs-file "fontaine-latest-state.eld"))
  (setq fontaine-presets
      '((tiny
         :default-family "Fixed (OTB)"
         :default-height 80)
        (regular
         :default-height 120)
        (medium
         :default-height 140)
        (large
         :default-weight semilight
         :default-height 160
         :bold-weight extrabold)
        (presentation
         :default-weight semilight
         :default-height 180
         :bold-weight extrabold)
        (jumbo
         :default-weight semilight
         :default-height 220
         :bold-weight extrabold)
        (t
         ;; I keep all properties for didactic purposes, but most can be
         ;; omitted.  See the fontaine manual for the technicalities:
         ;; <https://protesilaos.com/emacs/fontaine>.
         :default-family "Iosevka Term SS12"
         :default-weight regular
         :default-height 120
         :fixed-pitch-family nil ; falls back to :default-family
         :fixed-pitch-weight nil ; falls back to :default-weight
         :fixed-pitch-height 1.0
         :fixed-pitch-serif-family nil ; falls back to :default-family
         :fixed-pitch-serif-weight nil ; falls back to :default-weight
         :fixed-pitch-serif-height 1.0
         :variable-pitch-family "Iosevka Term SS12"
         :variable-pitch-weight nil
         :variable-pitch-height 1.0
         :bold-family nil ; use whatever the underlying face has
         :bold-weight bold
         :italic-family nil
         :italic-slant italic
         :line-spacing nil)))
  :config
  (fontaine-set-preset (or (fontaine-restore-latest-preset) 'regular))
  :catch (lambda (keyword err)
           (message (error-message-string err)))
  :hook
  (kill-emacs . fontaine-store-latest-preset))

(use-package ef-themes
  :straight t
  :init
  (setq ef-themes-headings ; read the manual's entry or the doc string
      '((0 variable-pitch 1.3)
        (1 variable-pitch 1.2)
        (2 variable-pitch 1.0)
        (3 variable-pitch 1.0)
        (4 variable-pitch 1.0)
        (5 variable-pitch 1.0) ; absence of weight means `bold'
        (6 variable-pitch 1.0)
        (7 variable-pitch 1.0)
        (t variable-pitch 1.0)))
  :config
  ;;(mapc #'disable-theme custom-enabled-themes)
  (ef-themes-select 'ef-dark)
  )
;; Fonts and Faces
;; (cond
;;   ((eq system-type 'gnu/linux)
;;     (defvar cop/default-font-size 140)
;;     (defvar cop/default-variable-font-size 140))
;;   ((eq system-type 'darwin)
;;     (defvar cop/default-font-size 180)
;;     (defvar cop/default-variable-font-size 180))
;;   (t
;;     (message "Config for unknown system type.")))

(set-face-attribute 'default nil
                    :font "Iosevka Term SS12"
                    :height 120
                    :slant 'normal)
(set-face-attribute 'bold nil
                    :inherit 'default
                    :weight 'bold)
(set-face-attribute 'font-lock-builtin-face nil
                    :font "Iosevka Term SS12 12"
                    :slant 'normal)
(set-face-attribute 'font-lock-constant-face nil
                    :inherit 'default
                    :weight 'normal)
;; (set-face-attribute 'font-lock-comment-face nil
;;                     :font "Iosevka Term SS12 Light Oblique 12"
;;                     :slant 'oblique)
(set-face-attribute 'font-lock-preprocessor-face nil
                    :weight 'normal)
(set-face-attribute 'font-lock-keyword-face nil
                    :weight 'normal)
(set-face-attribute 'font-lock-type-face nil
                    :inherit 'default
                    :slant 'normal)
(set-face-attribute 'font-lock-function-name-face nil
                    :font "Iosevka Term SS12 12"
                    :weight 'light)
;; (set-face-attribute 'eglot-highlight-symbol-face nil
;;                     :font "Iosevka Term SS12 Semibold 12"
;;                     :weight 'semi-bold)
;; (set-face-attribute 'tree-sitter-hl-face:function.call nil
;;                     :font "Iosevka Term SS12 Light 12"
;;                     :weight 'light)
;; (set-face-attribute 'link nil
;;                     :font "Iosevka Term SS12 Medium 12"
;;                     :weight 'medium)
;; (set-face-attribute 'bold nil
;;                      :font "Iosevka Term SS12 12"
;;                      :height cop/default-font-size
;;                      :weight 'medium)

(provide 'look-and-feel)
