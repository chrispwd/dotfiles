;;; style-config.el --- Look and feel -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

;; Load themes directory and theme
(add-to-list 'custom-theme-load-path (concat user-emacs-directory "themes"))

;; (use-package base16-theme
;;   :ensure t
;;   :config
;;   (setq base16-theme-256-color-source 'colors)
;;   (load-theme 'base16-onedarker t)
;;   (defvar my/base16-colors
;;     '(:base00 "#282c34"
;;               :base01 "#353b45"
;;               :base02 "#3e4451"
;;               :base03 "#545862"
;;               :base04 "#565c64"
;;               :base05 "#a1a7b4"
;;               :base06 "#b6bdca"
;;               :base07 "#c8ccd4"
;;               :red "#e06c75"
;;               :orange "#d19a66"
;;               :yellow "#e5c07b"
;;               :green "#98c379"
;;               :cyan "#56b6c2"
;;               :blue "#61afef"
;;               :violet "#c678dd"
;;               :brown "#be5046")
;;     "All colors for Base16 OneDark are defined here.")
;; (custom-set-faces
;;    `(line-number
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base02)
;;           :background
;;           ,(plist-get my/base16-colors :base00)))))
;;    `(region
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base00)
;;           :background
;;           ,(plist-get my/base16-colors :base04)))))
;;    `(tab-bar-tab
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base07)
;;           :background
;;           ,(plist-get my/base16-colors :base00)))))
;;    `(tab-bar-tab-inactive
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base03)
;;           :background
;;           ,(plist-get my/base16-colors :base01)))))
;;    `(eglot-highlight-symbol-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base06)
;;           :weight
;;           bold))))
;;    `(font-lock-keyword-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :violet)))))
;;    `(font-lock-variable-name-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base05)))))
;;    `(font-lock-function-name-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :blue)))))
;;    `(font-lock-function-call-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :blue)))))
;;    `(font-lock-builtin-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :violet)))))
;;    `(font-lock-constant-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :orange)
;;           :weight normal))))
;;    `(font-lock-type-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :orange)
;;           :weight normal))))
;;    `(font-lock-string-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :green)
;;           :weight normal))))
;;    `(font-lock-operator-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :cyan)))))
;;    `(org-level-1
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :violet)
;;           :weight bold))))
;;    `(org-level-2
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :blue)
;;           :weight bold))))
;;    `(org-level-3
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :green)
;;           :weight bold))))
;;    `(org-level-4
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :cyan)
;;           :weight bold))))
;;    `(org-level-5
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :orange)
;;           :weight bold))))
;;    `(org-level-6
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :yellow)
;;           :weight bold))))
;;    `(org-level-7
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :violet)
;;           :weight bold))))
;;    `(org-level-8
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :brown)
;;           :weight bold))))
;;    `(org-agenda-done
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base03)))))
;;    `(org-headline-done
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base03)))))
;;    `(org-drawer
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base03)))))
;;    `(org-link
;;      ((t (:inherit link))))
;;    `(denote-faces-date
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base03)))))
;;    )
;; )

;; (use-package base16-theme
;;   :ensure t
;;   :config
;;   (setq base16-theme-256-color-source 'colors)
;;   (load-theme 'base16-cpl-custom t)
;;   (defvar my/base16-colors
;; '(:base00 "#000000"
;;     :base01 "#1d1d1d"
;;     :base02 "#232323"
;;     :base03 "#424242"
;;     :base04 "#585858"
;;     :base05 "#777777"
;;     :base06 "#989898"
;;     :base07 "#ababab"
;;     :base08 "#93241c" ; red
;;     :base09 "#7a3b00" ; orange
;;     :base0A "#745b00" ; yellow
;;     :base0B "#007232" ; green
;;     :base0C "#006a78" ; cyan
;;     :base0D "#005a9c" ; blue
;;     :base0E "#8f308d" ; magenta
;;     :base0F "#7a2d00") ; brown
;;   "All colors for Base16 CPL are defined here.")
  
;;   (custom-set-faces
;;    `(line-number
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base02)
;;           :background
;;           ,(plist-get my/base16-colors :base00)))))
;;    `(link
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :cyan)
;;           :underline t))))
;;    `(tab-bar-tab
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base07)
;;           :background
;;           ,(plist-get my/base16-colors :base00)))))
;;    `(tab-bar-tab-inactive
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base03)
;;           :background
;;           ,(plist-get my/base16-colors :base01)))))
;;    `(eglot-highlight-symbol-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base06)
;;           :weight
;;           bold))))
;;    `(region
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base01)
;;           :background
;;           ,(plist-get my/base16-colors :base04)))))
;;    `(font-lock-keyword-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :yellow)))))
;;    `(font-lock-variable-name-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base05)))))
;;    `(font-lock-function-name-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :blue)))))
;;    `(font-lock-function-call-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :cyan)))))
;;    `(font-lock-builtin-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :blue)))))
;;    `(font-lock-constant-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :orange)
;;           :weight normal))))
;;    `(font-lock-type-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :orange)
;;           :weight normal))))
;;    `(font-lock-string-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :green)
;;           :weight normal))))
;;    `(font-lock-operator-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base05)))))
;;    `(org-level-1
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :violet)))))
;;    `(org-level-2
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :blue)))))
;;    `(org-level-3
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :cyan)))))
;;    `(org-level-4
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :green)))))
;;    `(org-level-5
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :red)))))
;;    `(org-level-6
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :orange)))))
;;    `(org-level-7
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :yellow)))))
;;    `(org-level-8
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :brown)))))
;;    `(org-agenda-done
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base03)))))
;;    `(org-agenda-current-time
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base06)))))
;;    `(org-time-grid
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base04)))))
;;    `(org-headline-done
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base03)))))
;;    `(org-drawer
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base03)))))
;;    `(org-verbatim
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :green)))))
;;    `(org-link
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :cyan)
;;           :underline t))))
;;    `(denote-faces-date
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base03)))))
;;    `(doom-modeline-project-dir
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :cyan)
;;           :slant
;;           italic))))
;;    `(doom-modeline-buffer-file
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base07)
;;           :slant
;;           italic
;;           :weight
;;           bold))))
;;    )
;; )

