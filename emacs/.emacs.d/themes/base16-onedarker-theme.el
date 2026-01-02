;; base16-onedarker-theme.el -- A base16 colorscheme

;;; Commentary:
;; Base16: (https://github.com/tinted-theming/home)

;;; Authors:
;; Scheme: Lalit Magant (http://github.com/tilal6991)
;; Template: Kaleb Elwert <belak@coded.io>

;;; Code:

(require 'base16-theme)

(defvar base16-onedarker-theme-colors
  '(:base00 "#282c34"
    :base01 "#353b45"
    :base02 "#3e4451"
    :base03 "#545862"
    :base04 "#565c64"
    :base05 "#a1a7b4"
    :base06 "#b6bdca"
    :base07 "#c8ccd4"
    :base08 "#e06c75"
    :base09 "#d19a66"
    :base0A "#e5c07b"
    :base0B "#98c379"
    :base0C "#56b6c2"
    :base0D "#61afef"
    :base0E "#c678dd"
    :base0F "#be5046")
  "All colors for Base16 OneDark are defined here.")

;; Define the theme
(deftheme base16-onedarker)

;; Add all the faces to the theme
(base16-theme-define 'base16-onedarker base16-onedarker-theme-colors)

;; Mark the theme as provided
(provide-theme 'base16-onedarker)

(provide 'base16-onedarker-theme)

;;; base16-onedarker-theme.el ends here
