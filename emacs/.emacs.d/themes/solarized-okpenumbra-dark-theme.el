(require 'solarized)
(deftheme solarized-okpenumbra-dark
  "The solarized-okpenumbra-dark colour theme of Solarized colour theme flavor.")
(solarized-with-color-variables 'dark 'solarized-okpenumbra-dark
  '((base03 . "#24272b") (base02 . "#303338") (base01 . "#5b5b5b")
    (base00 . "#7a7a7a") (base0 . "#878787") (base1 . "#b8b8b8")
    (base2 . "#e7e0d7") (base3 . "#f5ede3") (yellow . "#9a8621")
    (orange . "#b07930") (red . "#c06a63") (magenta . "#b3699f")
    (violet . "#8b78c2") (blue . "#4e8bc6") (cyan . "#229aa6")
    (green . "#3d9b6e") (yellow-d . "#3c382c") (yellow-l . "#e5d7bc")
    (orange-d . "#40362e") (orange-l . "#ead5be") (red-d . "#423436")
    (red-l . "#edd2c8") (magenta-d . "#3e3440") (magenta-l . "#e9d2d5")
    (violet-d . "#373646") (violet-l . "#e0d5dd") (blue-d . "#2f3947")
    (blue-l . "#d7d8de") (cyan-d . "#2a3c41") (cyan-l . "#d2dcd7")
    (green-d . "#2c3c38") (green-l . "#d2ddcb") (yellow-1bg . "#36342c")
    (orange-1bg . "#39322d") (red-1bg . "#3a3133") (magenta-1bg . "#38313b")
    (blue-1bg . "#2c3540") (cyan-1bg . "#29373c") (green-1bg . "#2a3735")
    (violet-1bg . "#32323f") (yellow-1fg . "#b8a35d") (orange-1fg . "#c89a65")
    (red-1fg . "#d39187") (magenta-1fg . "#c890b3") (violet-1fg . "#ac9acc")
    (blue-1fg . "#88a7cf") (cyan-1fg . "#74b3b8") (green-1fg . "#7ab490")
    (yellow-2bg . "#534a2c") (orange-2bg . "#5b4630") (red-2bg . "#604141")
    (magenta-2bg . "#5a4156") (violet-2bg . "#4b4663") (blue-2bg . "#384c64")
    (cyan-2bg . "#2e5259") (green-2bg . "#325345") (yellow-2fg . "#c6b379")
    (orange-2fg . "#d3ab7f") (red-2fg . "#dba49a") (magenta-2fg . "#d2a4bd")
    (violet-2fg . "#bcabd1") (blue-2fg . "#a1b6d4") (cyan-2fg . "#92bfc1")
    (green-2fg . "#95c0a1"))
  '((custom-theme-set-faces theme-name
                            `(highlight ((,class (:background ,base00))))
                            `(hl-line ((,class (:background ,base02 :extend t))))
                            `(region
                              ((,class
                                (:foreground ,base2 :background ,base01 :extend
                                             t))))
                            `(vertical-border ((,class (:foreground ,base02))))
                            `(font-lock-comment-face
                              ((,class (:foreground ,base01))))
                            `(font-lock-string-face
                              ((,class (:foreground ,green))))
                            `(font-lock-keyword-face
                              ((,class (:foreground ,magenta))))
                            `(font-lock-type-face ((,class (:foreground ,red))))
                            `(font-lock-function-name-face
                              ((,class (:foreground ,blue))))
                            `(font-lock-function-call-face
                              ((,class (:foreground ,blue))))
                            `(font-lock-variable-name-face
                              ((,class (:foreground ,base0))))
                            `(font-lock-variable-call-face
                              ((,class (:foreground ,base0))))
                            `(font-lock-constant-face
                              ((,class (:foreground ,orange))))
                            `(font-lock-preprocessor-face
                              ((,class (:foreground ,violet))))
                            `(font-lock-operator-face
                              ((,class (:foreground ,cyan))))
                            `(font-lock-number-face
                              ((,class (:foreground ,yellow))))
                            `(font-lock-escape-face
                              ((,class (:foreground ,violet))))
                            `(font-lock-builtin-face
                              ((,class (:foreground ,cyan))))
                            `(denote-faces-link
                              ((,class (:foreground ,blue :underline t))))
                            `(denote-faces-date ((,class (:foreground ,blue))))
                            `(denote-faces-keywords
                              ((,class (:foreground ,violet))))
                            `(org-link
                              ((,class (:foreground ,cyan :underline t))))
                            `(org-done ((,class (:foreground ,base01 :bold t))))
                            `(org-todo ((,class (:foreground ,red :bold t))))
                            `(org-priority
                              ((,class (:foreground ,yellow :bold t))))
                            `(org-verbatim
                              ((,class (:foreground ,green :background ,base02))))
                            `(org-code
                              ((,class (:foreground ,yellow :background ,base02))))
                            `(org-checkbox
                              ((,class (:foreground ,base0 :background ,base02))))
                            `(org-document-title
                              ((,class (:foreground ,blue :bold t))))
                            `(org-headline-done
                              ((,class (:foreground unspecified))))
                            `(org-level-1 ((,class (:foreground ,blue))))
                            `(org-level-2 ((,class (:foreground ,violet))))
                            `(org-level-3 ((,class (:foreground ,green))))
                            `(org-level-4 ((,class (:foreground ,yellow))))
                            `(org-level-5 ((,class (:foreground ,cyan))))
                            `(org-level-6 ((,class (:foreground ,orange))))
                            `(org-level-7 ((,class (:foreground ,red))))
                            `(org-level-8 ((,class (:foreground ,magenta))))
                            `(vertico-current
                              ((,class (:background ,base02 :underline t)))))))
(provide-theme 'solarized-okpenumbra-dark)
(provide 'solarized-okpenumbra-dark-theme)
