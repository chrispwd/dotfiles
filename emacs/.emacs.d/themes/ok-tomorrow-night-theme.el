(require 'solarized)
(deftheme ok-tomorrow-night
  "The ok-tomorrow-night colour theme of Solarized colour theme flavor.")
(solarized-with-color-variables 'dark 'ok-tomorrow-night
  '((base03 . "#1d1f21") (base02 . "#282a2e") (base01 . "#5c5e5c")
    (base00 . "#6a6d6b") (base0 . "#848785") (base1 . "#9ea19e")
    (base2 . "#afb2b0") (base3 . "#c5c8c6") (yellow . "#987e0c")
    (orange . "#b06935") (red . "#c25d5a") (magenta . "#aa6f60")
    (violet . "#91739c") (blue . "#6285a1") (cyan . "#5c8b84")
    (green . "#7f8732") (yellow-d . "#353022") (yellow-l . "#c0b8a3")
    (orange-d . "#392d26") (orange-l . "#c5b5a8") (red-d . "#3c2c2c")
    (red-l . "#c8b3af") (magenta-d . "#372e2d") (magenta-l . "#c1b6b1")
    (violet-d . "#322e37") (violet-l . "#bbb7be") (blue-d . "#2a3138")
    (blue-l . "#b2babf") (cyan-d . "#293233") (cyan-l . "#b0bcb8")
    (green-d . "#303226") (green-l . "#b8bba8") (yellow-1bg . "#2f2c22")
    (orange-1bg . "#322925") (red-1bg . "#342829") (magenta-1bg . "#312a2a")
    (blue-1bg . "#272d32") (cyan-1bg . "#262e2e") (green-1bg . "#2b2d25")
    (violet-1bg . "#2d2b31") (yellow-1fg . "#aa934d") (orange-1fg . "#bb855f")
    (red-1fg . "#c77e79") (magenta-1fg . "#b4897d") (violet-1fg . "#a18ca9")
    (blue-1fg . "#8199ac") (cyan-1fg . "#7c9d97") (green-1fg . "#969a5f")
    (yellow-2bg . "#4d4221") (orange-2bg . "#563b2a") (red-2bg . "#5c3837")
    (magenta-2bg . "#523d39") (violet-2bg . "#483f4f") (blue-2bg . "#384550")
    (cyan-2bg . "#364746") (green-2bg . "#43462a") (yellow-2fg . "#b19e67")
    (orange-2fg . "#bf9375") (red-2fg . "#c98e89") (magenta-2fg . "#b9978c")
    (violet-2fg . "#a999af") (blue-2fg . "#90a2b2") (cyan-2fg . "#8ba6a1")
    (green-2fg . "#a1a474"))
  '((custom-theme-set-faces theme-name
                            `(region
                              ((,class (:foreground ,base1 :background ,base01))))
                            `(warning
                              ((,class (:foreground ,orange :underline t))))
                            `(vertical-border ((,class (:foreground ,base02))))
                            `(font-lock-comment-face
                              ((,class (:foreground ,base01))))
                            `(font-lock-keyword-face
                              ((,class (:foreground ,red))))
                            `(font-lock-type-face
                              ((,class (:foreground ,violet))))
                            `(font-lock-number-face
                              ((,class (:foreground ,yellow))))
                            `(font-lock-builtin-face
                              ((,class (:foreground ,cyan))))
                            `(font-lock-constant-face
                              ((,class (:foreground ,yellow))))
                            `(font-lock-escape-face
                              ((,class (:foreground ,magenta))))
                            `(font-lock-preprocessor-face
                              ((,class (:foreground ,violet))))
                            `(font-lock-string-face
                              ((,class (:foreground ,green))))
                            `(font-lock-function-name-face
                              ((,class (:foreground ,blue))))
                            `(font-lock-function-call-face
                              ((,class (:foreground ,blue))))
                            `(font-lock-variable-name-face
                              ((,class (:foreground ,base0))))
                            `(font-lock-variable-call-face
                              ((,class (:foreground ,base0))))
                            `(org-link
                              ((,class (:foreground ,cyan :underline t))))
                            `(org-done
                              ((,class (:foreground ,base01 :weight bold))))
                            `(org-headline-done
                              ((,class (:inherit unspecified))))
                            `(org-code
                              ((,class (:foreground ,red :background ,base02))))
                            `(org-upcoming-deadline
                              ((,class (:foreground ,yellow))))
                            `(org-imminent-deadline
                              ((,class (:foreground ,red))))
                            `(org-verbatim
                              ((,class (:foreground ,green :background ,base02))))
                            `(org-checkbox
                              ((,class
                                (:foreground ,base1 :background ,base02 :box
                                             (:line-width 1 :style
                                                          released-button)))))
                            `(org-level-1 ((,class (:foreground ,red))))
                            `(org-level-2 ((,class (:foreground ,blue))))
                            `(org-level-3 ((,class (:foreground ,violet))))
                            `(org-level-4 ((,class (:foreground ,cyan))))
                            `(org-level-5 ((,class (:foreground ,green))))
                            `(org-level-6 ((,class (:foreground ,yellow))))
                            `(org-level-7 ((,class (:foreground ,orange))))
                            `(org-level-8 ((,class (:foreground ,magenta))))
                            `(denote-faces-link
                              ((,class (:foreground ,blue :underline t))))
                            `(denote-faces-date ((,class (:foreground ,blue))))
                            `(denote-faces-keywords
                              ((,class (:foreground ,violet)))))))
(provide-theme 'ok-tomorrow-night)
(provide 'ok-tomorrow-night-theme)