;; (use-package base16-theme
;;   :ensure t
;;   :config
;;   (setq base16-theme-256-color-source 'colors)
;;   (load-theme 'base16-atelier-cavemoss t)
;;   (defvar my/base16-colors
;;     '(:base00 "#19171c"
;;       :base01 "#26232a"
;;       :base02 "#585260"
;;       :base03 "#655f6d"
;;       :base04 "#7e7887"
;;       :base05 "#8b8792"
;;       :base06 "#aca8b2"
;;       :base07 "#e2dfe7"
;;       :base08 "#be4678"
;;       :base09 "#aa573c"
;;       :base0A "#a06e3b"
;;       :base0B "#2a9271"
;;       :base0C "#398bc6"
;;       :base0D "#576ddb"
;;       :base0E "#955ae7"
;;       :base0F "#bf40bf")
;;     "All colors for Base16 Atelier Cave are defined here.")
;;     ;; base16-atelier-cave-theme-colors)
;;   (custom-set-faces
;;    `(line-number
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base03)
;;           :background
;;           ,(plist-get my/base16-colors :base00)))))
;;    `(fringe
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base03)
;;           :background
;;           "undefined"))))
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
;;           ,(plist-get my/base16-colors :base07)
;;           :background
;;           ,(plist-get my/base16-colors :base00)))))
;;    `(tab-bar-tab-inactive
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base03)
;;           :background
;;           ,(plist-get my/base16-colors :base01)))))
;;    `(dired-directory
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base0D)))))
;;    `(bold
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base06)
;;           :weight bold))))
;;    `(link
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base0C)
;;           :underline t))))
;;    `(cursor
;;      ((t (:background
;;           ,(plist-get my/base16-colors :base0F)))))
;;    `(font-lock-keyword-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base0E)))))
;;    `(font-lock-variable-name-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base05)))))
;;    `(font-lock-function-name-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base0C)))))
;;    `(font-lock-function-call-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base0C)))))
;;    `(font-lock-builtin-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base0A)))))
;;    `(font-lock-constant-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base0A)
;;           :weight normal))))
;;    `(font-lock-type-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base0A)
;;           :weight normal))))
;;    `(font-lock-operator-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base09)))))
;;    `(show-paren-match
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base0E)
;;           :background
;;           ,(plist-get my/base16-colors :base01)))))
;;    `(show-paren-mismatch
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base08)
;;          :background
;;           ,(plist-get my/base16-colors :base01)))))
;;    `(flymake-note
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base09)
;;           :underline t))))
;;    `(org-todo
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base0A)
;;           :background
;;           ,(plist-get my/base16-colors :base00)
;;           :weight bold))))
;;    `(org-done
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base0B)
;;           :background
;;           ,(plist-get my/base16-colors :base00)))))
;;    `(org-priority
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base08)))))
;;    `(org-agenda-done
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base03)))))
;;    `(org-agenda-date-today
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base0D)
;;           :weight bold
;;           :underline t))))
;;    `(org-agenda-current-time
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base04)))))
;;    `(org-headline-done
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base04)))))
;;    `(org-scheduled-today
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base06)))))
;;    `(org-scheduled-previously
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base04)))))
;;    `(org-imminent-deadline
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base08)
;;           :weight normal))))
;;    `(org-upcoming-distant-deadline
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base09)))))
;;    `(org-time-grid
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base03)))))
;;    `(org-level-1
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base0E)))))
;;    `(org-level-2
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base0D)))))
;;    `(org-level-3
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base0C)))))
;;    `(org-level-4
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base0E)))))
;;    `(org-level-5
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base0D)))))
;;    `(org-level-6
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base0C)))))
;;    `(org-level-7
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base0E)))))
;;    `(org-level-8
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base0D)))))
;;    `(org-code
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base0D)))))
;;    `(org-list-dt
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base0E)
;;           :weight normal
;;           :slant italic))))
;;    `(org-link
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base0C)
;;           :inherit link))))
;;    `(org-document-info-keyword
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base04)))))
;;    `(org-special-keyword
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base04)))))
;;    `(org-document-title
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base07)))))
;;    `(denote-faces-date ((t (:inherit shadow))))
;;    `(denote-faces-keywords
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base0C)))))
;;   `(doom-modeline-buffer-path
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base05)
;;           :slant
;;           normal))))
;;   `(doom-modeline-buffer-file
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base07)
;;           :slant
;;           normal))))
;;   `(doom-modeline-project-dir
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base07)
;;           :slant
;;           normal))))
;;   `(eglot-highlight-symbol-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base07)
;;           :weight
;;           bold)))))
;;   )

