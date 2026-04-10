;;; style-config.el --- Look and feel -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

;; Load themes directory and theme
(add-to-list 'custom-theme-load-path (concat user-emacs-directory "themes"))

;; Swap commented palette and theme name in `load-theme' to switch
;; between solarized and gruvbox
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
 
  (load-theme 'solarized-dark t)
 
  ;; (custom-set-faces
  ;;    `(font-lock-variable-name-face ((t (:foreground ,(alist-get 'base0 palette)))))
  ;;  `(font-lock-keyword-face ((t (:foreground ,(alist-get 'red palette)))))
  ;;  `(font-lock-builtin-face ((t (:foreground ,(alist-get 'violet palette)))))
  ;;  `(font-lock-number-face ((t (:foreground ,(alist-get 'violet palette)))))
  ;;  `(font-lock-string-face ((t (:foreground ,(alist-get 'green palette)))))
  ;;  `(font-lock-punctuation-face ((t (:foreground ,(alist-get 'orange palette)))))
  ;;  `(font-lock-function-name-face ((t (:foreground ,(alist-get 'blue palette)))))
  ;;  `(font-lock-function-call-face ((t (:foreground ,(alist-get 'base0 palette)))))
  ;;  `(font-lock-operator-face ((t (:foreground ,(alist-get 'orange palette)))))
  ;;  `(font-lock-type-face ((t (:foreground ,(alist-get 'yellow palette)))))
  ;;  `(font-lock-constant-face
  ;;    ((t (:foreground ,(alist-get 'violet palette) :weight normal))))
  ;;  `(flymake-error ((t (:foreground ,(alist-get 'red palette) :underline t))))
  ;;  `(link
  ;;    ((t (:foreground ,(alist-get 'yellow palette) :weight normal :underline t))))
  ;;  `(bold
  ;;    ((t (:foreground ,(alist-get 'base1 palette) :weight bold))))
  ;;  `(vertical-border ((t (:foreground ,(alist-get 'base01 palette)))))
  ;;  `(denote-faces-delimiter
  ;;    ((t (:foreground ,(alist-get 'base02 palette)))))
  ;;  `(denote-faces-date ((t (:inherit shadow))))
  ;;  `(org-list-dt
  ;;    ((t (:foreground ,(alist-get 'orange palette) :weight normal :slant italic))))
  ;;  `(org-code ((t (:foreground ,(alist-get 'orange palette))))))
  (custom-set-faces
   `(org-level-1
     ((t (:foreground
          ,(alist-get 'violet palette)))))
   `(org-level-2
     ((t (:foreground
          ,(alist-get 'blue palette)))))
   `(org-level-3
     ((t (:foreground
          ,(alist-get 'cyan palette)))))
   `(org-level-4
     ((t (:foreground
          ,(alist-get 'green palette)))))
   `(org-level-5
     ((t (:foreground
          ,(alist-get 'orange palette)))))
   `(org-level-6
     ((t (:foreground
          ,(alist-get 'yellow palette)))))
   `(org-level-7
     ((t (:foreground
          ,(alist-get 'magenta palette)))))
   `(org-level-8
     ((t (:foreground
          ,(alist-get 'red palette)))))
   `(org-document-title
     ((t (:foreground
          ,(alist-get 'blue palette)))))
   `(font-lock-variable-name-face ((t (:foreground ,(alist-get 'base0 palette)))))
   `(font-lock-keyword-face ((t (:foreground ,(alist-get 'green palette)))))
   `(font-lock-builtin-face ((t (:foreground ,(alist-get 'violet palette)))))
   ;; `(font-lock-number-face ((t (:foreground ,(alist-get 'violet palette)))))
   `(font-lock-string-face ((t (:foreground ,(alist-get 'cyan palette)))))
   `(font-lock-function-name-face ((t (:foreground ,(alist-get 'blue palette)))))
   `(font-lock-function-call-face ((t (:foreground ,(alist-get 'blue palette)))))
   ;; `(font-lock-operator-face ((t (:foreground ,(alist-get 'orange palette)))))
   ;; `(font-lock-punctuation-face ((t (:foreground ,(alist-get 'orange palette)))))
   `(font-lock-type-face ((t (:foreground ,(alist-get 'yellow palette)))))
   `(font-lock-constant-face
     ((t (:foreground ,(alist-get 'yellow palette) :weight normal))))
   `(eglot-highlight-symbol-face
     ((t (:foreground ,(alist-get 'base2 palette) :weight bold))))
   `(flymake-error ((t (:foreground ,(alist-get 'red palette) :underline t))))
   `(link
     ((t (:foreground ,(alist-get 'yellow palette) :weight normal :underline t))))
   `(bold
     ((t (:weight bold))))
   `(vertical-border ((t (:foreground ,(alist-get 'base01 palette)))))
   `(denote-faces-delimiter
     ((t (:foreground ,(alist-get 'base02 palette)))))
   `(denote-faces-date ((t (:inherit shadow))))
   `(org-list-dt
     ((t (:foreground ,(alist-get 'orange palette) :weight normal :slant italic))))
   `(org-code ((t (:foreground ,(alist-get 'orange palette))))))
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
