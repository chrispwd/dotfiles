;; base16-cpl-custom-theme.el -- A base16 colorscheme

;;; Commentary:
;; Base16: (https://github.com/tinted-theming/home)
;; Adapted from Contant Perceptual Luminosity from Aaron Hall

;;; Authors:
;; Scheme: Aaron Hall (http://github.com/aaronchall)
;; Customized by: chrispwd (http://github.com/chrispwd)

;;; Code:

(require 'base16-theme)

(defvar base16-cpl-custom-theme-colors
  '(:base00 "#000000"
    :base01 "#1d1d1d"
    :base02 "#232323"
    :base03 "#424242"
    :base04 "#585858"
    :base05 "#777777"
    :base06 "#989898"
    :base07 "#ababab"
    :base08 "#93241c" ; red
    :base09 "#7a3b00" ; orange
    :base0A "#745b00" ; yellow
    :base0B "#007232" ; green
    :base0C "#006a78" ; cyan
    :base0D "#005a9c" ; blue
    :base0E "#8f308d" ; magenta
    :base0F "#7a2d00") ; brown
  "All colors for Base16 CPL are defined here.")

;; Define the theme
(deftheme base16-cpl-custom)

;; Add all the faces to the theme
(base16-theme-define 'base16-cpl-custom base16-cpl-custom-theme-colors)

;; Mark the theme as provided
(provide-theme 'base16-cpl-custom)

(provide 'base16-cpl-custom-theme)

;;; base16-cpl-custom-theme.el ends here
