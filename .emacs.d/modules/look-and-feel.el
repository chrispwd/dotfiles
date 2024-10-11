;;; look-and-feel.el -*- lexical-binding: t; -*-

(cpwd/install-if-not 'all-the-icons)
(cpwd/install-if-not 'doom-themes)
(cpwd/install-if-not 'doom-modeline)
(cpwd/install-if-not 'autothemer)

;; Custom themes dir
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

;; Theme
(use-package all-the-icons
  :ensure t)

(use-package doom-modeline
  :ensure t
  :after (all-the-icons)
  :hook (after-init . doom-modeline-mode)
  :init
  (setq doom-modeline-icon nil)
  :config
  (customize-set-variable 'doom-modeline-height 15)
  (customize-set-variable 'doom-modeline-bar-width 6)
  (customize-set-variable 'doom-modeline-minor-modes t)
  (customize-set-variable
   'doom-modeline-buffer-file-name-style 'truncate-except-project))

(use-package doom-themes
  :ensure t
  :init
  (setq doom-themes-enable-bold nil)
  :config
  (load-theme 'doom-solarized-dark t))

(provide 'look-and-feel)
