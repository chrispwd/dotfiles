;; my-solarized-gruvbox-dark.el
(defvar my-solarized-gruvbox-dark-faces
  '("My personal gruvbox-dark customizations."
    (custom-theme-set-faces
     theme-name
     `(default ((,class (:foreground ,base2 :background ,base02))))
     `(font-lock-variable-name-face ((,class (:foreground ,base2))))
     `(font-lock-keyword-face ((,class (:foreground ,orange))))
     `(font-lock-builtin-face ((,class (:foreground ,magenta))))
     `(font-lock-number-face ((,class (:foreground ,yellow))))
     `(font-lock-string-face ((,class (:foreground ,green))))
     `(font-lock-punctuation-face ((,class (:foreground ,green))))
     `(font-lock-function-name-face ((,class (:foreground ,blue))))
     `(font-lock-function-call-face ((,class (:foreground ,blue))))
     `(font-lock-operator-face ((,class (:foreground ,green))))
     `(font-lock-type-face ((,class (:foreground ,yellow))))
     `(font-lock-constant-face
       ((,class (:foreground ,magenta :weight normal))))
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
     `(org-code ((,class (:foreground ,base1 :background ,base03)))))))

(provide 'my-solarized-gruvbox-dark)
