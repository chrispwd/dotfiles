;; base16-onedark-warmer-theme.el -- A perceptually uniform color space theme

;;; Commentary:
;; Base16: (https://github.com/tinted-theming/home)

;;; Authors:
;; Scheme: Neal McKee <https://github.com/nealmckee>
;; Template: Kaleb Elwert <belak@coded.io>
;; Customized: Chris P <https://github.com/chrispwd>

;;; Code:

(require 'base16-theme)

(defvar base16-onedark-warmer-theme-colors
  '(:base00 "#232326"
    :base01 "#2c2d31"
    :base02 "#35363b"
    :base03 "#5a5b5e"
    :base04 "#818387"
    :base05 "#a7aab0"
    :base06 "#b1b4b9"
    :base07 "#dce0e6"
    :base08 "#de5d68" ; red
    :base09 "#c49060" ; orange
    :base0A "#dbb671" ; yellow
    :base0B "#8fb573" ; green
    :base0C "#00a2af" ; cyan
    :base0D "#57a5e5" ; blue
    :base0E "#bb70d2" ; magenta
    :base0F "#7c5c20") ; brown
  "All colors for Base16 Onedark Warmer are defined here.")

;; Define the theme
(deftheme base16-onedark-warmer)

;; Add all the faces to the theme
(base16-theme-define 'base16-onedark-warmer base16-onedark-warmer-theme-colors)

;; Mark the theme as provided
(provide-theme 'base16-onedark-warmer)

(provide 'base16-onedark-warmer-theme)

;;; base16-onedark-warmer-theme.el ends here