;; (use-package base16-theme
;;   :ensure t
;;   :config
;;   (setq base16-theme-256-color-source 'colors)
;;   (load-theme 'base16-atelier-seaside t)
;;   (defvar my/base16-colors
;;     base16-atelier-seaside-theme-colors)
;;   (custom-set-faces
;;    `(line-number
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base03)
;;           :background
;;           ,(plist-get my/base16-colors :base00)))))
;;    `(fringe
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
;;           ,(plist-get my/base16-colors :base02)))))
;;    `(tab-bar-tab
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base07)
;;           :background
;;           ,(plist-get my/base16-colors :base00)))))
;;    `(tab-bar-tab-inactive
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base03)
;;           :background
;;           ,(plist-get my/base16-colors :base01)))))
;;    `(dired-directory
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base0D)))))
;;    ;; `(bold
;;    ;;   ((t (:foreground
;;    ;;        ,(plist-get my/base16-colors :base06)
;;    ;;        :weight bold))))
;;    `(link
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base0C)
;;           :underline t))))
;;    `(cursor
;;      ((t (:background
;;           ,(plist-get my/base16-colors :base0F)))))
;;    `(font-lock-keyword-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base0B)))))
;;    `(font-lock-variable-name-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base05)))))
;;    `(font-lock-function-name-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base0A)))))
;;    `(font-lock-function-call-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base0A)))))
;;    `(font-lock-builtin-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base09)))))
;;    `(font-lock-constant-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base09)
;;           :weight normal))))
;;    `(font-lock-type-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base0D)
;;           :weight normal))))
;;    `(font-lock-operator-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base03)))))
;;    `(font-lock-punctuation-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base03)))))
;;       `(font-lock-string-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base0C)))))
;;    `(show-paren-match
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base06)
;;           :background
;;           ,(plist-get my/base16-colors :base01)))))
;;    `(show-paren-mismatch
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base08)
;;          :background
;;           ,(plist-get my/base16-colors :base01)))))
;;    `(flymake-note
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base09)
;;           :underline t))))
;;    `(org-todo
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base09)
;;           :background
;;           ,(plist-get my/base16-colors :base00)
;;           :weight bold))))
;;    `(org-done
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base03)
;;           :background
;;           ,(plist-get my/base16-colors :base00)))))
;;    `(org-priority
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base08)
;;           :weight bold))))
;;    `(org-agenda-structure
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base0B)))))
;;    `(org-agenda-done
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base03)))))
;;    `(org-agenda-date
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base0B)))))
;;    `(org-agenda-date-today
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base0B)
;;           :weight bold
;;           :underline t))))
;;    `(org-agenda-current-time
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base04)))))
;;    `(org-headline-done
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base04)))))
;;    `(org-scheduled
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base05)))))
;;    `(org-scheduled-today
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base06)))))
;;    `(org-scheduled-previously
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base04)))))
;;    `(org-imminent-deadline
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base08)
;;           :weight normal))))
;;    `(org-upcoming-distant-deadline
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base09)))))
;;    `(org-time-grid
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base03)))))
;;    `(org-level-1
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base0D)))))
;;    `(org-level-2
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base0C)))))
;;    `(org-level-3
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base0B)))))
;;    `(org-level-4
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base0A)))))
;;    `(org-level-5
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base0D)))))
;;    `(org-level-6
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base0C)))))
;;    `(org-level-7
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base0B)))))
;;    `(org-level-8
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base0A)))))
;;    `(org-code
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base09)))))
;;    `(org-table
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base0B)))))
;;    `(org-list-dt
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base09)
;;           :weight normal
;;           :slant italic))))
;;    `(org-link
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base0C)
;;           :inherit link))))
;;    `(org-document-info-keyword
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base04)))))
;;    `(org-special-keyword
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base04)))))
;;    `(org-document-title
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base09)))))
;;    `(denote-faces-date ((t (:inherit shadow))))
;;    `(denote-faces-keywords
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base0C)))))
;;   `(doom-modeline-buffer-path
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base05)
;;           :slant
;;           normal))))
;;   `(doom-modeline-buffer-file
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base07)
;;           :slant
;;           normal))))
;;   `(doom-modeline-project-dir
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base07)
;;           :slant
;;           normal))))
;;   `(eglot-highlight-symbol-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base07)
;;           :weight
;;           bold)))))
;;   )

;; Swap commented palette and theme name in `load-theme' to switch
;; between solarized and gruvbox
;; (use-package solarized-theme
;;   :ensure t
;;   :config
;;   (setq solarized-use-less-bold t)
;;   (defvar palette
;;   '(;; solarized-dark palette
;;     (base03      . "#002b36")
;;     (base02      . "#073642")
;;     (base01      . "#586e75")
;;     (base00      . "#657b83")
;;     (base0       . "#839496")
;;     (base1       . "#93a1a1")
;;     (base2       . "#eee8d5")
;;     (base3       . "#fdf6e3")
;;     (yellow      . "#b58900")
;;     (orange      . "#cb4b16")
;;     (red         . "#dc322f")
;;     (magenta     . "#d33682")
;;     (violet      . "#6c71c4")
;;     (blue        . "#268bd2")
;;     (cyan        . "#2aa198")
;;     (green       . "#859900")
;;     ;; palette end
;;     )
;;   "The solarized color palette alist.")
 
