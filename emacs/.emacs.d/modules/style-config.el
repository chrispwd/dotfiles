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
;;       :base0B "#2a9292"
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

(use-package base16-theme
  :ensure t
  :config
  (setq base16-theme-256-color-source 'colors)
  (load-theme 'base16-atelier-seaside t)
  (defvar my/base16-colors
    base16-atelier-seaside-theme-colors)
  (custom-set-faces
   `(line-number
     ((t (:foreground
          ,(plist-get my/base16-colors :base03)
          :background
          ,(plist-get my/base16-colors :base00)))))
   `(fringe
     ((t (:foreground
          ,(plist-get my/base16-colors :base03)
          :background
          ,(plist-get my/base16-colors :base00)))))
   `(mode-line
     ((t (:foreground
          ,(plist-get my/base16-colors :base05)
          :background
          ,(plist-get my/base16-colors :base01)))))
   `(region
     ((t (:foreground
          ,(plist-get my/base16-colors :base01)
          :background
          ,(plist-get my/base16-colors :base02)))))
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
   `(dired-directory
     ((t (:foreground
          ,(plist-get my/base16-colors :base0D)))))
   ;; `(bold
   ;;   ((t (:foreground
   ;;        ,(plist-get my/base16-colors :base06)
   ;;        :weight bold))))
   `(link
     ((t (:foreground
          ,(plist-get my/base16-colors :base0C)
          :underline t))))
   `(cursor
     ((t (:background
          ,(plist-get my/base16-colors :base0F)))))
   `(font-lock-keyword-face
     ((t (:foreground
          ,(plist-get my/base16-colors :base0B)))))
   `(font-lock-variable-name-face
     ((t (:foreground
          ,(plist-get my/base16-colors :base05)))))
   `(font-lock-function-name-face
     ((t (:foreground
          ,(plist-get my/base16-colors :base0A)))))
   `(font-lock-function-call-face
     ((t (:foreground
          ,(plist-get my/base16-colors :base0A)))))
   `(font-lock-builtin-face
     ((t (:foreground
          ,(plist-get my/base16-colors :base09)))))
   `(font-lock-constant-face
     ((t (:foreground
          ,(plist-get my/base16-colors :base09)
          :weight normal))))
   `(font-lock-type-face
     ((t (:foreground
          ,(plist-get my/base16-colors :base0D)
          :weight normal))))
   `(font-lock-operator-face
     ((t (:foreground
          ,(plist-get my/base16-colors :base03)))))
   `(font-lock-punctuation-face
     ((t (:foreground
          ,(plist-get my/base16-colors :base03)))))
      `(font-lock-string-face
     ((t (:foreground
          ,(plist-get my/base16-colors :base0C)))))
   `(show-paren-match
     ((t (:foreground
          ,(plist-get my/base16-colors :base05)
          :background
          ,(plist-get my/base16-colors :base09)))))
   `(show-paren-mismatch
     ((t (:foreground
          ,(plist-get my/base16-colors :base08)
         :background
          ,(plist-get my/base16-colors :base01)))))
   `(flymake-note
     ((t (:foreground
          ,(plist-get my/base16-colors :base09)
          :underline t))))
   `(org-todo
     ((t (:foreground
          ,(plist-get my/base16-colors :base09)
          :background
          ,(plist-get my/base16-colors :base00)
          :weight bold))))
   `(org-done
     ((t (:foreground
          ,(plist-get my/base16-colors :base03)
          :background
          ,(plist-get my/base16-colors :base00)))))
   `(org-priority
     ((t (:foreground
          ,(plist-get my/base16-colors :base08)
          :weight bold))))
   `(org-agenda-structure
     ((t (:foreground
          ,(plist-get my/base16-colors :base0B)))))
   `(org-agenda-done
     ((t (:foreground
          ,(plist-get my/base16-colors :base03)))))
   `(org-agenda-date
     ((t (:foreground
          ,(plist-get my/base16-colors :base0B)))))
   `(org-agenda-date-today
     ((t (:foreground
          ,(plist-get my/base16-colors :base0B)
          :weight bold
          :underline t))))
   `(org-agenda-current-time
     ((t (:foreground
          ,(plist-get my/base16-colors :base04)))))
   `(org-headline-done
     ((t (:foreground
          ,(plist-get my/base16-colors :base04)))))
   `(org-scheduled
     ((t (:foreground
          ,(plist-get my/base16-colors :base05)))))
   `(org-scheduled-today
     ((t (:foreground
          ,(plist-get my/base16-colors :base06)))))
   `(org-scheduled-previously
     ((t (:foreground
          ,(plist-get my/base16-colors :base04)))))
   `(org-imminent-deadline
     ((t (:foreground
          ,(plist-get my/base16-colors :base08)
          :weight normal))))
   `(org-upcoming-distant-deadline
     ((t (:foreground
          ,(plist-get my/base16-colors :base09)))))
   `(org-time-grid
     ((t (:foreground
          ,(plist-get my/base16-colors :base03)))))
   `(org-level-1
     ((t (:foreground
          ,(plist-get my/base16-colors :base0D)))))
   `(org-level-2
     ((t (:foreground
          ,(plist-get my/base16-colors :base0C)))))
   `(org-level-3
     ((t (:foreground
          ,(plist-get my/base16-colors :base0B)))))
   `(org-level-4
     ((t (:foreground
          ,(plist-get my/base16-colors :base0A)))))
   `(org-level-5
     ((t (:foreground
          ,(plist-get my/base16-colors :base0D)))))
   `(org-level-6
     ((t (:foreground
          ,(plist-get my/base16-colors :base0C)))))
   `(org-level-7
     ((t (:foreground
          ,(plist-get my/base16-colors :base0B)))))
   `(org-level-8
     ((t (:foreground
          ,(plist-get my/base16-colors :base0A)))))
   `(org-code
     ((t (:foreground
          ,(plist-get my/base16-colors :base09)))))
   `(org-table
     ((t (:foreground
          ,(plist-get my/base16-colors :base0B)))))
   `(org-list-dt
     ((t (:foreground
          ,(plist-get my/base16-colors :base09)
          :weight normal
          :slant italic))))
   `(org-link
     ((t (:foreground
          ,(plist-get my/base16-colors :base0C)
          :inherit link))))
   `(org-document-info-keyword
     ((t (:foreground
          ,(plist-get my/base16-colors :base04)))))
   `(org-special-keyword
     ((t (:foreground
          ,(plist-get my/base16-colors :base04)))))
   `(org-document-title
     ((t (:foreground
          ,(plist-get my/base16-colors :base09)))))
   `(denote-faces-date ((t (:inherit shadow))))
   `(denote-faces-keywords
     ((t (:foreground
          ,(plist-get my/base16-colors :base0C)))))
  `(doom-modeline-buffer-path
     ((t (:foreground
          ,(plist-get my/base16-colors :base05)
          :slant
          normal))))
  `(doom-modeline-buffer-file
     ((t (:foreground
          ,(plist-get my/base16-colors :base07)
          :slant
          normal))))
  `(doom-modeline-project-dir
     ((t (:foreground
          ,(plist-get my/base16-colors :base07)
          :slant
          normal))))
  `(eglot-highlight-symbol-face
     ((t (:foreground
          ,(plist-get my/base16-colors :base07)
          :weight
          bold)))))
  )

;; Swap commented palette and theme name in `load-theme' to switch
;; between solarized and gruvbox
;; (use-package solarized-theme
;;   :ensure t
;;   :config
;;   (setq solarized-use-less-bold t)
;;   ;; (defvar palette
;;   ;; '(;; solarized-dark palette
;;   ;;   (base03      . "#002b36")
;;   ;;   (base02      . "#073642")
;;   ;;   (base01      . "#586e75")
;;   ;;   (base00      . "#657b83")
;;   ;;   (base0       . "#839496")
;;   ;;   (base1       . "#93a1a1")
;;   ;;   (base2       . "#eee8d5")
;;   ;;   (base3       . "#fdf6e3")
;;   ;;   (yellow      . "#b58900")
;;   ;;   (orange      . "#cb4b16")
;;   ;;   (red         . "#dc322f")
;;   ;;   (magenta     . "#d33682")
;;   ;;   (violet      . "#6c71c4")
;;   ;;   (blue        . "#268bd2")
;;   ;;   (cyan        . "#2aa198")
;;   ;;   (green       . "#859900")
;;   ;;   ;; palette end
;;   ;;   )
;;   ;; "The solarized color palette alist.")
;;   (defvar palette
;;     '(;; gruvbox-dark palette
;;     (base03      . "#282828")
;;     (base02      . "#32302f")
;;     (base01      . "#7c6f64")
;;     (base00      . "#928374")
;;     (base0       . "#a89984")
;;     (base1       . "#bdae93")
;;     (base2       . "#a89984")
;;     (base3       . "#fbf1c7")
;;     (yellow      . "#d79921")
;;     (orange      . "#d65d0e")
;;     (red         . "#fb4933")
;;     (magenta     . "#d3869b")
;;     (violet      . "#b16286")
;;     (blue        . "#458588")
;;     (cyan        . "#689d6a")
;;     (green       . "#98971a")
;;     ;; palette end
;;     )
;;     "The gruvbox color palette alist.")
;;   (load-theme 'solarized-gruvbox-dark t)
;;   ;; (custom-set-faces
;;   ;;  `(font-lock-variable-name-face ((t (:foreground ,(alist-get 'base0 palette)))))
;;   ;;  `(font-lock-builtin-face ((t (:foreground ,(alist-get 'yellow palette)))))
;;   ;;  `(font-lock-number-face ((t (:foreground ,(alist-get 'magenta palette)))))
;;   ;;  `(font-lock-operator-face ((t (:foreground ,(alist-get 'base00 palette)))))
;;   ;;  `(font-lock-constant-face
;;   ;;    ((t (:foreground ,(alist-get 'orange palette) :weight normal))))
;;   ;;  `(flymake-error ((t (:foreground ,(alist-get 'red palette)))))
;;   ;;  `(bold
;;   ;;    ((t (:foreground ,(alist-get 'base1 palette) :weight bold))))
;;   ;;  `(denote-faces-delimiter
;;   ;;    ((t (:foreground ,(alist-get 'base02 palette)))))
;;   ;;  `(denote-faces-date ((t (:inherit shadow))))
;;   ;;  `(org-list-dt
;;   ;;    ((t (:foreground ,(alist-get 'orange palette) :weight normal :slant italic))))
;;   ;;  `(org-code ((t (:foreground ,(alist-get 'green palette))))))
;;   (custom-set-faces
;;    `(font-lock-variable-name-face ((t (:foreground ,(alist-get 'base0 palette)))))
;;    `(font-lock-keyword-face ((t (:foreground ,(alist-get 'red palette)))))
;;    `(font-lock-builtin-face ((t (:foreground ,(alist-get 'violet palette)))))
;;    `(font-lock-number-face ((t (:foreground ,(alist-get 'violet palette)))))
;;    `(font-lock-string-face ((t (:foreground ,(alist-get 'green palette)))))
;;    `(font-lock-punctuation-face ((t (:foreground ,(alist-get 'orange palette)))))
;;    `(font-lock-function-name-face ((t (:foreground ,(alist-get 'blue palette)))))
;;    `(font-lock-function-call-face ((t (:foreground ,(alist-get 'base0 palette)))))
;;    `(font-lock-operator-face ((t (:foreground ,(alist-get 'orange palette)))))
;;    `(font-lock-type-face ((t (:foreground ,(alist-get 'yellow palette)))))
;;    `(font-lock-constant-face
;;      ((t (:foreground ,(alist-get 'violet palette) :weight normal))))
;;    `(flymake-error ((t (:foreground ,(alist-get 'red palette) :underline t))))
;;    `(link
;;      ((t (:foreground ,(alist-get 'yellow palette) :weight normal :underline t))))
;;    `(bold
;;      ((t (:foreground ,(alist-get 'base1 palette) :weight bold))))
;;    `(vertical-border ((t (:foreground ,(alist-get 'base01 palette)))))
;;    `(denote-faces-delimiter
;;      ((t (:foreground ,(alist-get 'base02 palette)))))
;;    `(denote-faces-date ((t (:inherit shadow))))
;;    `(org-list-dt
;;      ((t (:foreground ,(alist-get 'orange palette) :weight normal :slant italic))))
;;    `(org-code ((t (:foreground ,(alist-get 'orange palette))))))
;;   )

;; (use-package solarized-theme
;;   :ensure t
;;   :config
;;   (setq solarized-use-less-bold t)
  ;; implementation of the belafonte-night theme
  ;; Generated and slightly altered with this little ditty right here
  ;; (solarized-create-theme-file-with-palette 'dark 'solarized-belafonte-night
  ;; '("#20111a" "#d4ccb9"
  ;;   "#e9a448" "#e9a448" "#bd100d" "#96522b" "#96522b" "#416978" "#98999c" "#858062")
  ;; '((custom-theme-set-faces
  ;;    theme-name
  ;;  ;; `(font-lock-variable-name-face ((t (:foreground ,(alist-get 'base0 palette)))))
  ;;  `(font-lock-keyword-face ((,class (:foreground ,magenta)))))
  ;;  `(font-lock-builtin-face ((,class (:foreground ,cyan))))
  ;;  `(font-lock-number-face ((,class (:foreground ,cyan))))
  ;;  `(font-lock-string-face ((,class (:foreground ,green))))
  ;;  `(font-lock-punctuation-face ((,class (:foreground ,magneta))))
  ;;  `(font-lock-function-name-face ((,class (:foreground ,blue))))
  ;;  `(font-lock-function-call-face ((,class (:foreground ,blue))))
  ;;  `(font-lock-operator-face ((,class (:foreground ,magenta))))
  ;;  `(font-lock-type-face ((,class (:foreground ,yellow))))
  ;;  `(font-lock-constant-face
  ;;    ((,class (:foreground ,violet :weight normal))))
  ;;  `(flymake-error ((,class (:foreground ,red :underline t))))
  ;;  `(link
  ;;    ((,class (:foreground ,yellow :weight normal :underline t))))
  ;;  `(bold
  ;;    ((,class (:foreground ,base1 :weight bold))))
  ;;  `(vertical-border ((,class (:foreground ,base01))))
  ;;  `(denote-faces-delimiter
  ;;    ((,class (:foreground ,base02))))
  ;;  `(denote-faces-date ((,class (:inherit shadow))))
  ;;  `(org-list-dt
  ;;    ((,class (:foreground ,magenta :weight normal :slant italic))))
  ;;  `(org-code ((,class (:foreground ,orange)))))
  ;; t)

  ;; (load-theme 'solarized-belafonte-night t))

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
