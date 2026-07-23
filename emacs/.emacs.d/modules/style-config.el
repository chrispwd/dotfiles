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
  (solarized-create-theme-file 'dark 'solarized-oktwilight-dark
    '((base03 . "#1e1e1e") (base02 . "#323537") (base01 . "#5f5a60")
    (base00 . "#7b797c") (base0 . "#878787") (base1 . "#b2b2b2")
    (base2 . "#d2d2d2") (base3 . "#dedede") (yellow . "#9d923c")
    (orange . "#b2883a") (red . "#cf6a4c") (magenta . "#9b703f")
    (violet . "#9b859d") (blue . "#7587a6") (cyan . "#73969d")
    (green . "#8b9965") (yellow-d . "#3e3b2d") (yellow-l . "#d3cebd")
    (orange-d . "#423a2d") (orange-l . "#d8ccbc") (red-d . "#48352f")
    (red-l . "#e0c7bf") (magenta-d . "#3e352d") (magenta-l . "#d3c7bc")
    (violet-d . "#3d393d") (violet-l . "#d0ccd1") (blue-d . "#37393f")
    (blue-l . "#c9ccd3") (cyan-d . "#363c3d") (cyan-l . "#c8cfd1")
    (green-d . "#3a3d34") (green-l . "#cdd0c5") (yellow-1bg . "#39362c")
    (orange-1bg . "#3c352c") (red-1bg . "#40322d") (magenta-1bg . "#39322c")
    (blue-1bg . "#333539") (cyan-1bg . "#333738") (green-1bg . "#363731")
    (violet-1bg . "#383538") (yellow-1fg . "#b3a86d") (orange-1fg . "#c3a16b")
    (red-1fg . "#d98d76") (magenta-1fg . "#b2906d") (violet-1fg . "#af9fb0")
    (blue-1fg . "#94a0b7") (cyan-1fg . "#93abb0") (green-1fg . "#a4ad88")
    (yellow-2bg . "#555032") (orange-2bg . "#5d4c31") (red-2bg . "#684236")
    (magenta-2bg . "#554332") (violet-2bg . "#534b54") (blue-2bg . "#464c57")
    (cyan-2bg . "#455154") (green-2bg . "#4e5240") (yellow-2fg . "#bdb384")
    (orange-2fg . "#caae83") (red-2fg . "#dc9e8b") (magenta-2fg . "#bca084")
    (violet-2fg . "#b9acba") (blue-2fg . "#a4adbf") (cyan-2fg . "#a3b6ba")
    (green-2fg . "#b0b89a"))
    '((custom-theme-set-faces
       theme-name
       `(highlight ((,class (:background ,base00))))
       `(hl-line
         ((,class (:background ,base02 :extend t))))
       `(region
         ((,class (:foreground ,base2 :background ,base01 :extend t))))
       `(vertical-border
         ((,class (:foreground ,base02))))
       `(font-lock-comment-face
         ((,class (:foreground ,base01))))
       `(font-lock-string-face
         ((,class (:foreground ,green))))
       `(font-lock-keyword-face
         ((,class (:foreground ,red))))
       `(font-lock-type-face
         ((,class (:foreground ,yellow))))
       `(font-lock-function-name-face
         ((,class (:foreground ,blue))))
       `(font-lock-function-call-face
         ((,class (:foreground ,blue))))
       `(font-lock-variable-name-face
         ((,class (:foreground ,base0))))
       `(font-lock-variable-call-face
         ((,class (:foreground ,base0))))
       `(font-lock-constant-face
         ((,class (:foreground ,violet))))
       `(font-lock-preprocessor-face
         ((,class (:foreground ,magenta))))
       `(font-lock-operator-face
         ((,class (:foreground ,violet))))
       `(font-lock-number-face
         ((,class (:foreground ,violet))))
       `(font-lock-escape-face
         ((,class (:foreground ,magenta))))
       `(font-lock-builtin-face
         ((,class (:foreground ,cyan))))
       `(denote-faces-link ((,class (:foreground ,blue :underline t))))
       `(denote-faces-date ((,class (:foreground ,blue))))
       `(denote-faces-keywords ((,class (:foreground ,violet))))
       `(org-link ((,class (:foreground ,cyan :underline t))))
       `(org-done ((,class (:foreground ,base01 :bold t))))
       `(org-todo ((,class (:foreground ,red :bold t))))
       `(org-priority ((,class (:foreground ,yellow :bold t))))
       `(org-verbatim ((,class (:foreground ,green :background ,base02))))
       `(org-code ((,class (:foreground ,yellow :background ,base02))))
       `(org-checkbox ((,class (:foreground ,base0 :background ,base02))))
       `(org-document-title ((,class (:foreground ,blue :bold t))))
       `(org-headline-done ((,class (:foreground unspecified))))
       `(org-level-1 ((,class (:foreground ,blue))))
       `(org-level-2 ((,class (:foreground ,violet))))
       `(org-level-3 ((,class (:foreground ,green))))
       `(org-level-4 ((,class (:foreground ,yellow))))
       `(org-level-5 ((,class (:foreground ,cyan))))
       `(org-level-6 ((,class (:foreground ,orange))))
       `(org-level-7 ((,class (:foreground ,red))))
       `(org-level-8 ((,class (:foreground ,magenta))))
       `(vertico-current ((,class (:background ,base02 :underline t)))))))

  (load-theme 'solarized-oktwilight-dark t))

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
