(require 'solarized)
(deftheme solarized-oksolar-dark
  "The solarized-oksolar-dark colour theme of Solarized colour theme flavor.")
(solarized-with-color-variables 'dark 'solarized-oksolar-dark
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
  '((custom-theme-set-faces theme-name
                            `(highlight ((,class (:background ,base00))))
                            `(hl-line ((,class (:background ,base02 :extend t))))
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
                            `(denote-faces-link
                              ((,class (:foreground ,blue :underline t))))
                            `(denote-faces-date ((,class (:foreground ,blue))))
                            `(denote-faces-keywords
                              ((,class (:foreground ,violet))))
                            `(org-link
                              ((,class (:foreground ,cyan :underline t))))
                            `(org-done ((,class (:foreground ,base01 :bold t))))
                            `(org-verbatim
                              ((,class (:foreground ,blue :background ,base02))))
                            `(org-code
                              ((,class (:foreground ,green :background ,base02))))
                            `(org-checkbox
                              ((,class (:foreground ,base0 :background ,base02))))
                            `(org-headline-done
                              ((,class (:foreground unspecified))))
                            `(org-level-1 ((,class (:foreground ,green))))
                            `(org-level-2 ((,class (:foreground ,yellow))))
                            `(org-level-3 ((,class (:foreground ,blue))))
                            `(org-level-4 ((,class (:foreground ,violet))))
                            `(org-level-5 ((,class (:foreground ,cyan))))
                            `(org-level-6 ((,class (:foreground ,magenta))))
                            `(org-level-7 ((,class (:foreground ,orange))))
                            `(org-level-8 ((,class (:foreground ,red))))
                            `(vertico-current
                              ((,class (:background ,base02 :underline t)))))))
(provide-theme 'solarized-oksolar-dark)
(provide 'solarized-oksolar-dark-theme)