;; ;;   (defvar palette
;; ;;     '(;; gruvbox-dark palette
;; ;;     (base03      . "#282828")
;; ;;     (base02      . "#32302f")
;; ;;     (base01      . "#7c6f64")
;; ;;     (base00      . "#928374")
;; ;;     (base0       . "#a89984")
;; ;;     (base1       . "#bdae93")
;; ;;     (base2       . "#a89984")
;; ;;     (base3       . "#fbf1c7")
;; ;;     (yellow      . "#d79921")
;; ;;     (orange      . "#d65d0e")
;; ;;     (red         . "#fb4933")
;; ;;     (magenta     . "#d3869b")
;; ;;     (violet      . "#b16286")
;; ;;     (blue        . "#458588")
;; ;;     (cyan        . "#689d6a")
;; ;;     (green       . "#98971a")
;; ;;     ;; palette end
;; ;;     )
;; ;;     "The gruvbox color palette alist.")
 
;;   (load-theme 'solarized-dark t)
 
;;   ;; (custom-set-faces
;;   ;;    `(font-lock-variable-name-face ((t (:foreground ,(alist-get 'base0 palette)))))
;;   ;;  `(font-lock-keyword-face ((t (:foreground ,(alist-get 'red palette)))))
;;   ;;  `(font-lock-builtin-face ((t (:foreground ,(alist-get 'violet palette)))))
;;   ;;  `(font-lock-number-face ((t (:foreground ,(alist-get 'violet palette)))))
;;   ;;  `(font-lock-string-face ((t (:foreground ,(alist-get 'green palette)))))
;;   ;;  `(font-lock-punctuation-face ((t (:foreground ,(alist-get 'orange palette)))))
;;   ;;  `(font-lock-function-name-face ((t (:foreground ,(alist-get 'blue palette)))))
;;   ;;  `(font-lock-function-call-face ((t (:foreground ,(alist-get 'base0 palette)))))
;;   ;;  `(font-lock-operator-face ((t (:foreground ,(alist-get 'orange palette)))))
;;   ;;  `(font-lock-type-face ((t (:foreground ,(alist-get 'yellow palette)))))
;;   ;;  `(font-lock-constant-face
;;   ;;    ((t (:foreground ,(alist-get 'violet palette) :weight normal))))
;;   ;;  `(flymake-error ((t (:foreground ,(alist-get 'red palette) :underline t))))
;;   ;;  `(link
;;   ;;    ((t (:foreground ,(alist-get 'yellow palette) :weight normal :underline t))))
;;   ;;  `(bold
;;   ;;    ((t (:foreground ,(alist-get 'base1 palette) :weight bold))))
;;   ;;  `(vertical-border ((t (:foreground ,(alist-get 'base01 palette)))))
;;   ;;  `(denote-faces-delimiter
;;   ;;    ((t (:foreground ,(alist-get 'base02 palette)))))
;;   ;;  `(denote-faces-date ((t (:inherit shadow))))
;;   ;;  `(org-list-dt
;;   ;;    ((t (:foreground ,(alist-get 'orange palette) :weight normal :slant italic))))
;;   ;;  `(org-code ((t (:foreground ,(alist-get 'orange palette))))))
;;   (custom-set-faces
;;    `(font-lock-variable-name-face ((t (:foreground ,(alist-get 'base0 palette)))))
;;    `(font-lock-keyword-face ((t (:foreground ,(alist-get 'green palette)))))
;;    `(font-lock-builtin-face ((t (:foreground ,(alist-get 'violet palette)))))
;;    ;; `(font-lock-number-face ((t (:foreground ,(alist-get 'violet palette)))))
;;    `(font-lock-string-face ((t (:foreground ,(alist-get 'cyan palette)))))
;;    `(font-lock-function-name-face ((t (:foreground ,(alist-get 'blue palette)))))
;;    `(font-lock-function-call-face ((t (:foreground ,(alist-get 'blue palette)))))
;;    ;; `(font-lock-operator-face ((t (:foreground ,(alist-get 'orange palette)))))
;;    ;; `(font-lock-punctuation-face ((t (:foreground ,(alist-get 'orange palette)))))
;;    `(font-lock-type-face ((t (:foreground ,(alist-get 'yellow palette)))))
;;    `(font-lock-constant-face
;;      ((t (:foreground ,(alist-get 'yellow palette) :weight normal))))
;;    `(eglot-highlight-symbol-face
;;      ((t (:foreground ,(alist-get 'base2 palette) :weight bold))))
;;    `(flymake-error ((t (:foreground ,(alist-get 'red palette) :underline t))))
;;    `(link
;;      ((t (:foreground ,(alist-get 'yellow palette) :weight normal :underline t))))
;;    `(bold
;;      ((t (:weight bold))))
;;    `(vertical-border ((t (:foreground ,(alist-get 'base01 palette)))))
;;    `(denote-faces-delimiter
;;      ((t (:foreground ,(alist-get 'base02 palette)))))
;;    `(denote-faces-date ((t (:inherit shadow))))
;;    `(org-list-dt
;;      ((t (:foreground ,(alist-get 'orange palette) :weight normal :slant italic))))
;;    `(org-code ((t (:foreground ,(alist-get 'orange palette))))))
;;   )

(load-theme 'zenburn t)

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

;; (use-package base16-theme
;;   :ensure t
;;   :config
;;   (setq base16-theme-256-color-source 'colors)
;;   (load-theme 'base16-penumbra-dark t)
;;   (defvar my/base16-colors
;;   '(:base00 "#24272b"
;;     :base01 "#303338"
;;     :base02 "#3e4044"
;;     :base03 "#636363"
;;     :base04 "#7a7a7a"
;;     :base05 "#8f8f8f"
;;     :base06 "#bebebe"
;;     :base07 "#fff7ed"
;;     :red "#ca736c" ; red
;;     :orange "#ba823a" ; orange
;;     :yellow "#A38F2D" ; yellow
;;     :green "#47a477" ; green
;;     :cyan "#00a2af" ; cyan
;;     :blue "#5794d0" ; blue
;;     :violet "#9481cc" ; purple
;;     :magenta "#bd72a8") ; magenta
;;   "All colors for Base16 Penumbra Dark are defined here.")
  
;;   (custom-set-faces
;;    `(default
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base05)
;;           :background
;;           ,(plist-get my/base16-colors :base01)))))
;;    `(mode-line
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base04)
;;           :background
;;           ,(plist-get my/base16-colors :base00)))))
;;    `(line-number
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base03)
;;           :background
;;           ,(plist-get my/base16-colors :base01)))))
;;    `(line-number-current-line
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base06)))))
;;    `(hl-line
;;      ((t (:background
;;           ,(plist-get my/base16-colors :base00)))))
;;    `(highlight
;;      ((t (:background
;;           ,(plist-get my/base16-colors :base00)))))
;;    `(link
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :cyan)
;;           :underline t))))
;;    `(tab-bar-tab
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base06)
;;           :background
;;           ,(plist-get my/base16-colors :base01)))))
;;    `(tab-bar
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base03)
;;           :background
;;           ,(plist-get my/base16-colors :base00)))))
;;    `(tab-bar-tab-inactive
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base03)
;;           :background
;;           ,(plist-get my/base16-colors :base00)))))
;;    `(region
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base00)
;;           :background
;;           ,(plist-get my/base16-colors :base03)))))
;;    `(ansi-color-red
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :red)
;;           :background
;;           ,(plist-get my/base16-colors :red)))))
;;    `(ansi-color-blue
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :blue)
;;           :background
;;           ,(plist-get my/base16-colors :blue)))))
;;    `(ansi-color-cyan
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :cyan)
;;           :background
;;           ,(plist-get my/base16-colors :cyan)))))
;;    `(ansi-color-magenta
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :magenta)
;;           :background
;;           ,(plist-get my/base16-colors :magenta)))))
;;    `(ansi-color-green
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :green)
;;           :background
;;           ,(plist-get my/base16-colors :green)))))
;;    `(show-paren-match
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base00)
;;           :background
;;           ,(plist-get my/base16-colors :green)))))
;;    `(show-paren-mismatch
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base00)
;;           :background
;;           ,(plist-get my/base16-colors :red)))))
;;    `(success
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :green)
;;           :weight
;;           bold))))
;;    `(error
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :red)
;;           :weight
;;           bold))))
;;    `(warning
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :orange)
;;           :weight
;;           bold))))
;;    `(eglot-highlight-symbol-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base06)
;;           :weight
;;           bold))))
;;    `(font-lock-keyword-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :violet)))))
;;    `(font-lock-variable-name-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base05)))))
;;    `(font-lock-function-name-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :blue)))))
;;    `(font-lock-function-call-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :blue)))))
;;    `(font-lock-builtin-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :magenta)))))
;;    `(font-lock-constant-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :orange)
;;           :weight normal))))
;;    `(font-lock-type-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :red)
;;           :weight normal))))
;;    `(font-lock-string-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :green)
;;           :weight normal))))
;;    `(font-lock-operator-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :cyan)))))
;;    `(font-lock-preprocessor-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :cyan)))))
;;    `(rainbow-delimiters-depth-1-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :violet)))))
;;    `(rainbow-delimiters-depth-2-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :blue)))))
;;    `(rainbow-delimiters-depth-3-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :cyan)))))
;;    `(rainbow-delimiters-depth-4-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :green)))))
;;    `(rainbow-delimiters-depth-5-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :red)))))
;;    `(rainbow-delimiters-depth-6-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :orange)))))
;;    `(rainbow-delimiters-depth-7-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :yellow)))))
;;    `(rainbow-delimiters-depth-8-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :magenta)))))
;;    `(rainbow-delimiters-base-error-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base00)
;;           :background
;;           ,(plist-get my/base16-colors :red)))))
;;    `(avy-lead-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base00)
;;           :background
;;           ,(plist-get my/base16-colors :orange)))))
;;    `(avy-lead-face-0
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base00)
;;           :background
;;           ,(plist-get my/base16-colors :blue)))))
;;    `(avy-lead-face-1
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base00)
;;           :background
;;           ,(plist-get my/base16-colors :magenta)))))
;;    `(avy-lead-face-2
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base00)
;;           :background
;;           ,(plist-get my/base16-colors :yellow)))))
;;    `(orderless-match-face-0
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :blue)
;;           :weight
;;           bold))))
;;    `(orderless-match-face-1
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :magenta)
;;           :weight
;;           bold))))
;;    `(orderless-match-face-2
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :green)
;;           :weight
;;           bold))))
;;    `(orderless-match-face-3
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :yellow)
;;           :weight
;;           bold))))
;;    `(org-level-1
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :violet)))))
;;    `(org-level-2
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :blue)))))
;;    `(org-level-3
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :cyan)))))
;;    `(org-level-4
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :green)))))
;;    `(org-level-5
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :red)))))
;;    `(org-level-6
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :orange)))))
;;    `(org-level-7
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :yellow)))))
;;    `(org-level-8
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :magenta)))))
;;    `(org-document-title
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :orange)))))
;;    `(org-date
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :green)))))
;;    `(org-agenda-done
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base03)))))
;;    `(org-agenda-structure
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :violet)))))
;;    `(org-agenda-clocking
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base05)
;;           :background
;;           ,(plist-get my/base16-colors :base00)
;;           :slant italic))))
;;    `(org-agenda-current-time
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base06)))))
;;    `(org-special-keyword
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :orange)))))
;;    `(org-agenda-date
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :blue)))))
;;    `(org-scheduled-previously
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :yellow)))))
;;    `(org-imminent-deadline
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :red)
;;           :weight bold))))
;;    `(org-upcoming-distant-deadline
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :orange)))))
;;    `(org-scheduled
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :green)))))
;;    `(org-scheduled-today
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base06)))))
;;    `(org-agenda-date-today
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :blue)
;;           :weight bold
;;           :slant italic
;;           :underline t))))
;;    `(org-done
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base03)
;;           :weight bold))))
;;    `(org-todo
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :red)
;;           :weight bold))))
;;    `(org-time-grid
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base04)))))
;;    `(org-headline-done
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base03)))))
;;    `(org-drawer
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base03)))))
;;    `(org-document-info
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base04)))))
;;    `(org-document-info-keyword
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base04)))))
;;    `(org-verbatim
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :green)))))
;;    `(org-link
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :cyan)
;;           :underline t))))
;;    `(org-code
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :orange)))))
;;    `(org-quote
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base05)
;;           :background
;;           ,(plist-get my/base16-colors :base01)
;;           :slant italic))))
;;    `(org-block
;;      ((t (:background
;;           ,(plist-get my/base16-colors :base00)
;;           :foreground
;;           ,(plist-get my/base16-colors :base05)
;;           :extend t))))
;;    `(org-table
;;      ((t :foreground
;;           ,(plist-get my/base16-colors :violet))))
;;    `(org-checkbox
;;      ((t (:background
;;           ,(plist-get my/base16-colors :base00)
;;           :foreground
;;           ,(plist-get my/base16-colors :base05)
;;           :weight bold))))
;;    `(denote-faces-date
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base03)))))
;;    `(denote-faces-delimiter
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base00)))))
;;    `(doom-modeline-project-dir
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :cyan)
;;           :slant
;;           italic))))
;;    `(doom-modeline-buffer-file
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base06)
;;           :slant
;;           italic
;;           :weight
;;           bold))))
;;    )
;; )

