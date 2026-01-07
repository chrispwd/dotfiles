;; base16-atelier-cavemoss-theme.el -- A base16 colorscheme

;;; Commentary:
;; Base16: (https://github.com/tinted-theming/home)

;;; Authors:
;; Scheme: Bram de Haan (http://atelierbramdehaan.nl)
;; Template: Kaleb Elwert <belak@coded.io>

;;; Code:

(require 'base16-theme)

(defvar base16-atelier-cavemoss-theme-colors
  '(:base00 "#19171c"
    :base01 "#26232a"
    :base02 "#585260"
    :base03 "#655f6d"
    :base04 "#7e7887"
    :base05 "#8b8792"
    :base06 "#e2dfe7"
    :base07 "#efecf4"
    :base08 "#be4678"
    :base09 "#aa573c"
    :base0A "#a06e3b"
    :base0B "#2a9271"
    :base0C "#398bc6"
    :base0D "#576ddb"
    :base0E "#955ae7"
    :base0F "#bf40bf")
  "All colors for Base16 Atelier Cavemoss are defined here.")

;; Define the theme
(deftheme base16-atelier-cavemoss)

;; Add all the faces to the theme
(base16-theme-define 'base16-atelier-cavemoss base16-atelier-cavemoss-theme-colors)

;; Mark the theme as provided
(provide-theme 'base16-atelier-cavemoss)

(provide 'base16-atelier-cavemoss-theme)

;;; base16-atelier-cavemoss-theme.el ends here
