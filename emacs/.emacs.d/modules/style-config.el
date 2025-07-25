;;; style-config.el --- Look and feel -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

;; Load themes directory and theme
(add-to-list 'custom-theme-load-path (concat user-emacs-directory "themes"))

;; (use-package solarized-theme
;;   :ensure t
;;   :config (setq solarized-use-less-bold t))

;; (load-theme 'solarized-selenized-dark t)

;; (use-package doom-themes
;;   :ensure t
;;   ;; :config
;;   ;; (setq doom-gruvbox-material-dark-variant "soft"))
;;   )

;; (load-theme 'doom-terminix t)

(require 'color-theme-sanityinc-tomorrow)
(load-theme 'sanityinc-tomorrow-night t)

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
