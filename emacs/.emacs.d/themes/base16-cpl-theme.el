;; base16-cpl-theme.el -- A custom colorscheme adapted for base16

;;; Commentary:
;; Base16: (https://github.com/tinted-theming/home)

;;; Authors:
;; Scheme: Aaron Hall (https://github.com/aaronchall)
;; Template: Kaleb Elwert <belak@coded.io>

;;; Code:

(require 'base16-theme)

(defvar base16-cpl-theme-colors
  '(:base00 "#000000"
    :base01 "#1d1d1d"
    :base02 "#232323"
    :base03 "#424242"
    :base04 "#585858"
    :base05 "#777777"
    :base06 "#989898"
    :base07 "#ababab"
    :base08 "#b10b00"
    :base09 "#a05803"
    :base0A "#745b00"
    :base0B "#007232"
    :base0C "#006a78"
    :base0D "#3123ff"
    :base0E "#9b0097"
    :base0F "#00a3b7")
  "All colors for Base16 Constant Perceptual Luminosity are defined here.")

;; Define the theme
(deftheme base16-cpl)

;; Add all the faces to the theme
(base16-theme-define 'base16-cpl base16-cpl-theme-colors)

;; Mark the theme as provided
(provide-theme 'base16-cpl)

(provide 'base16-cpl-theme)

;;; base16-cpl-theme.el ends here
