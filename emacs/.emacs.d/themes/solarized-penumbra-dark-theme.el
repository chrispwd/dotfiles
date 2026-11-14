(require 'solarized)
(deftheme solarized-penumbra-dark
  "The solarized-penumbra-dark colour theme of Solarized colour theme flavor.")
(solarized-with-color-variables 'dark 'solarized-penumbra-dark
  '((base03 . "#202225") (base02 . "#2C2E31") (base01 . "#5E6063")
    (base00 . "#7a7a7a") (base0 . "#8B8B8B") (base1 . "#B4B1AD")
    (base2 . "#DFD9D0") (base3 . "#EFE8DD") (yellow . "#95891E")
    (orange . "#B3753F") (red . "#BA616B") (magenta . "#9B68A1")
    (violet . "#7076AE") (blue . "#0081B3") (cyan . "#078986")
    (green . "#519158") (yellow-d . "#373427") (yellow-l . "#908a77")
    (orange-d . "#3c312b") (orange-l . "#96877c") (red-d . "#3d2f32")
    (red-l . "#968484") (magenta-d . "#362f3b") (magenta-l . "#8f8490")
    (violet-d . "#2f313e") (violet-l . "#878792") (blue-d . "#26333e")
    (blue-l . "#7d8993") (cyan-d . "#243537") (cyan-l . "#7b8b8a")
    (green-d . "#2a362f") (green-l . "#818d81") (yellow-1bg . "#313027")
    (orange-1bg . "#352d29") (red-1bg . "#362b2f") (magenta-1bg . "#312c36")
    (blue-1bg . "#252f38") (cyan-1bg . "#233032") (green-1bg . "#28312c")
    (violet-1bg . "#2b2d37") (yellow-1fg . "#958945") (orange-1fg . "#aa7c56")
    (red-1fg . "#ae6f74") (magenta-1fg . "#97739b") (violet-1fg . "#7a7ca4")
    (blue-1fg . "#4d84a7") (cyan-1fg . "#488a87") (green-1fg . "#659067")
    (yellow-2bg . "#4e4828") (orange-2bg . "#594130") (red-2bg . "#5b3b40")
    (magenta-2bg . "#4e3d53") (violet-2bg . "#3f4258") (blue-2bg . "#28465a")
    (cyan-2bg . "#264949") (green-2bg . "#354c39") (yellow-2fg . "#948a54")
    (orange-2fg . "#a57f62") (red-2fg . "#a87679") (magenta-2fg . "#957897")
    (violet-2fg . "#7e7f9e") (blue-2fg . "#5e85a1") (cyan-2fg . "#5a8b88")
    (green-2fg . "#6e8f6f"))
  '((custom-theme-set-faces theme-name
                            `(default
                              ((,class
                                (:foreground ,base0 :background ,base02))))
                            `(highlight ((,class (:background ,base00))))
                            ;; `(hl-line ((,class (:background ,base03 :extend t))))
                            `(line-number
                              ((,class
                                (:background ,base02 :foreground ,base01))))
                            `(line-number-current-line
                              ((,class
                                (:background ,base02 :foreground ,base1 :bold t))))
                            `(mode-line
                              ((,class
                                (:background ,base03 :underline nil))))
                            `(mode-line-inactive
                              ((,class
                                (:background ,base03 :underline nil))))
                            `(region
                              ((,class (:foreground ,base1
                                                    :background ,base01
                                                    :extend t))))
                            `(tab-bar-tab
                              ((,class
                                (:foreground ,base2 :background ,base02))))
                            `(tab-bar-tab-inactive
                              ((,class
                                (:foreground ,base01 :background ,base03))))
                            `(vertical-border
                              ((,class (:foreground ,base03))))
                            `(fill-column-indicator
                              ((,class (:foreground ,base01))))
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
                            `(org-agenda-date
                              ((,class
                                (:foreground ,base01 :background unspecified))))
                            `(org-agenda-date-today
                              ((,class (:foreground ,base1
                                                    :background unspecified
                                                    :bold t
                                                    :inverse nil))))
                            `(org-todo ((,class (:foreground ,yellow :bold t))))
                            `(org-priority
                              ((,class (:foreground ,red :bold t))))
                            `(org-block
                              ((,class (:background ,base03 :extend t))))
                            `(org-hide ((,class (:foreground ,base02))))
                            `(org-verbatim
                              ((,class (:foreground ,blue
                                                    :background ,base02))))
                            `(org-code
                              ((,class
                                (:foreground ,magenta :background ,base02))))
                            `(org-quote
                              ((,class (:foreground ,base0 :slant italic))))
                            `(org-checkbox
                              ((,class
                                (:foreground ,base0 :background ,base03))))
                            `(org-headline-done
                              ((,class (:foreground unspecified))))
                            `(org-document-title
                              ((,class (:foreground ,cyan :bold t))))
                            `(org-level-1 ((,class (:foreground ,blue))))
                            `(org-level-2 ((,class (:foreground ,violet))))
                            `(org-level-3 ((,class (:foreground ,green))))
                            `(org-level-4 ((,class (:foreground ,cyan))))
                            `(org-level-5 ((,class (:foreground ,magenta))))
                            `(org-level-6 ((,class (:foreground ,yellow))))
                            `(org-level-7 ((,class (:foreground ,orange))))
                            `(org-level-8 ((,class (:foreground ,red))))
                            `(flymake-errline
                              ((((supports :underline (:style line)))
                                (:underline (:style line :color ,red)
                                            :inherit unspecified
                                            :foreground unspecified
                                            :background unspecified))
                               ;; (,class (:foreground ,red :weight bold :underline t))))
                               (,class (:foreground ,red :underline t))))
                            `(flymake-warnline
                              ((((supports :underline (:style line)))
                                (:underline (:style line :color ,orange)
                                            :inherit unspecified
                                            :foreground unspecified
                                            :background unspecified))
                               ;; (,class (:foreground ,orange :weight bold :underline t))))
                               (,class (:foreground ,orange :underline t))))
                            `(flymake-infoline
                              ((((supports :underline (:style line)))
                                (:underline (:style line :color ,green)
                                            :inherit unspecified
                                            :foreground unspecified
                                            :background unspecified))
                               ;; (,class (:foreground ,green :weight bold :underline t))))
                               (,class (:foreground ,green :underline t))))
                            `(flymake-error
                              ((((supports :underline (:style line)))
                                (:underline (:style line :color ,red)
                                            :inherit unspecified
                                            :foreground unspecified
                                            :background unspecified))
                               (,class (:foreground ,red :underline t))))
                            `(flymake-warning
                              ((((supports :underline (:style line)))
                                (:underline (:style line :color ,orange)
                                            :inherit unspecified
                                            :foreground unspecified
                                            :background unspecified))
                               (t (:foreground ,orange :underline t))))
                            `(flymake-note
                              ((((supports :underline (:style line)))
                                (:underline (:style line :color ,green)
                                            :inherit unspecified
                                            :foreground unspecified
                                            :background unspecified))
                               (,class (:foreground ,green :underline t))))
                            `(vertico-current
                              ((,class (:background ,base03 :underline t))))
                            `(orderless-match-face-0
                              ((,class (:foreground ,magenta))))
                            `(orderless-match-face-1
                              ((,class (:foreground ,blue))))
                            `(orderless-match-face-2
                              ((,class (:foreground ,yellow))))
                            `(orderless-match-face-3
                              ((,class (:foreground ,green))))
                            `(avy-lead-face
                              ((,class (:foreground ,magenta
                                                    :background ,base03
                                                    :bold t))))
                            `(avy-lead-face-0
                              ((,class (:foreground ,blue
                                                    :background ,base03
                                                    :bold t))))
                            `(avy-lead-face-1
                              ((,class (:foreground ,yellow
                                                    :background ,base03
                                                    :bold t))))
                            `(avy-lead-face-2
                              ((,class (:foreground ,green
                                                    :background ,base03
                                                    :bold t))))
                            `(eglot-highlight-symbol-face
                              ((,class (:background ,blue-d
                                                    :bold t)))))))
(provide-theme 'solarized-penumbra-dark)
(provide 'solarized-penumbra-dark-theme)
;;; solarized-penumbra-dark-theme.el ends here
