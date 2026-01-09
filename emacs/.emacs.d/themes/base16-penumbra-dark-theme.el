;; base16-penumbra-dark-theme.el -- A perceptually uniform color space theme

;;; Commentary:
;; Base16: (https://github.com/tinted-theming/home)

;;; Authors:
;; Scheme: Neal McKee <https://github.com/nealmckee>
;; Template: Kaleb Elwert <belak@coded.io>
;; Customized: Chris P <https://github.com/chrispwd>

;;; Code:

(require 'base16-theme)

(defvar base16-penumbra-dark-theme-colors
  '(:base00 "#24272b"
    :base01 "#303338"
    :base02 "#3e4044"
    :base03 "#636363"
    :base04 "#7a7a7a"
    :base05 "#8f8f8f"
    :base06 "#bebebe"
    :base07 "#fff7ed"
    :base08 "#cf6a4c" ; red
    :base09 "#cda869" ; orange
    :base0A "#A38F2D" ; yellow
    :base0B "#8f9d6a" ; green
    :base0C "#9fb3c7" ; cyan
    :base0D "#7587a6" ; blue
    :base0E "#9b859d" ; purple
    :base0F "#9b703f") ; magenta
  "All colors for Base16 Penumbra Dark are defined here.")

;; Define the theme
(deftheme base16-penumbra-dark)

;; Add all the faces to the theme
(base16-theme-define 'base16-penumbra-dark base16-penumbra-dark-theme-colors)

;; Mark the theme as provided
(provide-theme 'base16-penumbra-dark)

(provide 'base16-penumbra-dark-theme)

;;; base16-penumbra-dark-theme.el ends here
