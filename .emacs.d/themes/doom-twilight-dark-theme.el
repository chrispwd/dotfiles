;;; doom-twilight-dark-theme.el --- Twilight dark theme adapted from doom-tommorrow -*- lexical-binding: t; no-byte-compile: t; -*-
;;
;; Added: TBD
;; Author: Chris Perez <https://github.com/chrispwd>
;; Maintainer:
;; Source: https://github.com/twilight-dark-theme
;;
;;; Commentary:
;;; Code:

(require 'doom-themes)


;;
;;; Variables

(defgroup doom-twilight-dark-theme nil
  "Options for the `doom-tomorrow-night' theme."
  :group 'doom-themes)

(defcustom doom-tomorrow-night-padded-modeline doom-themes-padded-modeline
  "If non-nil, adds a 4px padding to the mode-line. Can be an integer to
determine the exact padding."
  :group 'doom-twilight-dark-theme
  :type '(choice integer boolean))


;;
;;; Theme definition

(def-doom-theme doom-twilight-dark
  "A theme based off of Chris Kempson's Tomorrow Dark."

  ;; name        gui       256       16
  ((bg         '("#222222" nil       nil          ))
   (bg-alt     '("#161719" nil       nil          ))
   (base0      '("#0d0d0d" "black"   "black"      ))
   (base1      '("#cf6a4c" "#1b1b1b"              ))
   (base2      '("#8f9d6a" "#1e1e1e"              ))
   (base3      '("#f9ee98" "#292929" "brightblack"))
   (base4      '("#7587a6" "#3f3f3f" "brightblack"))
   (base5      '("#9b859d" "#525252" "brightblack"))
   (base6      '("#afc4db" "#6b6b6b" "brightblack"))
   (base7      '("#a7a7a7" "#979797" "brightblack"))
   (base8      '("#ffffff" "#ffffff" "white"      ))
   (fg         '("#959595" "#a7a7a7" "white"))
   (fg-alt     (doom-darken fg 0.4))

   (grey       '("#5f5a60" "#5a5a5a" "brightblack"))
   (red        '("#cf6a4c" "#cc6666" "red"))
   (orange     '("#cf6a4c" "#dd9955" "brightred"))
   (yellow     '("#f9ee98" "#f0c674" "yellow"))
   (green      '("#8f9d6a" "#b5bd68" "green"))
   (blue       '("#7587a6" "#88aabb" "brightblue"))
   (dark-blue  '("#7587a6" "#41728e" "blue"))
   (teal       blue) ; FIXME replace with real teal
   (magenta    '("#9b859d" "#c9b4cf" "magenta"))
   (violet     '("#9b859d" "#b294bb" "brightmagenta"))
   (cyan       '("#afc4db" "#8abeb7" "cyan"))
   (dark-cyan  (doom-darken cyan 0.4))

   ;; face categories
   (highlight      blue)
   (vertical-bar   base0)
   (selection      `(,(car (doom-lighten bg 0.1)) ,@(cdr base4)))
   (builtin        blue)
   (comments       grey)
   (doc-comments   (doom-lighten grey 0.14))
   (constants      orange)
   (functions      cyan)
   (keywords       yellow)
   (methods        cyan)
   (operators      fg)
   (type           yellow)
   (strings        green)
   (variables      fg)
   (numbers        orange)
   (region         selection)
   (error          red)
   (warning        yellow)
   (success        green)
   (vc-modified    fg-alt)
   (vc-added       green)
   (vc-deleted     red)

   ;; custom categories
   (modeline-bg     bg-alt)
   (modeline-bg-alt `(,(car bg) ,@(cdr base1)))
   (modeline-fg     fg)
   (modeline-fg-alt comments)
   (-modeline-pad
    (when doom-tomorrow-night-padded-modeline
      (if (integerp doom-tomorrow-night-padded-modeline)
          doom-tomorrow-night-padded-modeline
        4))))

  ;; --- faces ------------------------------
  (((line-number &override) :foreground base4)
   ((line-number-current-line &override) :foreground blue :bold bold)
   (mode-line
    :background modeline-bg :foreground modeline-fg
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg)))
   (mode-line-inactive
    :background modeline-bg-alt :foreground modeline-fg-alt
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-alt)))

   ;;;; rainbow-delimiters
   (rainbow-delimiters-depth-1-face :foreground violet)
   (rainbow-delimiters-depth-2-face :foreground blue)
   (rainbow-delimiters-depth-3-face :foreground orange)
   (rainbow-delimiters-depth-4-face :foreground green)
   (rainbow-delimiters-depth-5-face :foreground magenta)
   (rainbow-delimiters-depth-6-face :foreground grey)
   (rainbow-delimiters-depth-7-face :foreground teal)
   ;;;; doom-modeline
   (doom-modeline-buffer-path       :foreground violet :bold t)
   (doom-modeline-buffer-file       :foreground fg :bold nil)
   (doom-modeline-buffer-major-mode :inherit 'doom-modeline-buffer-path)

   ;;;; org-mode
   (org-block-begin-line :background (doom-lighten bg-alt 0.1)
                         :foreground fg-alt)
   (org-block-end-line :background (doom-lighten bg-alt 0.1)
                       :foreground fg-alt)
   (org-block :background (doom-lighten bg-alt 0.1))
   (org-done :foreground comments)
   (org-todo :foreground yellow :bold t)
   (org-date :foreground comments :bold nil)
   (org-headline-done :foreground comments)

   ;;;; misc
   (font-lock-keyword-face :foreground yellow :weight 'normal)
   (widget-field :background grey :foreground fg)
   (shadow :foreground fg-alt)
   (diff-removed :background (doom-lighten bg-alt 0.1) :foreground red)
   (magit-diff-removed :background (doom-lighten bg-alt 0.1) :foreground red)
   (widget-single-line-field :background grey :foreground fg)
   (markdown-code-face :background (doom-lighten bg-alt 0.1)
                       :foreground fg)
   (link :foreground blue :underline t)
   (link-visited :foreground magenta :underline t)
   )
  ;; --- variables --------------------------
  ;; ()
)

;;; doom-twilight-dark-theme.el ends here
