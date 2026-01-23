;; base16-homerun-theme.el -- A base16 colorscheme

;;; Commentary:
;; Base16: (https://github.com/tinted-theming/home)
;; A dark, black theme with color inspiration from baseball teams

;;; Authors:
;; Scheme: ChrisP (http://github.com/chrispwd)

;;; Code:

(require 'base16-theme)

(defvar base16-homerun-theme-colors
  '(:base00 "#000000"
    :base01 "#191919"
    :base02 "#2d2d2d"
    :base03 "#424242"
    :base04 "#585858"
    :base05 "#777777"
    :base06 "#989898"
    :base07 "#ababab"
    :base08 "#944649"  ; red
    :base09 "#915d1e"  ; orange
    :base0A "#848c21"  ; yellow
    :base0B "#007659"  ; green
    :base0C "#00778a"  ; cyan
    :base0D "#005a9c"  ; blue
    :base0E "#786ba3"  ; magenta
    :base0F "#00778a") ; extra
  "All colors for Base16 homerun are defined here.")

;; Define the theme
(deftheme base16-homerun)

;; Add all the faces to the theme
(base16-theme-define 'base16-homerun base16-homerun-theme-colors)

;; Mark the theme as provided
(provide-theme 'base16-homerun)

(provide 'base16-homerun-theme)

;;; base16-homerun-theme.el ends here
