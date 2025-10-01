;;; style-config.el --- Look and feel -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

;; Load themes directory and theme
(add-to-list 'custom-theme-load-path (concat user-emacs-directory "themes"))

;; (use-package base16-theme
;;   :ensure t
;;   :config
;;   (setq base16-theme-256-color-source 'colors)
;;   (load-theme 'base16-atelier-cave t)
;;   (defvar my/base16-colors base16-atelier-cave-theme-colors)
;;   (custom-set-faces
;;    `(org-agenda-done
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base02)))))
;;    `(org-agenda-current-time
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base04)))))
;;    `(org-headline-done
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base04)))))
;;    `(org-time-grid
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base03)))))
;;    `(org-level-1
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base08)))))
;;    `(org-level-2
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base0D)))))
;;    `(org-level-3
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base0C)))))
;;    `(org-level-4
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base0B)))))
;;    `(org-level-5
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base0E)))))
;;    `(org-level-6
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base0F)))))
;;    `(org-level-7
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base09)))))
;;    `(org-level-8
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base0A)))))
;;     `(denote-faces-hour
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base03)))))
;;     `(denote-faces-minute
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base03)))))
;;     `(denote-faces-second
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base03)))))
;;     `(denote-faces-delimiter
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base02)))))
;;     `(denote-faces-year
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base0D)))))
;;     `(denote-faces-month
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base0B)))))
;;     `(denote-faces-day
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base0C)))))
;;     `(denote-faces-keywords
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base0A)))))
;;     `(line-number
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base03)
;;           :background
;;           ,(plist-get my/base16-colors :base00)))))
;;    `(mode-line
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base05)
;;           :background
;;           ,(plist-get my/base16-colors :base01)))))
;;    `(region
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base01)
;;           :background
;;           ,(plist-get my/base16-colors :base05)))))
;;    `(tab-bar-tab
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base06)
;;           :background
;;           ,(plist-get my/base16-colors :base01)))))
;;    `(tab-bar-tab-inactive
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base03)
;;           :background
;;           ,(plist-get my/base16-colors :base01)))))
;;    `(font-lock-keyword-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base08)))))
;;    `(font-lock-variable-name-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base05)))))
;;    `(font-lock-function-name-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base0D)))))
;;    `(font-lock-function-call-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base0C)))))
;;    `(font-lock-builtin-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base0E)))))
;;    `(font-lock-number-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base0F)))))
;;    `(flymake-note
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base09)
;;           :underline t))))
;;   `(doom-modeline-buffer-path
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base05)
;;           :slant
;;           normal))))
;;   `(eglot-highlight-symbol-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base06)
;;           :weight
;;           bold)))))
;;   )

(use-package solarized-theme
  :ensure t
  :config
  (setq solarized-use-less-bold t)
  (defvar palette
  '(;; solarized-dark palette
    (base03      . "#002b36")
    (base02      . "#073642")
    (base01      . "#586e75")
    (base00      . "#657b83")
    (base0       . "#839496")
    (base1       . "#93a1a1")
    (base2       . "#eee8d5")
    (base3       . "#fdf6e3")
    (yellow      . "#b58900")
    (orange      . "#cb4b16")
    (red         . "#dc322f")
    (magenta     . "#d33682")
    (violet      . "#6c71c4")
    (blue        . "#268bd2")
    (cyan        . "#2aa198")
    (green       . "#859900")
    ;; palette end
    )
  "The solarized color palette alist.")
  (load-theme 'solarized-dark t)
  (custom-set-faces
   `(font-lock-variable-name-face ((t (:foreground ,(alist-get 'base0 palette)))))
   `(font-lock-builtin-face ((t (:foreground ,(alist-get 'yellow palette)))))
   `(font-lock-number-face ((t (:foreground ,(alist-get 'magenta palette)))))
   `(font-lock-operator-face ((t (:foreground ,(alist-get 'base00 palette)))))
   `(font-lock-constant-face
     ((t (:foreground ,(alist-get 'orange palette) :weight normal))))
   `(flymake-error ((t (:foreground ,(alist-get 'red palette)))))
   `(bold
     ((t (:foreground ,(alist-get 'base1 palette) :weight bold))))
   `(denote-faces-delimiter
     ((t (:foreground ,(alist-get 'base02 palette)))))
   `(denote-faces-date ((t (:inherit shadow))))))

;; (use-package doom-themes
;;   :ensure t
;;   ;; :config
;;   ;; (setq doom-gruvbox-material-dark-variant "soft"))
;;   )

;; (load-theme 'doom-terminix t)

;; (require 'color-theme-sanityinc-tomorrow)
;; (load-theme 'sanityinc-tomorrow-night t)

;; Default face (gui only)
(unless (not (display-graphic-p))
  (if (eq system-type 'darwin)
      (set-face-attribute 'default nil :family (getenv "MY_MONO_FONT") :height 145)
	(set-face-attribute 'default nil :family (getenv "MY_MONO_FONT") :height 125)))

;;; ICON ASSETS
(use-package all-the-icons
  :ensure t)

;;; DOOM-MODELINE
(use-package doom-modeline
  :ensure t
  :after (all-the-icons)
  :hook (after-init . doom-modeline-mode)
  :init
  (setq doom-modeline-icon nil)
  (setq doom-modeline-position-column-line-format '("%l:%c"))
  (setq doom-modeline-height 15)
  (setq doom-modeline-bar-width 6)
  (setq doom-modeline-minor-modes t)
  (setq doom-modeline-buffer-file-name-style 'truncate-except-project)
  :config
  (setq column-number-mode t
		line-number-mode t))

(provide 'style-config)
;;; style-config.el ends here
