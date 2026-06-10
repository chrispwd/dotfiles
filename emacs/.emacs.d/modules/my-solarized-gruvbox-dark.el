;; my-solarized-gruvbox-dark.el
(defvar my-solarized-gruvbox-dark-faces
  '("My personal gruvbox-dark customizations."
    (custom-theme-set-faces
     theme-name
     `(default ((,class (:foreground ,base2 :background ,base02))))
     `(font-lock-variable-name-face ((,class (:foreground ,base2))))
     `(font-lock-keyword-face ((,class (:foreground ,orange))))
     `(font-lock-builtin-face ((,class (:foreground ,violet))))
     `(font-lock-number-face ((,class (:foreground ,magenta))))
     `(font-lock-string-face ((,class (:foreground ,green))))
     `(font-lock-punctuation-face ((,class (:foreground ,cyan))))
     `(font-lock-function-name-face ((,class (:foreground ,blue))))
     `(font-lock-function-call-face ((,class (:foreground ,base2))))
     `(font-lock-operator-face ((,class (:foreground ,cyan))))
     `(font-lock-type-face ((,class (:foreground ,yellow))))
     `(font-lock-warning-face ((,class (:foreground ,red :weight normal :underline t))))
     `(font-lock-constant-face
       ((,class (:foreground ,magenta :weight normal))))
     `(eglot-highlight-symbol-face
       ((,class (:foreground ,base3 :weight bold))))
     `(flymake-error ((,class (:foreground ,red :underline t))))
     `(link
       ((,class (:foreground ,cyan :weight normal :underline t))))
     `(bold
       ((,class (:weight bold))))
     `(vertical-border ((,class (:foreground ,base03))))
     `(denote-faces-delimiter
       ((,class (:foreground ,base02))))
     `(denote-faces-date ((,class (:inherit shadow))))
     `(org-list-dt
       ((,class (:foreground ,orange :weight normal :slant italic))))
     `(org-code ((,class (:foreground ,yellow))))
     `(hl-line ((,class (:background ,base03))))
     `(line-number ((,class (:foreground ,base01 :background ,base02))))
     `(fill-column-indicator ((,class (:foreground ,base01))))
     `(vertico-current ((,class (:foreground ,base2 :underline t))))
     `(fringe ((,class (:foreground ,base01 :background ,base02))))
     `(show-paren-match ((,class (:foreground ,magenta :weight bold)))))))

(provide 'my-solarized-gruvbox-dark)
