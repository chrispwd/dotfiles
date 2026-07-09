(require 'solarized)
(deftheme solarized-oktwilight-dark
  "The solarized-oktwilight-dark colour theme of Solarized colour theme flavor.")
(solarized-with-color-variables 'dark 'solarized-oktwilight-dark
  '((base03 . "#282828") (base02 . "#323537") (base01 . "#5f5a60")
    (base00 . "#676269") (base0 . "#9e9e9e") (base1 . "#c0c0c0")
    (base2 . "#dedede") (base3 . "#dedede") (yellow . "#aca14c")
    (orange . "#bd985a") (red . "#cf6a4c") (magenta . "#9b859d")
    (violet . "#9b859d") (blue . "#7587a6") (cyan . "#aca1b7")
    (green . "#98a672") (yellow-d . "#434032") (yellow-l . "#d6d1c0")
    (orange-d . "#463f34") (orange-l . "#d9d0c3") (red-d . "#4b3832")
    (red-l . "#e0c7bf") (magenta-d . "#3f3c40") (magenta-l . "#d0ccd1")
    (violet-d . "#3f3c40") (violet-l . "#d0ccd1") (blue-d . "#393c41")
    (blue-l . "#c9ccd3") (cyan-d . "#424044") (cyan-l . "#d4d2d6")
    (green-d . "#3f4138") (green-l . "#d0d3c8") (yellow-1bg . "#3d3b31")
    (orange-1bg . "#3f3a32") (red-1bg . "#433430") (magenta-1bg . "#3a373a")
    (blue-1bg . "#36383c") (cyan-1bg . "#3c3b3e") (green-1bg . "#3a3c35")
    (violet-1bg . "#3a373a") (yellow-1fg . "#bdb378") (orange-1fg . "#c9ac81")
    (red-1fg . "#d98d76") (magenta-1fg . "#af9fb0") (violet-1fg . "#af9fb0")
    (blue-1fg . "#94a0b7") (cyan-1fg . "#bbb3c3") (green-1fg . "#adb792")
    (yellow-2bg . "#5c5739") (orange-2bg . "#62543e") (red-2bg . "#6a4438")
    (magenta-2bg . "#554d56") (violet-2bg . "#554d56") (blue-2bg . "#484e59")
    (cyan-2bg . "#5b575f") (green-2bg . "#545946") (yellow-2fg . "#c5bc8d")
    (orange-2fg . "#cfb794") (red-2fg . "#dc9e8b") (magenta-2fg . "#b9acba")
    (violet-2fg . "#b9acba") (blue-2fg . "#a4adbf") (cyan-2fg . "#c2bcc8")
    (green-2fg . "#b8bfa2"))
  '((custom-theme-set-faces theme-name
                            `(highlight ((,class (:background ,base00))))
                            `(vertical-border ((,class (:foreground ,base02))))
                            `(hl-line ((,class (:background ,base02 :extend t))))
                            `(region
                              ((,class
                                (:foreground ,base1 :background ,base01 :extend
                                             t))))
                            `(font-lock-keyword-face
                              ((,class (:foreground ,red))))
                            `(font-lock-comment-face
                              ((,class (:foreground ,base01))))
                            `(font-lock-function-name-face
                              ((,class (:foreground ,blue))))
                            `(font-lock-function-call-face
                              ((,class (:foreground ,blue))))
                            `(font-lock-variable-name-face
                              ((,class (:foreground ,base0))))
                            `(font-lock-variable-call-face
                              ((,class (:foreground ,base0))))
                            `(font-lock-string-face
                              ((,class (:foreground ,green))))
                            `(font-lock-escape-face
                              ((,class (:foreground ,yellow))))
                            `(font-lock-constant-face
                              ((,class (:foreground ,orange))))
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
                            `(org-level-8 ((,class (:foreground ,red)))))))
(provide-theme 'solarized-oktwilight-dark)
(provide 'solarized-oktwilight-dark-theme)
