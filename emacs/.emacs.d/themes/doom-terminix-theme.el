;;; doom-terminix-theme.el --- A color scheme. -*- lexical-binding: t; no-byte-compile: t; -*-
;;
;; Added: TBD
;; Author: chrispwd <https://github.com/chrispwd>
;; Maintainer: TBD
;; Source: TBD
;;
;;; Commentary:
;;; Code:

(require 'doom-themes)

;; Compiler pacifier
(defvar modeline-bg)

;;
;;; Variables

(defgroup doom-terminix-theme nil
  "Options for doom-terminix."
  :group 'doom-themes)

(defcustom doom-terminix-padded-modeline doom-themes-padded-modeline
  "If non-nil, adds a 4px padding to the mode-line. Can be an integer to
determine the exact padding."
  :group 'doom-terminix-theme
  :type '(choice integer boolean))

;;
;;; Theme definition

(def-doom-theme doom-terminix
  "This palette was carefully selected from a series of record sleeves designed
 by Dutch artist Erosie."

  ;; name        gui       256       16
  ((bg          '("#090300" "#000000" nil          )) ; bg1
   (bg-alt     '("#282a2e" "black"   nil          ))
   (bg-alt2    '("#373b41" "DarkGray" "brown"    )) ; bg2 (for region, selection etc.)
   (base0      '("#282a2e" "black"   "black"      )) ; (self-defined)
   (base1      '("#282a2e" "#1d1d1d" "brightblack")) ; bg1
   (base2      '("#3a3432" "#282828" "brightblack")) ; bg2
   (base3      '("#4a4543" "#383838" "brightblack")) ; bg3
   (base4      '("#5c5855" "#5c5c5c" "brightblack")) ; bg4
   (base5      '("#777777" "#6f6f6f" "brightblack")) ; bg5 (grey)
   (base6      '("#868a8c" "#909090" "brightblack")) ; bg6 (fg)
   (base7      '("#c5c8c6" "#cccccc" "brightblack")) ; fg2 (fg-alt, brighter)
   (base8      '("#f7f7f7" "#fbfbfb" "brightwhite")) ; fg0 (white-white)
   (fg         '("#868a8c" "#dfdfdf" "brightwhite")) ; fg/fg1
   (fg-alt     '("#c5c8c6" "#cccccc" "brightwhite")) ; fg2

   ;; Base 3024 colors, plus a few extras to round out colors
   (grey        '("#777777" "#909090" "brightblack"))   ; grey
   (red         '("#a54242" "#a54242" "red"))           ; red-red (red)
   (violet      '("#85678f" "#cc241d" "magenta"))       ; purple
   (magenta     '("#ba8baf" "#d3869b" "brightmagenta")) ; magenta
   (orange      '("#fa805a" "#fd971f" "orange"))        ; orange (more dark yellow)
   (yellow      '("#de935f" "#fabd2f" "yellow"))        ; yellow
   (dark-yellow '("#de935f" "#fabd2f" "yellow"))        ; yellow (ignore)
   (teal        '("#5d8d87" "#8ec07c" "green"))         ; teal (not "true" 3024)
   (green       '("#a1b56c" "#b8bb26" "green"))         ; bright-green
   (dark-green  '("#608360" "#98971a" "green"))         ; green
   (blue        '("#449da1" "#83a598" "brightblue"))    ; bright-blue
   (dark-blue   '("#225555" "#458588" "blue"))          ; blue
   (cyan        '("#86c1b9" "#8ec07c" "brightcyan"))    ; cyan
   (my-black    '("#282a2e" "#37302f" "black"))         ; bg0
   (dark-cyan   '("#5d8d87" "#689d6a" "cyan"))          ; cyan

   ;; face categories
   (highlight      yellow)
   (vertical-bar   bg-alt2)
   (selection      bg-alt2)
   (builtin        orange)
   (comments       grey)
   (doc-comments   (doom-lighten fg-alt 0.25))
   (constants      violet)
   (functions      green)
   (keywords       red)
   (methods        green)
   (operators      fg)
   (type           yellow)
   (strings        green)
   (variables      blue)
   (numbers        violet)
   (region         bg-alt2)
   (error          red)
   (warning        yellow)
   (success        green)

   (vc-modified    (doom-darken cyan 0.15))
   (vc-added       (doom-darken green 0.15))
   (vc-deleted     (doom-darken red 0.15))

   ;; custom categories
   (-modeline-pad
    (when doom-terminix-padded-modeline
      (if (integerp doom-terminix-padded-modeline)
          doom-terminix-padded-modeline
        4)))
   (modeline-bg base0)
   (modeline-fg (doom-lighten fg-alt 0.25))
   (modeline-inactive-bg (doom-darken modeline-bg 0.15))
   (modeline-inactive-fg base6)

   (org-quote `(,(doom-lighten (car bg) 0.05) "#1f1f1f")))

  ;;;; Base theme face overrides
  ((button :foreground cyan :underline t :weight 'bold)
   (cursor :background "white")
   (hl-line :background bg-alt)
   ((tab-bar &override) :background base1)
   ((tab-bar-tab &override) :foreground fg-alt :background bg)
   ((tab-bar-tab-inactive &override) :foreground fg)
   (font-lock-keyword-face :foreground violet)
   ((line-number &override) :foreground base4)
   ((line-number-current-line &override) :background base1 :foreground base7)
   (isearch :foreground base0 :background orange)
   (lazy-highlight :background yellow :foreground base0 :distant-foreground base0 :bold bold)
   ((link &override) :foreground violet)
   (minibuffer-prompt :foreground cyan)
   (mode-line
    :background my-black :foreground modeline-fg
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg)))
   (mode-line-inactive
    :background bg :foreground base4
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-inactive-bg)))

   ;;;; company
   (company-preview-common :foreground cyan)
   (company-tooltip-common :foreground cyan)
   (company-tooltip-common-selection :foreground cyan)
   (company-tooltip-annotation :foreground cyan)
   (company-tooltip-annotation-selection :foreground cyan)
   (company-scrollbar-bg :background base3)
   (company-scrollbar-fg :background cyan)
   (company-tooltip-selection :background bg-alt2)
   (company-tooltip-mouse :background bg-alt2 :foreground nil)
   ;;;; css-mode <built-in> / scss-mode
   (css-proprietary-property :foreground keywords)
   ;;;; doom-emacs
   (+workspace-tab-selected-face :background dark-green :foreground "white")
   ;;;; doom-modeline
   (doom-modeline-project-dir :bold t :foreground cyan)
   (doom-modeline-buffer-path :inherit 'bold :foreground green)
   (doom-modeline-buffer-file :inherit 'bold :foreground fg)
   (doom-modeline-buffer-modified :inherit 'bold :foreground yellow)
   (doom-modeline-error :background bg)
   (doom-modeline-buffer-major-mode :foreground green :bold t)
   (doom-modeline-info :bold t :foreground cyan)
   (doom-modeline-bar :background dark-green)
   (doom-modeline-panel :background dark-green :foreground fg)
   ;;;; doom-themes
   (doom-themes-neotree-file-face :foreground fg)
   (doom-themes-neotree-hidden-file-face :foreground (doom-lighten fg-alt 0.25))
   (doom-themes-neotree-media-file-face :foreground (doom-lighten fg-alt 0.25))
   ;;;; emacs-lisp-mode
   (highlight-quoted-symbol :foreground dark-cyan)
   ;;;; ediff <built-in>
   (ediff-fine-diff-A    :background (doom-blend red bg 0.4) :weight 'bold)
   (ediff-current-diff-A :background (doom-blend red bg 0.2))
   ;;;; evil
   (evil-search-highlight-persist-highlight-face :background yellow)
   (evil-ex-substitute-replacement :foreground cyan :strike-through nil :inherit 'evil-ex-substitute-matches)
   ;;;; evil-snipe
   (evil-snipe-first-match-face :foreground "white" :background yellow)
   (evil-snipe-matches-face     :foreground yellow :bold t :underline t)
   ;;;; flycheck
   (flycheck-error   :underline `(:style wave :color ,red)    :background base3)
   (flycheck-warning :underline `(:style wave :color ,yellow) :background base3)
   (flycheck-info    :underline `(:style wave :color ,blue)   :background base3)
   ;;;; dired
   (dired-directory :foreground cyan)
   (dired-marked :foreground yellow)
   (dired-symlink :foreground cyan)
   (dired-header :foreground cyan)
   ;;;; helm
   (helm-swoop-target-line-face :foreground magenta :inverse-video t)
   ;;;; highlight-thing
   (highlight-thing :background (doom-lighten base3 0.03) :distant-foreground fg-alt)
   ;;;; highlight-symbol
   (highlight-symbol-face :background (doom-lighten base3 0.03) :distant-foreground fg-alt)
   ;;;; ivy
   (ivy-current-match :background bg-alt2)
   (ivy-subdir :background nil :foreground cyan)
   (ivy-action :background nil :foreground cyan)
   (ivy-grep-line-number :background nil :foreground cyan)
   (ivy-minibuffer-match-face-1 :background nil :foreground yellow)
   (ivy-minibuffer-match-face-2 :background nil :foreground yellow)
   (ivy-minibuffer-match-highlight :foreground cyan)
   (counsel-key-binding :foreground cyan)
   ;;;; ivy-posframe
   (ivy-posframe :background base3)
   (ivy-posframe-border :background base1)
   ;;;; LaTeX-mode
   (font-latex-math-face :foreground dark-cyan)
   ;;;; magit
   (magit-section-heading             :foreground cyan :weight 'bold)
   (magit-branch-current              :underline green :inherit 'magit-branch-local)
   (magit-diff-hunk-heading           :background base3 :foreground fg-alt)
   (magit-diff-hunk-heading-highlight :background bg-alt2 :foreground fg)
   (magit-diff-context                :foreground base3 :foreground fg-alt)
   ;;;; markdown-mode
   (markdown-header-face :inherit 'bold :foreground green)
   (markdown-header-delimiter-face :foreground orange)
   (markdown-blockquote-face :inherit 'italic :foreground grey)
   (markdown-list-face :foreground grey)
   (markdown-url-face :foreground violet)
   (markdown-pre-face  :foreground cyan)
   (markdown-link-face :inherit 'underline :foreground grey)
   ((markdown-code-face &override) :background (doom-lighten base2 0.045))
   ;;;; mu4e-view
   (mu4e-header-key-face :foreground red :weight 'bold)
   ;;;; neotree
   (neo-root-dir-face   :foreground cyan)
   (doom-neotree-dir-face :foreground cyan)
   (neo-dir-link-face   :foreground cyan)
   (neo-expand-btn-face :foreground magenta)
   ;;;; outline <built-in>
   ((outline-1 &override) :foreground violet)
   ((outline-2 &override) :foreground blue)
   ((outline-3 &override) :foreground green)
   ((outline-4 &override) :foreground dark-yellow)
   ((outline-5 &override) :foreground (doom-lighten violet 0.25))
   ((outline-6 &override) :foreground (doom-lighten blue 0.4))
   ((outline-7 &override) :foreground (doom-lighten green 0.5))
   ((outline-8 &override) :foreground (doom-lighten dark-yellow 0.6))
   ; ((outline-1 &override) :foreground green)
   ; ((outline-2 &override) :foreground green)
   ; ((outline-3 &override) :foreground yellow)
   ; ((outline-4 &override) :foreground yellow)
   ; ((outline-5 &override) :foreground dark-yellow)
   ; ((outline-6 &override) :foreground dark-yellow)
   ;;;; org <built-in>
   ((org-code &override) :foreground orange :background base1)
   ((org-block &override) :background base1)
   (org-date :foreground green)
   (org-document-info :foreground red)
   (org-document-title :foreground red)
   (org-drawer :foreground comments)
   (org-ellipsis :underline nil :foreground orange)
   (org-formula :foreground green)
   (org-meta-line :foreground comments)
   (org-list-dt :foreground cyan)
   ; (org-list-dt :foreground yellow)
   ((org-quote &override) :inherit 'italic :foreground base7 :background org-quote)
   (org-table :foreground cyan)
   (org-tag :foreground (doom-darken comments 0.15) :weight 'normal)
   ; (org-tag :foreground yellow :bold nil)
   (org-todo :foreground dark-yellow :bold 'inherit)
   ; (org-todo :foreground yellow :bold 'inherit)
   (org-verbatim :foreground yellow)
   ;;;; rainbow-delimiters
   (rainbow-delimiters-depth-1-face :foreground orange)
   (rainbow-delimiters-depth-2-face :foreground magenta)
   (rainbow-delimiters-depth-3-face :foreground green)
   (rainbow-delimiters-depth-4-face :foreground blue)
   ;;;; show-paren <built-in>
   ((show-paren-match &override) :foreground nil :background base5 :bold t)
   ((show-paren-mismatch &override) :foreground nil :background "red")
   ;;;; swiper
   (swiper-line-face :background bg-alt2)
   ;;;; undo-tree
   (undo-tree-visualizer-active-branch-face :foreground cyan)
   (undo-tree-visualizer-current-face :foreground yellow)
   ;;;; vimish-fold
   ((vimish-fold-overlay &override) :inherit 'font-lock-comment-face :background bg-alt2 :weight 'light)
   ((vimish-fold-mouse-face &override) :foreground "white" :background yellow :weight 'light)
   ((vimish-fold-fringe &override) :foreground magenta :background magenta)
   ;;;; web-mode
   (web-mode-html-tag-bracket-face :foreground blue)
   (web-mode-html-tag-face         :foreground cyan)
   (web-mode-html-attr-name-face   :foreground cyan)
   (web-mode-json-key-face         :foreground green)
   (web-mode-json-context-face     :foreground cyan)
   ;;;; which-key
   (which-key-key-face                   :foreground green)
   (which-key-group-description-face     :foreground red)
   (which-key-command-description-face   :foreground blue)
   (which-key-local-map-description-face :foreground orange))

  ;;;; Base theme variable overrides
  ;; ()
  )
;;; doom-terminix-theme.el ends here
