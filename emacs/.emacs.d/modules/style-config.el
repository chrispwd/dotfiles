;;; style-config.el --- Look and feel -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

;; Load themes directory and theme
(add-to-list 'custom-theme-load-path (concat user-emacs-directory "themes"))

;; (load-theme 'zenburn t)

(use-package base16-theme
  :ensure t
  :config
  (setq base16-theme-256-color-source 'colors)
  (load-theme 'base16-cpl-custom t)
  (defvar my/base16-colors
  '(:base00 "#000000"
    :base01 "#1d1d1d"
    :base02 "#232323"
    :base03 "#424242"
    :base04 "#585858"
    :base05 "#777777"
    :base06 "#989898"
    :base07 "#ababab"
    :red "#b10b00"
    :orange "#a05803"
    :yellow "#a27f00"
    :green "#297200"
    :cyan "#00808f"
    :blue "#006dbd"
    :violet "#ae3aab"
    :brown "#7a2d00")
  "All colors for Base16 CPL are defined here.")
  
  (custom-set-faces
   `(line-number
     ((t (:foreground
          ,(plist-get my/base16-colors :base02)
          :background
          ,(plist-get my/base16-colors :base00)))))
   `(link
     ((t (:foreground
          ,(plist-get my/base16-colors :cyan)
          :underline t))))
   `(tab-bar-tab
     ((t (:foreground
          ,(plist-get my/base16-colors :base07)
          :background
          ,(plist-get my/base16-colors :base00)))))
   `(tab-bar-tab-inactive
     ((t (:foreground
          ,(plist-get my/base16-colors :base03)
          :background
          ,(plist-get my/base16-colors :base01)))))
   `(eglot-highlight-symbol-face
     ((t (:foreground
          ,(plist-get my/base16-colors :base06)
          :weight
          bold))))
   `(region
     ((t (:foreground
          ,(plist-get my/base16-colors :base01)
          :background
          ,(plist-get my/base16-colors :base04)))))
   `(font-lock-keyword-face
     ((t (:foreground
          ,(plist-get my/base16-colors :yellow)))))
   `(font-lock-variable-name-face
     ((t (:foreground
          ,(plist-get my/base16-colors :base05)))))
   `(font-lock-function-name-face
     ((t (:foreground
          ,(plist-get my/base16-colors :blue)))))
   `(font-lock-function-call-face
     ((t (:foreground
          ,(plist-get my/base16-colors :cyan)))))
   `(font-lock-builtin-face
     ((t (:foreground
          ,(plist-get my/base16-colors :blue)))))
   `(font-lock-constant-face
     ((t (:foreground
          ,(plist-get my/base16-colors :orange)
          :weight normal))))
   `(font-lock-type-face
     ((t (:foreground
          ,(plist-get my/base16-colors :orange)
          :weight normal))))
   `(font-lock-string-face
     ((t (:foreground
          ,(plist-get my/base16-colors :green)
          :weight normal))))
   `(font-lock-operator-face
     ((t (:foreground
          ,(plist-get my/base16-colors :base05)))))
   `(org-level-1
     ((t (:foreground
          ,(plist-get my/base16-colors :violet)))))
   `(org-level-2
     ((t (:foreground
          ,(plist-get my/base16-colors :blue)))))
   `(org-level-3
     ((t (:foreground
          ,(plist-get my/base16-colors :cyan)))))
   `(org-level-4
     ((t (:foreground
          ,(plist-get my/base16-colors :green)))))
   `(org-level-5
     ((t (:foreground
          ,(plist-get my/base16-colors :red)))))
   `(org-level-6
     ((t (:foreground
          ,(plist-get my/base16-colors :orange)))))
   `(org-level-7
     ((t (:foreground
          ,(plist-get my/base16-colors :yellow)))))
   `(org-level-8
     ((t (:foreground
          ,(plist-get my/base16-colors :brown)))))
   `(org-agenda-done
     ((t (:foreground
          ,(plist-get my/base16-colors :base03)))))
   `(org-agenda-current-time
     ((t (:foreground
          ,(plist-get my/base16-colors :base06)))))
   `(org-time-grid
     ((t (:foreground
          ,(plist-get my/base16-colors :base04)))))
   `(org-headline-done
     ((t (:foreground
          ,(plist-get my/base16-colors :base03)))))
   `(org-drawer
     ((t (:foreground
          ,(plist-get my/base16-colors :base03)))))
   `(org-verbatim
     ((t (:foreground
          ,(plist-get my/base16-colors :green)))))
   `(org-link
     ((t (:foreground
          ,(plist-get my/base16-colors :cyan)
          :underline t))))
   `(denote-faces-date
     ((t (:foreground
          ,(plist-get my/base16-colors :base03)))))
   `(doom-modeline-project-dir
     ((t (:foreground
          ,(plist-get my/base16-colors :cyan)
          :slant
          italic))))
   `(doom-modeline-buffer-file
     ((t (:foreground
          ,(plist-get my/base16-colors :base07)
          :slant
          italic
          :weight
          bold))))
   )
)

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