;; (use-package base16-theme
;;   :ensure t
;;   :config
;;   (setq base16-theme-256-color-source 'colors)
;;   (load-theme 'base16-cpl-custom t)
;;   (defvar my/base16-colors
;;     '(:base00 "#000000"
;;               :base01 "#1d1d1d"
;;               :base02 "#232323"
;;               :base03 "#424242"
;;               :base04 "#585858"
;;               :base05 "#777777"
;;               :base06 "#989898"
;;               :base07 "#ababab"
;;               :red "#93241c" ; red
;;               :orange "#7a3b00" ; orange
;;               :yellow "#745b00" ; yellow
;;               :green "#007232" ; green
;;               :cyan "#006a78" ; cyan
;;               :blue "#005a9c" ; blue
;;               :magenta "#8f308d" ; magenta
;;               :brown "#7a2d00") ; brown
;;     "All colors for Base16 CPL are defined here.")
  
;;   (custom-set-faces
;;    `(ansi-color-red
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :red)
;;           :background
;;           ,(plist-get my/base16-colors :red)))))
;;    `(ansi-color-blue
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :blue)
;;           :background
;;           ,(plist-get my/base16-colors :blue)))))
;;    `(ansi-color-cyan
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :cyan)
;;           :background
;;           ,(plist-get my/base16-colors :cyan)))))
;;    `(ansi-color-magenta
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :magenta)
;;           :background
;;           ,(plist-get my/base16-colors :magenta)))))
;;    `(ansi-color-green
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :green)
;;           :background
;;           ,(plist-get my/base16-colors :green)))))
;;    `(line-number
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base02)
;;           :background
;;           ,(plist-get my/base16-colors :base00)))))
;;    `(link
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :cyan)
;;           :underline t))))
;;    `(tab-bar-tab
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base07)
;;           :background
;;           ,(plist-get my/base16-colors :base00)))))
;;    `(tab-bar-tab-inactive
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base03)
;;           :background
;;           ,(plist-get my/base16-colors :base01)))))
;;    `(eglot-highlight-symbol-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base06)
;;           :weight
;;           bold))))
;;    `(region
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base00)
;;           :background
;;           ,(plist-get my/base16-colors :base03)))))
;;    `(show-paren-match
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base00)
;;           :background
;;           ,(plist-get my/base16-colors :green)))))
;;    `(show-paren-mismatch
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base00)
;;           :background
;;           ,(plist-get my/base16-colors :red)))))
;;    `(success
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :green)
;;           :weight
;;           bold))))
;;    `(error
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :red)
;;           :weight
;;           bold))))
;;    `(warning
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :orange)
;;           :weight
;;           bold))))
;;    `(font-lock-keyword-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :magenta)))))
;;    `(font-lock-variable-name-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base05)))))
;;    `(font-lock-function-name-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :blue)))))
;;    `(font-lock-function-call-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :blue)))))
;;    `(font-lock-builtin-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :blue)))))
;;    `(font-lock-constant-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :yellow)
;;           :weight normal))))
;;    `(font-lock-type-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :yellow)
;;           :weight normal))))
;;    `(font-lock-string-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :green)
;;           :weight normal))))
;;    `(font-lock-operator-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :cyan)))))
;;    `(font-lock-preprocessor-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :cyan)))))
;;    `(rainbow-delimiters-depth-1-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :magenta)))))
;;    `(rainbow-delimiters-depth-2-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :blue)))))
;;    `(rainbow-delimiters-depth-3-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :cyan)))))
;;    `(rainbow-delimiters-depth-4-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :green)))))
;;    `(rainbow-delimiters-depth-5-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :red)))))
;;    `(rainbow-delimiters-depth-6-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :orange)))))
;;    `(rainbow-delimiters-depth-7-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :yellow)))))
;;    `(rainbow-delimiters-depth-8-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :magenta)))))
;;    `(rainbow-delimiters-base-error-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base00)
;;           :background
;;           ,(plist-get my/base16-colors :red)))))
;;    `(avy-lead-face
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base00)
;;           :background
;;           ,(plist-get my/base16-colors :orange)))))
;;    `(avy-lead-face-0
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base00)
;;           :background
;;           ,(plist-get my/base16-colors :blue)))))
;;    `(avy-lead-face-1
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base00)
;;           :background
;;           ,(plist-get my/base16-colors :magenta)))))
;;    `(avy-lead-face-2
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base00)
;;           :background
;;           ,(plist-get my/base16-colors :yellow)))))
;;    `(orderless-match-face-0
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :blue)
;;           :weight
;;           bold))))
;;    `(orderless-match-face-1
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :magenta)
;;           :weight
;;           bold))))
;;    `(orderless-match-face-2
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :green)
;;           :weight
;;           bold))))
;;    `(orderless-match-face-3
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :yellow)
;;           :weight
;;           bold))))
;;    `(org-level-1
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :magenta)))))
;;    `(org-level-2
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :blue)))))
;;    `(org-level-3
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :cyan)))))
;;    `(org-level-4
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :green)))))
;;    `(org-level-5
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :red)))))
;;    `(org-level-6
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :orange)))))
;;    `(org-level-7
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :yellow)))))
;;    `(org-level-8
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :brown)))))
;;    `(org-agenda-date
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :blue)))))
;;    `(org-scheduled-previously
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :yellow)))))
;;    `(org-imminent-deadline
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :red)
;;           :weight bold))))
;;    `(org-upcoming-distant-deadline
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :orange)))))
;;    `(org-scheduled
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :green)))))
;;    `(org-scheduled-today
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base06)))))
;;    `(org-agenda-date-today
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :blue)
;;           :weight bold
;;           :slant italic
;;           :underline t))))
;;    `(org-agenda-done
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base03)))))
;;    `(org-agenda-current-time
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base06)))))
;;    `(org-time-grid
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base04)))))
;;    `(org-headline-done
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base03)))))
;;    `(org-drawer
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base03)))))
;;    `(org-document-info
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base04)))))
;;    `(org-document-info-keyword
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base04)))))
;;    `(org-verbatim
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :green)))))
;;    `(org-link
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :cyan)
;;           :underline t))))
;;    `(denote-faces-date
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base03)))))
;;    `(doom-modeline-project-dir
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :cyan)
;;           :slant
;;           italic))))
;;    `(doom-modeline-buffer-file
;;      ((t (:foreground
;;           ,(plist-get my/base16-colors :base07)
;;           :slant
;;           italic
;;           :weight
;;           bold))))
;;    )
;;   )
