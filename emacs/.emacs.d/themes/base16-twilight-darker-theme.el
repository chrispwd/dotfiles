;; base16-twilight-darker-theme.el -- A base16 colorscheme

;;; Commentary:
;; Base16: (https://github.com/tinted-theming/home)

;;; Authors:
;; Scheme: David Hart (https://github.com/hartbit)
;; Template: Kaleb Elwert <belak@coded.io>
;; Customized: Chris P (https://github.com/chrispwd)

;;; Code:

(require 'base16-theme)

(defvar base16-twilight-darker-theme-colors
  '(:base00 "#1e1e1e"
    :base01 "#323537"
    :base02 "#464b50"
    :base03 "#5f5a60"
    :base04 "#838184"
    :base05 "#919191"
    :base06 "#c3c3c3"
    :base07 "#ffffff"
    :base08 "#cf6a4c"
    :base09 "#cda869"
    :base0A "#d4cb81"
    :base0B "#8f9d6a"
    :base0C "#9fb3c7"
    :base0D "#7587a6"
    :base0E "#9b859d"
    :base0F "#9b703f")
  "All colors for Base16 Twilight Darker are defined here.")

;; Define the theme
(deftheme base16-twilight-darker)

;; Add all the faces to the theme
(base16-theme-define 'base16-twilight-darker base16-twilight-darker-theme-colors)

;; Mark the theme as provided
(provide-theme 'base16-twilight-darker)

(provide 'base16-twilight-darker-theme)

;;; base16-twilight-theme.el ends here
