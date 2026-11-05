(require 'solarized)
(deftheme ok-material-vivid
  "The ok-material-vivid colour theme of Solarized colour theme flavor.")
(solarized-with-color-variables 'dark 'ok-material-vivid
  '((base03 . "#202124") (base02 . "#27292c") (base01 . "#44464d")
    (base00 . "#676c71") (base0 . "#80868b") (base1 . "#9e9e9e")
    (base2 . "#b3b3b4") (base3 . "#bebebe") (yellow . "#a89700")
    (orange . "#dc7900") (red . "#f44336") (magenta . "#997a6e")
    (violet . "#8c64e3") (blue . "#0389e5") (cyan . "#009cb4")
    (green . "#00a544") (yellow-d . "#3b3625") (yellow-l . "#bdb69e")
    (orange-d . "#453124") (orange-l . "#cbb09d") (red-d . "#492b28")
    (red-l . "#d1aaa2") (magenta-d . "#363132") (magenta-l . "#b7b0ad")
    (violet-d . "#352e46") (violet-l . "#b7adc7") (blue-d . "#293446")
    (blue-l . "#a9b3c6") (cyan-d . "#27373e") (cyan-l . "#a6b7bc")
    (green-d . "#26392b") (green-l . "#a4baa6") (yellow-1bg . "#343125")
    (orange-1bg . "#3c2d24") (red-1bg . "#3f2927") (magenta-1bg . "#312d2e")
    (blue-1bg . "#272f3d") (cyan-1bg . "#253237") (green-1bg . "#25332a")
    (violet-1bg . "#302b3d") (yellow-1fg . "#b3a24d") (orange-1fg . "#da8e4a")
    (red-1fg . "#ec715d") (magenta-1fg . "#a58e85") (violet-1fg . "#a181db")
    (blue-1fg . "#6898da") (cyan-1fg . "#5fa6b7") (green-1fg . "#5cae69")
    (yellow-2bg . "#554c24") (orange-2bg . "#694223") (red-2bg . "#72342c")
    (magenta-2bg . "#4d4240") (violet-2bg . "#4b3c6b") (blue-2bg . "#2e486a")
    (cyan-2bg . "#2a4f59") (green-2bg . "#295232") (yellow-2fg . "#b7a866")
    (orange-2fg . "#d79863") (red-2fg . "#e68371") (magenta-2fg . "#aa9891")
    (violet-2fg . "#a98ed5") (blue-2fg . "#7fa0d4") (cyan-2fg . "#77acb9")
    (green-2fg . "#74b27b"))
  '((custom-theme-set-faces theme-name
                            `(highlight ((,class (:background ,base00))))
                            `(hl-line ((,class (:background ,base02 :extend t))))
                            `(region
                              ((,class
                                (:foreground ,base03 :background ,base0 :extend
                                             t))))
                            `(show-paren-match
                              ((,class (:foreground ,base3))))
                            `(vertical-border
                              ((,class (:foreground ,base02))))
                            `(font-lock-keyword-face
                              ((,class (:foreground ,violet))))
                            `(font-lock-comment-delimiter-face
                              ((,class (:foreground ,magenta :slant italic))))
                            `(font-lock-comment-face
                              ((,class (:foreground ,magenta :slant italic))))
                            `(font-lock-function-name-face
                              ((,class (:foreground ,blue))))
                            `(font-lock-function-call-face
                              ((,class (:foreground ,blue))))
                            `(font-lock-variable-name-face
                              ((,class (:foreground ,base0))))
                            `(font-lock-variable-call-face
                              ((,class (:foreground ,base0))))
                            `(font-lock-constant-face
                              ((,class (:foreground ,base00))))
                            `(font-lock-type-face
                              ((,class (:foreground ,base00))))
                            `(font-lock-string-face
                              ((,class (:foreground ,green))))
                            `(font-lock-escape-face
                              ((,class (:foreground ,magenta))))
                            `(font-lock-operator-face
                              ((,class (:foreground ,violet))))
                            `(font-lock-number-face
                              ((,class (:foreground ,base0))))
                            `(font-lock-preprocessor-face
                              ((,class (:foreground ,base00))))
                            `(denote-faces-link
                              ((,class (:foreground ,blue :underline t))))
                            `(denote-faces-date ((,class (:foreground ,blue))))
                            `(denote-faces-keywords
                              ((,class (:foreground ,violet))))
                            `(org-link
                              ((,class (:foreground ,cyan :underline t))))
                            `(org-todo ((,class (:foreground ,base1 :bold t))))
                            `(org-done ((,class (:foreground ,base00 :bold t))))
                            `(org-quote ((,class (:foreground ,base0 :slant italic))))
                            `(org-verbatim
                              ((,class (:foreground ,blue :background ,base02))))
                            `(org-code
                              ((,class (:foreground ,orange :background ,base02))))
                            `(org-checkbox
                              ((,class (:foreground ,base0 :background ,base02))))
                            `(org-headline-done
                              ((,class (:foreground unspecified))))
                            `(org-document-title
                              ((,class (:foreground ,cyan :bold t))))
                            `(org-level-1 ((,class (:foreground ,blue :slant italic))))
                            `(org-level-2 ((,class (:foreground ,violet))))
                            `(org-level-3 ((,class (:foreground ,green))))
                            `(org-level-4 ((,class (:foreground ,yellow))))
                            `(org-level-5 ((,class (:foreground ,cyan))))
                            `(org-level-6 ((,class (:foreground ,orange))))
                            `(org-level-7 ((,class (:foreground ,red))))
                            `(org-level-8 ((,class (:foreground ,magenta))))
                            `(orderless-match-face-0 ((,class (:foreground ,yellow))))
                            `(orderless-match-face-1 ((,class (:foreground ,blue))))
                            `(orderless-match-face-2 ((,class (:foreground ,violet))))
                            `(orderless-match-face-3 ((,class (:foreground ,green))))
                            `(eglot-highlight-symbol-face ((,class (:foreground ,base3 :background unspecified))))
                            `(eglot-parameter-hint-face ((,class (:foreground ,base01))))
                            `(doom-modeline-project-parent-dir ((,class (:foreground ,base01 :weight bold))))
                            `(flymake-errline
                              ((((supports :underline (:style line)))
                                (:underline (:style line :color ,red)
                                            :inherit unspecified :foreground unspecified :background unspecified))
                               ;; (,class (:foreground ,red :weight bold :underline t))))
                               (,class (:foreground ,red :underline t))))
                            `(flymake-warnline
                              ((((supports :underline (:style line)))
                                (:underline (:style line :color ,orange)
                                            :inherit unspecified :foreground unspecified :background unspecified))
                               ;; (,class (:foreground ,orange :weight bold :underline t))))
                               (,class (:foreground ,orange :underline t))))
                            `(flymake-infoline
                              ((((supports :underline (:style line)))
                                (:underline (:style line :color ,green)
                                            :inherit unspecified :foreground unspecified :background unspecified))
                               ;; (,class (:foreground ,green :weight bold :underline t))))
                               (t (:foreground ,green :underline t))))
                            `(flymake-error
                              ((((supports :underline (:style line)))
                                (:underline (:style line :color ,red)
                                            :inherit unspecified :foreground unspecified :background unspecified))
                               (,class (:foreground ,red :underline t))))
                            `(flymake-warning
                              ((((supports :underline (:style line)))
                                (:underline (:style line :color ,orange)
                                            :inherit unspecified :foreground unspecified :background unspecified))
                               (t (:foreground ,orange :underline t))))
                            `(flymake-note
                              ((((supports :underline (:style line)))
                                (:underline (:style line :color ,green)
                                            :inherit unspecified :foreground unspecified :background unspecified))
                               (t (:foreground ,green :underline t))))
                            `(vertico-current
                              ((,class (:background ,base02 :underline t)))))))
(provide-theme 'ok-material-vivid)
(provide 'ok-material-vivid-theme)
