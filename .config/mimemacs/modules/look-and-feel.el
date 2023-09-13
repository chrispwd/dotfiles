;;; look-and-feel.el -*- lexical-binding: t; -*-

(cpwd/install-if-not 'all-the-icons)
(cpwd/install-if-not 'doom-themes)
(cpwd/install-if-not 'doom-modeline)
(cpwd/install-if-not 'autothemer)
(cpwd/install-if-not 'fontaine)
(cpwd/install-if-not 'ef-themes)

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
             (customize-set-variable 'doom-modeline-buffer-file-name-style 'truncate-except-project))

(use-package fontaine
  :ensure t
  :if (or (daemonp) (display-graphic-p))
  :init
  (setq fontaine-latest-state-file
      (locate-user-emacs-file "fontaine-latest-state.eld"))
  (setq fontaine-presets
      '((tiny
         :default-family "Fixed (OTB)"
         :default-height 80)
        (regular
         :default-height 150)
        (medium
         :default-height 160)
        (large
         :default-height 170
         :bold-weight bold)
        (presentation
         :default-height 190
         :bold-weight bold)
        (jumbo
         :default-height 220
         :bold-weight bold)
        (t
         ;; I keep all properties for didactic purposes, but most can be
         ;; omitted.  See the fontaine manual for the technicalities:
         ;; <https://protesilaos.com/emacs/fontaine>.
         :default-family "Ubuntu Mono"
         :default-weight regular
         :default-height 150
         :fixed-pitch-family nil ; falls back to :default-family
         :fixed-pitch-weight nil ; falls back to :default-weight
         :fixed-pitch-height 1.0
         :fixed-pitch-serif-family nil ; falls back to :default-family
         :fixed-pitch-serif-weight nil ; falls back to :default-weight
         :fixed-pitch-serif-height 1.0
         :variable-pitch-family "Ubuntu"
         :variable-pitch-weight regular
         :variable-pitch-height 1.0
         :bold-family nil ; use whatever the underlying face has
         :bold-weight bold
         :italic-family nil
         :italic-slant oblique
         :line-spacing nil)))
  :config
  (fontaine-set-preset (or (fontaine-restore-latest-preset) 'regular))
  :catch (lambda (keyword err)
           (message (error-message-string err)))
  :hook
  (kill-emacs . fontaine-store-latest-preset))

(use-package ef-themes
  :ensure t
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
        (t variable-pitch 1.0))))
;; (ef-themes-select 'ef-night))

(use-package doom-themes
  :ensure t
  :config
  (load-theme 'doom-one t))

;; Module interoperability
(add-hook 'ef-themes-post-load-hook #'fontaine-apply-current-preset)

(if (daemonp)
    (add-hook 'server-after-make-frame-hook
              #'fontaine-apply-current-preset)
  (fontaine-apply-current-preset))

(provide 'look-and-feel)
