(require 'solarized)
(deftheme solarized-penumbra-dark
  "The solarized-penumbra-dark colour theme of Solarized colour theme flavor.")
(solarized-with-color-variables 'dark 'solarized-penumbra-dark
  '((base03 . "#24272b") (base02 . "#303338") (base01 . "#636363")
    (base00 . "#7a7a7a") (base0 . "#8f8f8f") (base1 . "#bebebe")
    (base2 . "#f2e6d4") (base3 . "#fff7ed") (yellow . "#a38f2d")
    (orange . "#ba823a") (red . "#ca736c") (magenta . "#bd72a8")
    (violet . "#9471cc") (blue . "#5794d0") (cyan . "#00a2af")
    (green . "#47a477") (yellow-d . "#3d3a2e") (yellow-l . "#eee1c6")
    (orange-d . "#41382f") (orange-l . "#f4dfc8") (red-d . "#433637")
    (red-l . "#f7dcd2") (magenta-d . "#403642") (magenta-l . "#f3dcdf")
    (violet-d . "#393548") (violet-l . "#ebdbe7") (blue-d . "#303b48")
    (blue-l . "#e1e2e8") (cyan-d . "#2a3d43") (cyan-l . "#d9e6e0")
    (green-d . "#2d3e39") (green-l . "#dce7d4") (yellow-1bg . "#37352d")
    (orange-1bg . "#3a332e") (red-1bg . "#3c3234") (magenta-1bg . "#39323c")
    (blue-1bg . "#2d3641") (cyan-1bg . "#28383d") (green-1bg . "#2b3836")
    (violet-1bg . "#343240") (yellow-1fg . "#c1ad67") (orange-1fg . "#d2a46e")
    (red-1fg . "#dd9a91") (magenta-1fg . "#d29abc") (violet-1fg . "#b698d7")
    (blue-1fg . "#91b0d9") (cyan-1fg . "#74bbc1") (green-1fg . "#83bd99")
    (yellow-2bg . "#564e30") (orange-2bg . "#5e4933") (red-2bg . "#634544")
    (magenta-2bg . "#5d445a") (violet-2bg . "#4f4467") (blue-2bg . "#3b5068")
    (cyan-2bg . "#2c555c") (green-2bg . "#355648") (yellow-2fg . "#cfbc83")
    (orange-2fg . "#ddb589") (red-2fg . "#e5aea4") (magenta-2fg . "#dcadc7")
    (violet-2fg . "#c6acdc") (blue-2fg . "#aabfde") (cyan-2fg . "#95c8cb")
    (green-2fg . "#9ecaaa"))
  '((custom-theme-set-faces theme-name
                            `(highlight ((,class (:background ,base00))))
                            `(hl-line ((,class (:background ,base02 :extend t))))
                            `(region
                              ((,class
                                (:foreground ,base2 :background ,base00 :extend
                                             t))))
                            `(font-lock-keyword-face
                              ((,class (:foreground ,magenta))))
                            `(font-lock-comment-face
                              ((,class (:foreground ,base01 :slant italic))))
                            `(font-lock-function-name-face
                              ((,class (:foreground ,blue))))
                            `(font-lock-function-call-face
                              ((,class (:foreground ,blue))))
                            `(font-lock-variable-name-face
                              ((,class (:foreground ,base0))))
                            `(font-lock-variable-call-face
                              ((,class (:foreground ,base0))))
                            `(font-lock-type-face ((,class (:foreground ,red))))
                            `(font-lock-constant-face
                              ((,class (:foreground ,orange))))
                            `(font-lock-string-face
                              ((,class (:foreground ,green))))
                            `(font-lock-escape-face
                              ((,class (:foreground ,orange))))
                            `(font-lock-operator-face
                              ((,class (:foreground ,cyan))))
                            `(font-lock-number-face
                              ((,class (:foreground ,yellow))))
                            `(font-lock-preprocessor-face
                              ((,class (:foreground ,violet))))
                            `(denote-faces-link
                              ((,class (:foreground ,blue :underline t))))
                            `(denote-faces-date ((,class (:foreground ,blue))))
                            `(denote-faces-keywords
                              ((,class (:foreground ,violet))))
                            `(org-link
                              ((,class (:foreground ,green :underline t))))
                            `(org-done ((,class (:foreground ,base01 :bold t))))
                            `(org-todo ((,class (:foreground ,orange :bold t))))
                            `(org-priority ((,class (:foreground ,red :bold t))))
                            `(org-verbatim
                              ((,class (:foreground ,blue :background ,base02))))
                            `(org-code
                              ((,class
                                (:foreground ,magenta :background ,base02))))
                            `(org-checkbox
                              ((,class (:foreground ,base0 :background ,base02))))
                            `(org-headline-done
                              ((,class (:foreground unspecified))))
                            `(org-level-1 ((,class (:foreground ,magenta))))
                            `(org-level-2 ((,class (:foreground ,blue))))
                            `(org-level-3 ((,class (:foreground ,green))))
                            `(org-level-4 ((,class (:foreground ,cyan))))
                            `(org-level-5 ((,class (:foreground ,violet))))
                            `(org-level-6 ((,class (:foreground ,yellow))))
                            `(org-level-7 ((,class (:foreground ,orange))))
                            `(org-level-8 ((,class (:foreground ,red))))
                            `(vertico-current
                              ((,class (:background ,base02 :underline t)))))))
(provide-theme 'solarized-penumbra-dark)
(provide 'solarized-penumbra-dark-theme)
