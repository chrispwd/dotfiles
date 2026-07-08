;;; style-config.el --- Look and feel -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

;; Load themes directory and theme
(add-to-list 'custom-theme-load-path (concat user-emacs-directory "themes"))

;; (load-theme 'zenburn t)

;; (use-package solarized-theme
;;   :ensure t
;;   :config
;;   (setq solarized-use-less-bold t)
;;   ;; oksolar palette with custom face overrides
;;   (solarized-create-theme-file 'dark 'ok-tomorrow-night
;;     '((base03 . "#1d1f21") (base02 . "#282a2e") (base01 . "#5c5e5c")
;;       (base00 . "#6a6d6b") (base0 . "#848785") (base1 . "#9ea19e")
;;       (base2 . "#afb2b0") (base3 . "#c5c8c6") (yellow . "#987e0c")
;;       (orange . "#b06935") (red . "#c25d5a") (magenta . "#aa6f60")
;;       (violet . "#91739c") (blue . "#6285a1") (cyan . "#5c8b84")
;;       (green . "#7f8732") (yellow-d . "#353022") (yellow-l . "#c0b8a3")
;;       (orange-d . "#392d26") (orange-l . "#c5b5a8") (red-d . "#3c2c2c")
;;       (red-l . "#c8b3af") (magenta-d . "#372e2d") (magenta-l . "#c1b6b1")
;;       (violet-d . "#322e37") (violet-l . "#bbb7be") (blue-d . "#2a3138")
;;       (blue-l . "#b2babf") (cyan-d . "#293233") (cyan-l . "#b0bcb8")
;;       (green-d . "#303226") (green-l . "#b8bba8") (yellow-1bg . "#2f2c22")
;;       (orange-1bg . "#322925") (red-1bg . "#342829") (magenta-1bg . "#312a2a")
;;       (blue-1bg . "#272d32") (cyan-1bg . "#262e2e") (green-1bg . "#2b2d25")
;;       (violet-1bg . "#2d2b31") (yellow-1fg . "#aa934d") (orange-1fg . "#bb855f")
;;       (red-1fg . "#c77e79") (magenta-1fg . "#b4897d") (violet-1fg . "#a18ca9")
;;       (blue-1fg . "#8199ac") (cyan-1fg . "#7c9d97") (green-1fg . "#969a5f")
;;       (yellow-2bg . "#4d4221") (orange-2bg . "#563b2a") (red-2bg . "#5c3837")
;;       (magenta-2bg . "#523d39") (violet-2bg . "#483f4f") (blue-2bg . "#384550")
;;       (cyan-2bg . "#364746") (green-2bg . "#43462a") (yellow-2fg . "#b19e67")
;;       (orange-2fg . "#bf9375") (red-2fg . "#c98e89") (magenta-2fg . "#b9978c")
;;       (violet-2fg . "#a999af") (blue-2fg . "#90a2b2") (cyan-2fg . "#8ba6a1")
;;       (green-2fg . "#a1a474"))
;;     '((custom-theme-set-faces
;;        theme-name
;;        `(region ((,class (:foreground ,base1 :background ,base01))))
;;        `(warning ((,class (:foreground ,orange :underline t))))
;;        `(vertical-border ((,class (:foreground ,base02))))
;;        `(font-lock-comment-face ((,class (:foreground ,base01))))
;;        ;; `(font-lock-punctuation-face ((,class (:foreground ,violet))))
;;        ;; `(font-lock-operator-face ((,class (:foreground ,violet))))
;;        `(font-lock-keyword-face ((,class (:foreground ,red))))
;;        `(font-lock-type-face ((,class (:foreground ,violet))))
;;        `(font-lock-number-face ((,class (:foreground ,yellow))))
;;        `(font-lock-builtin-face ((,class (:foreground ,cyan))))
;;        `(font-lock-constant-face ((,class (:foreground ,yellow))))
;;        `(font-lock-escape-face ((,class (:foreground ,magenta))))
;;        `(font-lock-preprocessor-face ((,class (:foreground ,violet))))
;;        `(font-lock-string-face ((,class (:foreground ,green))))
;;        `(font-lock-function-name-face ((,class (:foreground ,blue))))
;;        `(font-lock-function-call-face ((,class (:foreground ,blue))))
;;        `(font-lock-variable-name-face ((,class (:foreground ,base0))))
;;        `(font-lock-variable-call-face ((,class (:foreground ,base0))))
;;        `(org-link ((,class (:foreground ,cyan :underline t))))
;;        `(org-done ((,class (:foreground ,base01 :weight bold))))
;;        `(org-headline-done ((,class (:inherit unspecified))))
;;        `(org-code ((,class (:foreground ,red :background ,base02))))
;;        `(org-upcoming-deadline ((,class (:foreground ,yellow))))
;;        `(org-imminent-deadline ((,class (:foreground ,red))))
;;        `(org-verbatim ((,class (:foreground ,green :background ,base02))))
;;        `(org-checkbox
;;          ((,class (:foreground ,base1 :background ,base02
;;                                :box (:line-width 1 :style released-button)))))
;;        `(org-level-1 ((,class (:foreground ,red))))
;;        `(org-level-2 ((,class (:foreground ,blue))))
;;        `(org-level-3 ((,class (:foreground ,violet))))
;;        `(org-level-4 ((,class (:foreground ,cyan))))
;;        `(org-level-5 ((,class (:foreground ,green))))
;;        `(org-level-6 ((,class (:foreground ,yellow))))
;;        `(org-level-7 ((,class (:foreground ,orange))))
;;        `(org-level-8 ((,class (:foreground ,magenta))))
;;        `(denote-faces-link ((,class (:foreground ,blue :underline t))))
;;        `(denote-faces-date ((,class (:foreground ,blue))))
;;        `(denote-faces-keywords ((,class (:foreground ,violet)))))))

;;   (load-theme 'ok-tomorrow-night t))
(use-package solarized-theme
  :ensure t
  :config
  (setq solarized-use-less-bold t)
  ;; oksolar palette with custom face overrides
  (solarized-create-theme-file 'dark 'solarized-oksolar-dark
    '((base03 . "#002b36") (base02 . "#093946") (base01 . "#536970")
      (base00 . "#657377") (base0 . "#748587") (base1 . "#93a1a1")
      (base2 . "#d4cfc1") (base3 . "#e4e0d8") (yellow . "#a07b0d")
      (orange . "#c16424") (red . "#d7474e") (magenta . "#c74d90")
      (violet . "#7477c7") (blue . "#1d87ce") (cyan . "#13948b")
      (green . "#798b04") (yellow-d . "#2e3a33") (yellow-l . "#dacbb1")
      (orange-d . "#363735") (orange-l . "#e2c7b3") (red-d . "#3a343b")
      (red-l . "#e7c3bb") (magenta-d . "#323547") (magenta-l . "#e1c4c9")
      (violet-d . "#1a3a50") (violet-l . "#cfcad5") (blue-d . "#033c51")
      (blue-l . "#c6cdd7") (cyan-d . "#023e46") (cyan-l . "#c2d1c8")
      (green-d . "#243c33") (green-l . "#d0ceb1") (yellow-1bg . "#263634")
      (orange-1bg . "#2c3435") (red-1bg . "#2f323a") (magenta-1bg . "#283342")
      (blue-1bg . "#02384a") (cyan-1bg . "#023942") (green-1bg . "#1e3834")
      (violet-1bg . "#14364a") (yellow-1fg . "#b89851") (orange-1fg . "#d2895a")
      (red-1fg . "#e17a75") (magenta-1fg . "#d37da5") (violet-1fg . "#9895cd")
      (blue-1fg . "#73a0d2") (cyan-1fg . "#68aba1") (green-1fg . "#9ba451")
      (yellow-2bg . "#4c492f") (orange-2bg . "#5a4333") (red-2bg . "#613c40")
      (magenta-2bg . "#573d58") (violet-2bg . "#30496c") (blue-2bg . "#094e6f")
      (cyan-2bg . "#065256") (green-2bg . "#3b4f2f") (yellow-2fg . "#c3a76e")
      (orange-2fg . "#d89b74") (red-2fg . "#e59089") (magenta-2fg . "#d893b0")
      (violet-2fg . "#a9a5cf") (blue-2fg . "#8eaed3") (cyan-2fg . "#84b6ad")
      (green-2fg . "#acb06d"))
    '((custom-theme-set-faces
       theme-name
       `(highlight ((,class (:background ,base00))))
       `(hl-line
         ((,class (:background ,base02 :extend t))))
       `(font-lock-comment-face
         ((,class (:foreground ,base01))))
       `(font-lock-function-name-face
         ((,class (:foreground ,blue))))
       `(font-lock-function-call-face
         ((,class (:foreground ,blue))))
       `(font-lock-variable-name-face
         ((,class (:foreground ,base0))))
       `(font-lock-variable-call-face
         ((,class (:foreground ,violet))))
       `(denote-faces-link ((,class (:foreground ,blue :underline t))))
       `(denote-faces-date ((,class (:foreground ,blue))))
       `(denote-faces-keywords ((,class (:foreground ,violet))))
       `(org-link ((,class (:foreground ,cyan :underline t))))
       `(org-done ((,class (:foreground ,base01 :bold t))))
       `(org-verbatim ((,class (:foreground ,blue :background ,base02))))
       `(org-code ((,class (:foreground ,green :background ,base02))))
       `(org-checkbox ((,class (:foreground ,base0 :background ,base02))))
       `(org-headline-done ((,class (:foreground unspecified))))
       `(org-level-1 ((,class (:foreground ,green))))
       `(org-level-2 ((,class (:foreground ,yellow))))
       `(org-level-3 ((,class (:foreground ,blue))))
       `(org-level-4 ((,class (:foreground ,violet))))
       `(org-level-5 ((,class (:foreground ,cyan))))
       `(org-level-6 ((,class (:foreground ,magenta))))
       `(org-level-7 ((,class (:foreground ,orange))))
       `(org-level-8 ((,class (:foreground ,red))))
       `(vertico-current ((,class (:background ,base02 :underline t)))))))

  (load-theme 'solarized-oksolar-dark t))

(when (memq window-system '(x))
  ;; Default face (gui only)
  (set-face-attribute 'default nil :family (getenv "MY_MONO_FONT") :height 150))

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
