(require 'solarized)
(deftheme solarized-oktwilight-dark
  "The solarized-oktwilight-dark colour theme of Solarized colour theme flavor.")
(solarized-with-color-variables 'dark 'solarized-oktwilight-dark
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
                              ((,class (:foreground ,blue :background ,base02))))
                            `(org-code
                              ((,class (:foreground ,green :background ,base02))))
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
(provide-theme 'solarized-oktwilight-dark)
(provide 'solarized-oktwilight-dark-theme)
