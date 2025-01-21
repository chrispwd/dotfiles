;;; doom-twilight-theme.el --- Twilight dark theme adapted from doom-tommorrow -*- lexical-binding: t; no-byte-compile: t; -*-
;;
;; Added: TBD
;; Author: Chris Perez <https://github.com/chrispwd>
;; Maintainer:
;; Source: https://github.com/twilight-theme
;;
;;; Commentary:
;;; Code:

(require 'doom-themes)


;;
;;; Variables

(defgroup doom-twilight-theme nil
  "Options for the `doom-twilight' theme."
  :group 'doom-themes)

(defcustom doom-twilight-padded-modeline doom-themes-padded-modeline
  "If non-nil, adds a 4px padding to the mode-line. Can be an integer to
determine the exact padding."
  :group 'doom-twilight-theme
  :type '(choice integer boolean))


;;
;;; Theme definition

(def-doom-theme doom-twilight
  "A theme based off of Chris Kempson's Base 16 themes"

  ;; name        gui       256       16
  ((bg         '("#222120" nil       nil          ))
   (bg-alt     '("#282825" nil       nil          ))
   (base0      '("#1e1d1c" "black"   "black"      ))
   (base1      '("#282825" "#1b1b1b"              ))
   (base2      '("#2a2927" "#1e1e1e"              ))
   (base3      '("#353432" "#292929" "brightblack"))
   (base4      '("#42413e" "#3f3f3f" "brightblack"))
   (base5      '("#9b859d" "#525252" "brightblack"))
   (base6      '("#afc4db" "#6b6b6b" "brightblack"))
   (base7      '("#a7a7a7" "#979797" "brightblack"))
   (base8      '("#605e5a" "#c9c9c9" "white"      ))
   (fg         '("#95928f" "#959595" "white"))
   (fg-alt     (doom-darken fg 0.4))

   (grey       '("#605e5a" "#5a5a5a" "brightblack"))
   (red        '("#b95f44" "#cc6666" "red"))
   (orange     '("#b95f44" "#dd9955" "brightred"))
   (yellow     '("#c0b775" "#f0c674" "yellow"))
   (green      '("#8f9d6a" "#b5bd68" "green"))
   (blue       '("#7587a6" "#88aabb" "brightblue"))
   (teal       blue)
   (dark-blue  '("#7587a6" "#41728e" "blue"))
   (magenta    '("#9b859d" "#c9b4cf" "magenta"))
   (violet     '("#9b859d" "#b294bb" "brightmagenta"))
   (cyan       '("#94a6b9" "#8abeb7" "cyan"))
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
   (modeline-bg     base0)
   (modeline-bg-alt `(,(car bg) ,@(cdr base1)))
   (modeline-fg     fg)
   (modeline-fg-alt comments)
   (-modeline-pad
    (when doom-twilight-padded-modeline
      (if (integerp doom-twilight-padded-modeline)
          doom-twilight-padded-modeline
        4))))

  ;; --- faces ------------------------------
  (((line-number &override) :foreground base4)
   ((line-number-current-line &override) :foreground fg :bold bold)
   (mode-line
    :background modeline-bg :foreground modeline-fg
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg)))
   (mode-line-inactive
    :background modeline-bg-alt :foreground modeline-fg-alt
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-alt)))
   ;;;; doom-modeline
   (doom-modeline-buffer-path       :foreground violet :bold t)
   (doom-modeline-buffer-file       :foreground fg :bold t)
   (doom-modeline-buffer-major-mode :foreground cyan :bold t)
   (doom-modeline-evil-insert-state :foreground yellow :bold t)
   (doom-modeline-evil-emacs-state :foreground magenta :bold t)
   (doom-modeline-evil-motion-state :foreground grey :bold t)
   (doom-modeline-evil-normal-state :foreground green :bold t)
   (doom-modeline-evil-visual-state :foreground cyan :bold t)
   (doom-modeline-evil-replace-state :foreground red :bold t)
   (doom-modeline-evil-operator-state :foreground fg :bold t)

   ;;;; rainbow-delimiters
   (rainbow-delimiters-depth-1-face :foreground violet)
   (rainbow-delimiters-depth-2-face :foreground blue)
   (rainbow-delimiters-depth-3-face :foreground red)
   (rainbow-delimiters-depth-4-face :foreground green)
   (rainbow-delimiters-depth-5-face :foreground yellow)
   (rainbow-delimiters-depth-6-face :foreground cyan)
   (rainbow-delimiters-depth-7-face :foreground violet)

   ;;;; org-mode
   (org-block-begin-line :background base0
                         :foreground base4)
   (org-block-end-line :background base0
                       :foreground base4)
   (org-block :background base0)
   (org-done :foreground comments)
   (org-todo :foreground yellow :bold t)
   (org-date :foreground comments :bold nil)
   (org-code :foreground red :background base0)
   (org-headline-done :foreground comments)
   (org-level-1 :foreground violet :bold t)
   (org-level-2 :foreground blue :bold t)
   (org-level-3 :foreground cyan :bold t)
   (org-level-4 :foreground green :bold t)
   (org-level-5 :foreground yellow :bold t)
   (org-level-6 :foreground red :bold t)
   (org-level-7 :foreground grey :bold t)
   (org-level-8 :foreground violet :bold t)

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
   ;; (bold :foreground (doom-lighten fg 0.1) :bold t)
   (tab-bar :foreground base0 :background base0)
   (tab-bar-tab-inactive :foreground grey :background base0)
   )
  ;; --- variables --------------------------
  ;; ()
)

;;; doom-twilight-theme.el ends here
