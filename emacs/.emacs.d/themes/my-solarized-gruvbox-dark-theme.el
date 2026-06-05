(require 'solarized)
(require 'my-solarized-gruvbox-dark)
(eval-when-compile
  (require 'solarized-palettes))

;; This file needs to be placed inside the custom-theme-load-path list

(deftheme my-solarized-gruvbox-dark "The dark variant of the gruvbox dark colour theme")
(solarized-with-color-variables
  'dark 'my-solarized-gruvbox-dark solarized-gruvbox-dark-color-palette-alist my-solarized-gruvbox-dark-faces)

(provide-theme 'my-solarized-gruvbox-dark)
