(require 'solarized)

;; Generated using the following functions
;; ;; wombat color-theme with misc face definition
;; (solarized-create-theme-file-with-palette 'dark 'solarized-cpl-dark
;;   '("#2a2a29" "#f6f3e8"
;;     "#e5c06d" "#ddaa6f" "#ffb4ac" "#e5786d" "#834c98" "#a4b5e6" "#7ec98f" "#8ac6f2")
;;   '((custom-theme-set-faces
;;      theme-name
;;      `(default ((,class (:foreground ,(solarized-color-blend base03 base3 0.15 2) :background ,base03))))
;;      `(highlight ((,class (:background ,violet))))
;;      `(font-lock-builtin-face ((,class (:foreground ,magenta))))
;;      `(font-lock-constant-face ((,class (:foreground ,blue))))
;;      `(font-lock-comment-face ((,class (:foreground ,base00))))
;;      `(mode-line
;;        ((,class (:foreground ,base2 :background ,(solarized-color-blend base03 base3 0.85 2)))))
;;      `(mode-line-inactive
;;        ((,class (:foreground ,base00 :background ,(solarized-color-blend base03 "black" 0.85 2)))))
;;      `(mode-line-buffer-id ((,class (:foreground ,base3 :weight bold))))
;;      `(minibuffer-prompt ((,class (:foreground ,base1))))
;;      `(vertical-border ((,class (:foreground ,base03)))))))

;; (load-theme 'solarized-cpl-dark t)

(deftheme solarized-cpl-dark
  "The solarized-cpl-dark colour theme of Solarized colour theme flavor.")
(solarized-with-color-variables 'dark 'solarized-cpl-dark
  '((base03 . "#000000") (base02 . "#080808") (base01 . "#3a3a3a")
    (base00 . "#424242") (base0 . "#565656") (base1 . "#606060")
    (base2 . "#a0a0a0") (base3 . "#ababab") (yellow . "#745b00")
    (orange . "#ff3d2b") (red . "#b10b00") (magenta . "#9b0097")
    (violet . "#6786ff") (blue . "#3123ff") (cyan . "#006a78")
    (green . "#007232") (yellow-d . "#1d1706") (yellow-l . "#a39a8a")
    (orange-d . "#33160f") (orange-l . "#c49a91") (red-d . "#290f03")
    (red-l . "#b59288") (magenta-d . "#220f21") (magenta-l . "#ab92a8")
    (violet-d . "#1c1e31") (violet-l . "#a3a3bc") (blue-d . "#191031")
    (blue-l . "#a292bd") (cyan-d . "#0f1a1c") (cyan-l . "#919ea1")
    (green-d . "#0e1b10") (green-l . "#90a092") (yellow-1bg . "#181304")
    (orange-1bg . "#29130b") (red-1bg . "#220c02") (magenta-1bg . "#1c0c1b")
    (blue-1bg . "#160d26") (cyan-1bg . "#0c1517") (green-1bg . "#0b170c")
    (violet-1bg . "#171826") (yellow-1fg . "#88723b") (orange-1fg . "#ee6a51")
    (red-1fg . "#b94e35") (magenta-1fg . "#a44d9e") (violet-1fg . "#8591e6")
    (blue-1fg . "#7551e7") (cyan-1fg . "#4b7d87") (green-1fg . "#498455")
    (yellow-2bg . "#31270a") (orange-2bg . "#612117") (red-2bg . "#481405")
    (magenta-2bg . "#3e133c") (violet-2bg . "#2f355f") (blue-2bg . "#25165f")
    (cyan-2bg . "#132c31") (green-2bg . "#122f19") (yellow-2fg . "#917e53")
    (orange-2fg . "#e47a64") (red-2fg . "#ba634d") (magenta-2fg . "#a763a1")
    (violet-2fg . "#9096d9") (blue-2fg . "#8765db") (cyan-2fg . "#61878f")
    (green-2fg . "#5f8d67"))
  '((custom-theme-set-faces theme-name
                            `(default ((,class (:foreground "#777777")))))))
(provide-theme 'solarized-cpl-dark)
(provide 'solarized-cpl-dark-theme)
