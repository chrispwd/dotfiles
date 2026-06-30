(require 'solarized)
(deftheme solarized-oksolar-dark
  "The solarized-oksolar-dark colour theme of Solarized colour theme flavor.")
(solarized-with-color-variables 'dark 'solarized-oksolar-dark
  '((base03 . "#002d38") (base02 . "#093946") (base01 . "#5b7279")
    (base00 . "#657377") (base0 . "#839496") (base1 . "#8faaab")
    (base2 . "#f1e9d2") (base3 . "#fbf7ef") (yellow . "#ac8300")
    (orange . "#d56500") (red . "#f23749") (magenta . "#dd459d")
    (violet . "#7d80d1") (blue . "#2b90d9") (cyan . "#259d94")
    (green . "#819500") (yellow-d . "#323d35") (yellow-l . "#efdfc2")
    (orange-d . "#3c3934") (orange-l . "#fbd9c1") (red-d . "#41363c")
    (red-l . "#ffd5cb") (magenta-d . "#38374b") (magenta-l . "#f8d6de")
    (violet-d . "#1c3d54") (violet-l . "#e3deea") (blue-d . "#053f55")
    (blue-l . "#dae1eb") (cyan-d . "#054149") (cyan-l . "#d6e5dc")
    (green-d . "#274035") (green-l . "#e4e3c3") (yellow-1bg . "#293936")
    (orange-1bg . "#313635") (red-1bg . "#35343b") (magenta-1bg . "#2d3546")
    (blue-1bg . "#043b4e") (cyan-1bg . "#033c45") (green-1bg . "#203b36")
    (violet-1bg . "#15394d") (yellow-1fg . "#c8a456") (orange-1fg . "#e99153")
    (red-1fg . "#fe7c77") (magenta-1fg . "#ea81b5") (violet-1fg . "#a5a2db")
    (blue-1fg . "#7fade0") (cyan-1fg . "#74b8ae") (green-1fg . "#a8b158")
    (yellow-2bg . "#514e30") (orange-2bg . "#63452e") (red-2bg . "#6d3c3f")
    (magenta-2bg . "#613f5e") (violet-2bg . "#344d71") (blue-2bg . "#0f5274")
    (cyan-2bg . "#0d575b") (green-2bg . "#3f5431") (yellow-2fg . "#d5b576")
    (orange-2fg . "#f0a674") (red-2fg . "#ff9890") (magenta-2fg . "#f09cc1")
    (violet-2fg . "#b8b4df") (blue-2fg . "#9dbde4") (cyan-2fg . "#93c6bc")
    (green-2fg . "#bbc078"))
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
                            `(org-headline-done ((,class (:foreground ,base01))))
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
