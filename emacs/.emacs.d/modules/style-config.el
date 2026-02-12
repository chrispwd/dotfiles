;;; style-config.el --- Look and feel -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

;; Load themes directory and theme
(add-to-list 'custom-theme-load-path (concat user-emacs-directory "themes"))

(use-package base16-theme
  :ensure t
  :config
  (setq base16-theme-256-color-source 'colors)
  (load-theme 'base16-penumbra-dark t)
  (defvar my/base16-colors
  '(:base00 "#24272b"
    :base01 "#303338"
    :base02 "#3e4044"
    :base03 "#636363"
    :base04 "#7a7a7a"
    :base05 "#8f8f8f"
    :base06 "#bebebe"
    :base07 "#fff7ed"
    :red "#ca736c" ; red
    :orange "#ba823a" ; orange
    :yellow "#A38F2D" ; yellow
    :green "#47a477" ; green
    :cyan "#00a2af" ; cyan
    :blue "#5794d0" ; blue
    :violet "#9481cc" ; purple
    :magenta "#bd72a8") ; magenta
  "All colors for Base16 Penumbra Dark are defined here.")
  
  (custom-set-faces
   `(default
     ((t (:foreground
          ,(plist-get my/base16-colors :base05)
          :background
          ,(plist-get my/base16-colors :base01)))))
   `(mode-line
     ((t (:foreground
          ,(plist-get my/base16-colors :base04)
          :background
          ,(plist-get my/base16-colors :base00)))))
   `(mode-line-inactive
     ((t (:foreground
          ,(plist-get my/base16-colors :base03)
          :background
          ,(plist-get my/base16-colors :base00)))))
   `(line-number
     ((t (:foreground
          ,(plist-get my/base16-colors :base03)
          :background
          ,(plist-get my/base16-colors :base01)))))
   `(line-number-current-line
     ((t (:foreground
          ,(plist-get my/base16-colors :base06)))))
   `(hl-line
     ((t (:background
          ,(plist-get my/base16-colors :base00)))))
   `(highlight
     ((t (:background
          ,(plist-get my/base16-colors :base00)))))
   `(link
     ((t (:foreground
          ,(plist-get my/base16-colors :cyan)
          :underline t))))
   `(tab-bar-tab
     ((t (:foreground
          ,(plist-get my/base16-colors :base06)
          :background
          ,(plist-get my/base16-colors :base01)))))
   `(tab-bar
     ((t (:foreground
          ,(plist-get my/base16-colors :base03)
          :background
          ,(plist-get my/base16-colors :base00)))))
   `(tab-bar-tab-inactive
     ((t (:foreground
          ,(plist-get my/base16-colors :base03)
          :background
          ,(plist-get my/base16-colors :base00)))))
   `(region
     ((t (:foreground
          ,(plist-get my/base16-colors :base07)
          :background
          ,(plist-get my/base16-colors :base03)))))
   `(ansi-color-red
     ((t (:foreground
          ,(plist-get my/base16-colors :red)
          :background
          ,(plist-get my/base16-colors :red)))))
   `(ansi-color-blue
     ((t (:foreground
          ,(plist-get my/base16-colors :blue)
          :background
          ,(plist-get my/base16-colors :blue)))))
   `(ansi-color-cyan
     ((t (:foreground
          ,(plist-get my/base16-colors :cyan)
          :background
          ,(plist-get my/base16-colors :cyan)))))
   `(ansi-color-magenta
     ((t (:foreground
          ,(plist-get my/base16-colors :magenta)
          :background
          ,(plist-get my/base16-colors :magenta)))))
   `(ansi-color-green
     ((t (:foreground
          ,(plist-get my/base16-colors :green)
          :background
          ,(plist-get my/base16-colors :green)))))
   `(show-paren-match
     ((t (:foreground
          ,(plist-get my/base16-colors :base06)
          :background
          ,(plist-get my/base16-colors :base02)))))
   `(show-paren-mismatch
     ((t (:foreground
          ,(plist-get my/base16-colors :base00)
          :background
          ,(plist-get my/base16-colors :red)))))
   `(success
     ((t (:foreground
          ,(plist-get my/base16-colors :green)
          :weight
          bold))))
   `(error
     ((t (:foreground
          ,(plist-get my/base16-colors :red)
          :weight
          bold))))
   `(warning
     ((t (:foreground
          ,(plist-get my/base16-colors :orange)
          :weight
          bold))))
   `(eglot-highlight-symbol-face
     ((t (:foreground
          ,(plist-get my/base16-colors :base06)
          :weight
          bold))))
   `(font-lock-keyword-face
     ((t (:foreground
          ,(plist-get my/base16-colors :violet)))))
   `(font-lock-variable-name-face
     ((t (:foreground
          ,(plist-get my/base16-colors :base05)))))
   `(font-lock-function-name-face
     ((t (:foreground
          ,(plist-get my/base16-colors :blue)))))
   `(font-lock-function-call-face
     ((t (:foreground
          ,(plist-get my/base16-colors :blue)))))
   `(font-lock-builtin-face
     ((t (:foreground
          ,(plist-get my/base16-colors :magenta)))))
   `(font-lock-constant-face
     ((t (:foreground
          ,(plist-get my/base16-colors :orange)
          :weight normal))))
   `(font-lock-type-face
     ((t (:foreground
          ,(plist-get my/base16-colors :red)
          :weight normal))))
   `(font-lock-string-face
     ((t (:foreground
          ,(plist-get my/base16-colors :green)
          :weight normal))))
   `(font-lock-operator-face
     ((t (:foreground
          ,(plist-get my/base16-colors :cyan)))))
   `(font-lock-preprocessor-face
     ((t (:foreground
          ,(plist-get my/base16-colors :cyan)))))
   `(rainbow-delimiters-depth-1-face
     ((t (:foreground
          ,(plist-get my/base16-colors :violet)))))
   `(rainbow-delimiters-depth-2-face
     ((t (:foreground
          ,(plist-get my/base16-colors :blue)))))
   `(rainbow-delimiters-depth-3-face
     ((t (:foreground
          ,(plist-get my/base16-colors :cyan)))))
   `(rainbow-delimiters-depth-4-face
     ((t (:foreground
          ,(plist-get my/base16-colors :green)))))
   `(rainbow-delimiters-depth-5-face
     ((t (:foreground
          ,(plist-get my/base16-colors :red)))))
   `(rainbow-delimiters-depth-6-face
     ((t (:foreground
          ,(plist-get my/base16-colors :orange)))))
   `(rainbow-delimiters-depth-7-face
     ((t (:foreground
          ,(plist-get my/base16-colors :yellow)))))
   `(rainbow-delimiters-depth-8-face
     ((t (:foreground
          ,(plist-get my/base16-colors :magenta)))))
   `(rainbow-delimiters-base-error-face
     ((t (:foreground
          ,(plist-get my/base16-colors :base00)
          :background
          ,(plist-get my/base16-colors :red)))))
   `(avy-lead-face
     ((t (:foreground
          ,(plist-get my/base16-colors :base00)
          :background
          ,(plist-get my/base16-colors :orange)))))
   `(avy-lead-face-0
     ((t (:foreground
          ,(plist-get my/base16-colors :base00)
          :background
          ,(plist-get my/base16-colors :blue)))))
   `(avy-lead-face-1
     ((t (:foreground
          ,(plist-get my/base16-colors :base00)
          :background
          ,(plist-get my/base16-colors :magenta)))))
   `(avy-lead-face-2
     ((t (:foreground
          ,(plist-get my/base16-colors :base00)
          :background
          ,(plist-get my/base16-colors :yellow)))))
   `(orderless-match-face-0
     ((t (:foreground
          ,(plist-get my/base16-colors :blue)
          :weight
          bold))))
   `(orderless-match-face-1
     ((t (:foreground
          ,(plist-get my/base16-colors :magenta)
          :weight
          bold))))
   `(orderless-match-face-2
     ((t (:foreground
          ,(plist-get my/base16-colors :green)
          :weight
          bold))))
   `(orderless-match-face-3
     ((t (:foreground
          ,(plist-get my/base16-colors :yellow)
          :weight
          bold))))
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
          ,(plist-get my/base16-colors :magenta)))))
   `(org-document-title
     ((t (:foreground
          ,(plist-get my/base16-colors :orange)))))
   `(org-date
     ((t (:foreground
          ,(plist-get my/base16-colors :green)))))
   `(org-agenda-done
     ((t (:foreground
          ,(plist-get my/base16-colors :base03)))))
   `(org-agenda-structure
     ((t (:foreground
          ,(plist-get my/base16-colors :violet)))))
   `(org-agenda-clocking
     ((t (:foreground
          ,(plist-get my/base16-colors :base05)
          :background
          ,(plist-get my/base16-colors :base00)
          :slant italic))))
   `(org-agenda-current-time
     ((t (:foreground
          ,(plist-get my/base16-colors :base06)))))
   `(org-special-keyword
     ((t (:foreground
          ,(plist-get my/base16-colors :orange)))))
   `(org-agenda-date
     ((t (:foreground
          ,(plist-get my/base16-colors :blue)))))
   `(org-scheduled-previously
     ((t (:foreground
          ,(plist-get my/base16-colors :yellow)))))
   `(org-imminent-deadline
     ((t (:foreground
          ,(plist-get my/base16-colors :red)
          :weight bold))))
   `(org-upcoming-distant-deadline
     ((t (:foreground
          ,(plist-get my/base16-colors :orange)))))
   `(org-scheduled
     ((t (:foreground
          ,(plist-get my/base16-colors :green)))))
   `(org-scheduled-today
     ((t (:foreground
          ,(plist-get my/base16-colors :base06)))))
   `(org-agenda-date-today
     ((t (:foreground
          ,(plist-get my/base16-colors :blue)
          :weight bold
          :slant italic
          :underline t))))
   `(org-done
     ((t (:foreground
          ,(plist-get my/base16-colors :base03)
          :weight bold))))
   `(org-todo
     ((t (:foreground
          ,(plist-get my/base16-colors :red)
          :weight bold))))
   `(org-time-grid
     ((t (:foreground
          ,(plist-get my/base16-colors :base04)))))
   `(org-headline-done
     ((t (:foreground
          ,(plist-get my/base16-colors :base03)))))
   `(org-drawer
     ((t (:foreground
          ,(plist-get my/base16-colors :base03)))))
   `(org-document-info
     ((t (:foreground
          ,(plist-get my/base16-colors :base04)))))
   `(org-document-info-keyword
     ((t (:foreground
          ,(plist-get my/base16-colors :base04)))))
   `(org-verbatim
     ((t (:foreground
          ,(plist-get my/base16-colors :green)))))
   `(org-link
     ((t (:foreground
          ,(plist-get my/base16-colors :cyan)
          :underline t))))
   `(org-code
     ((t (:foreground
          ,(plist-get my/base16-colors :orange)))))
   `(org-quote
     ((t (:foreground
          ,(plist-get my/base16-colors :base05)
          :background
          ,(plist-get my/base16-colors :base01)
          :slant italic))))
   `(org-block
     ((t (:background
          ,(plist-get my/base16-colors :base00)
          :foreground
          ,(plist-get my/base16-colors :base05)
          :extend t))))
   `(org-table
     ((t :foreground
          ,(plist-get my/base16-colors :violet))))
   `(org-checkbox
     ((t (:background
          ,(plist-get my/base16-colors :base00)
          :foreground
          ,(plist-get my/base16-colors :base05)
          :weight bold))))
   `(denote-faces-date
     ((t (:foreground
          ,(plist-get my/base16-colors :base03)))))
   `(denote-faces-delimiter
     ((t (:foreground
          ,(plist-get my/base16-colors :base00)))))
   `(doom-modeline-project-dir
     ((t (:foreground
          ,(plist-get my/base16-colors :cyan)
          :slant
          italic))))
   `(doom-modeline-buffer-file
     ((t (:foreground
          ,(plist-get my/base16-colors :base06)
          :slant
          italic
          :weight
          bold))))
   )
)

;; Default face (gui only)
(unless (not (display-graphic-p))
  (if (eq system-type 'darwin)
      (set-face-attribute 'default nil :family (getenv "MY_MONO_FONT") :height 140)
	(set-face-attribute 'default nil :family (getenv "MY_MONO_FONT") :height 120)))

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
