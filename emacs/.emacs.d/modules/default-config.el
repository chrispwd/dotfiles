;;; default-config.el --- default config -*- lexical-binding: t; -*-
;;;
;;; Commentary:
;;;
;;;     Default configuration for native packages (minus a few with their
;;;     separate repos).
;;;
;;; Code:
;;;

;;; -------------------- GENERAL EMACS CONFIG
;;; EMACS
;; Yes, you can actually use use-package like this for configuring defaults
(use-package emacs
  :ensure nil
  :bind
  (("M-o" . other-window)
   ("M-n" . duplicate-dwim)
   ("M-g r" . recentf)
   ("M-s g" . grep)
   ("M-s f" . find-name-dired)
   ("C-x C-b" . ibuffer)
   ("C-x 4 o" . window-swap-states)
   ("RET" . newline-and-indent)
   ("C-z" . nil)
   ("C-<backtab>" . tab-previous)
   ;; ("C-x C-z" . nil)
   ("C-x C-k RET" . nil))

  :custom
  (ad-redefinition-action 'accept)
  (column-number-mode nil)
  (line-number-mode nil)
  (indent-tabs-mode nil)
  (completion-ignore-case t)
  (completions-detailed t)
  (delete-by-moving-to-trash t)
  (display-line-numbers-width 3)
  (display-line-numbers-widen t)
  (delete-selection-mode 1)
  (enable-recursive minibuffers t)
  (find-ls-option '("-exec ls -ldh {} +" . "-ldh"))  ; find-dired results with human readable sizes
  (frame-resize-pixelwise t)
  (global-auto-revert-non-file-buffers t)
  (help-window-select t)
  (history-length 300)
  (inhibit-startup-message t)
  (initial-scratch-message "")
  (ispell-dictionary "en_US")
  (kill-do-not-save-duplicates t)
  (create-lockfiles nil)   ; No backup files
  (make-backup-files nil)  ; No backup files
  (backup-inhibited t)     ; No backup files
  (pixel-scroll-precision-mode t)
  (pixel-scroll-precision-use-momentum nil)
  (ring-bell-function 'ignore)
  (read-answer-short t)
  (recentf-max-saved-items 300) ; default is 20
  (recentf-max-menu-items 15)
  (recentf-auto-cleanup (if (daemonp) 300 'never))
  (recentf-exclude (list "^/\\(?:ssh\\|su\\|sudo\\)?:"))
  (remote-file-name-inhibit-delete-by-moving-to-trash t)
  (remote-file-name-inhibit-auto-save t)
  (resize-mini-windows 'grow-only)
  (ring-bell-function #'ignore)
  (scroll-conservatively 8)
  (scroll-margin 5)
  (savehist-save-minibuffer-history t)    ; t is default
  (savehist-additional-variables
   '(kill-ring                            ; clipboard
     register-alist                       ; macros
     mark-ring global-mark-ring           ; marks
     search-ring regexp-search-ring))     ; searches
  (save-place-file (expand-file-name "saveplace" user-emacs-directory))
  (save-place-limit 600)
  (set-mark-command-repeat-pop t) ; So we can use C-u C-SPC C-SPC C-SPC... instead of C-u C-SPC C-u C-SPC...
  (split-width-threshold 170)     ; So vertical splits are preferred
  (split-height-threshold nil)
  (shr-use-colors nil)
  (switch-to-buffer-obey-display-actions t)
  (tab-always-indent 'complete)
  (tab-width 4)
  (tab-bar-close-button-show nil)
  (tab-bar-new-button-show nil)
  (tab-bar-tab-hints t)
  (tab-bar-mode 1)
  (treesit-font-lock-level 4)
  (truncate-lines t)
  (fill-column 80)
  (undo-limit (* 13 160000))
  (undo-strong-limit (* 13 240000))
  (undo-outer-limit (* 13 24000000))
  (use-dialog-box nil)
  (use-file-dialog nil)
  (use-short-answers t)
  (visible-bell nil)
  (window-combination-resize t)
  (window-resize-pixelwise nil)
  (xref-search-program 'ripgrep)
  (grep-command "rg -nS --no-heading ")
  (grep-find-ignored-directories
   '("SCCS" "RCS" "CVS" "MCVS" ".src" ".svn" ".git" ".hg" ".bzr" "_MTN" "_darcs" "{arch}" "node_modules" "build" "dist"))
  
  :config
  ;; Makes everything accept utf-8 as default, so buffers with tsx and so
  ;; won't ask for encoding (because undecided-unix) every single keystroke
  (modify-coding-system-alist 'file "" 'utf-8)

  (when (eq system-type 'darwin)
    (setq insert-directory-program "gls")
    (setq mac-command-modifier 'meta))

  ;;; Settings when in a prog-mode
  ;; Save manual customizations to other file than init.el
  (setq custom-file (locate-user-emacs-file "custom-vars.el"))
  (load custom-file 'noerror 'nomessage)

  ;; Set line-number-mode with relative numbering
  (setq display-line-numbers-type t)
  (add-hook 'prog-mode-hook #'display-line-numbers-mode)

  ;; Highlight the current line
  (add-hook 'prog-mode-hook #'hl-line-mode)
  
  ;; Highlight column 80
  (add-hook 'prog-mode-hook #'display-fill-column-indicator-mode)
  (setq-default display-fill-column-indicator-column 80)

  ;; A Protesilaos life savier HACK
  ;; Add option "d" to whenever using C-x s or C-x C-c, allowing a quick preview
  ;; of the diff (if you choose `d') of what you're asked to save.
  (add-to-list 'save-some-buffers-action-alist
               (list "d"
                     (lambda (buffer) (diff-buffer-with-file (buffer-file-name buffer)))
                     "show diff between the buffer and its file"))

  ;; On Terminal: changes the vertical separator to a full vertical line
  ;;              and truncation symbol to a right arrow
  (set-display-table-slot standard-display-table 'vertical-border ?\u2502)
  (set-display-table-slot standard-display-table 'truncation ?\u2192)

  ;; Ibuffer filters
  (setq ibuffer-saved-filter-groups
        '(("default"
           ("org" (or
                   (mode . org-mode)
                   (name . "^\\*Org Src")
                   (name . "^\\*Org Agenda\\*$")))
           ("tramp" (name . "^\\*tramp.*"))
           ("emacs" (or
                     (name . "^\\*scratch\\*$")
                     (name . "^\\*Messages\\*$")
                     (name . "^\\*Warnings\\*$")
                     (name . "^\\*Shell Command Output\\*$")
                     (name . "^\\*Async-native-compile-log\\*$")
                     (name . "^\\*straight-")))
           ("ediff" (or
                     (name . "^\\*ediff.*")
                     (name . "^\\*Ediff.*")))
           ("dired" (mode . dired-mode))
           ("terminal" (or
                        (mode . term-mode)
                        (mode . shell-mode)
                        (mode . eshell-mode)))
           ("help" (or
                    (name . "^\\*Help\\*$")
                    (name . "^\\*info\\*$")
                    (name . "^\\*helpful"))))))
  (add-hook 'ibuffer-mode-hook
            (lambda ()
              (ibuffer-switch-to-saved-filter-groups "default")))
  (setq ibuffer-show-empty-filter-groups nil) ; don't show empty groups

  ;; So eshell git commands open an instance of THIS config of Emacs
  (setenv "GIT_EDITOR" (format "emacs --init-dir=%s " (shell-quote-argument user-emacs-directory)))
  ;; So rebase from eshell opens with a bit of syntax highlight
  (add-to-list 'auto-mode-alist '("/git-rebase-todo\\'" . conf-mode))

  ;; Runs 'private.el' after Emacs inits
  (add-hook 'after-init-hook
            (lambda ()
              (let ((private-file (expand-file-name "private.el" user-emacs-directory)))
                (when (file-exists-p private-file)
                  (load private-file)))))

  :init
  (set-window-margins (selected-window) 2 0)

  ;; (toggle-frame-maximized)
  (select-frame-set-input-focus (selected-frame))
  (global-auto-revert-mode 1)
  (recentf-mode 1)
  (repeat-mode 1)
  (savehist-mode 1)
  (save-place-mode 1)
  (winner-mode)
  (xterm-mouse-mode 1)
  (file-name-shadow-mode 1) ; allows us to type a new path without having to delete the current one

  (with-current-buffer (get-buffer-create "*scratch*")
    (insert (format ";;
;;::::::::::::::::::::::::::::::::::::::::::::::::::::
;;:'######::'##::::'##::::'###:::::'######:::'######::
;;'##... ##: ###::'###:::'## ##:::'##... ##:'##... ##:
;; ##:::..:: ####'####::'##:. ##:: ##:::..:: ##:::..::
;; ##::::::: ## ### ##:'##:::. ##: ##:::::::. ######::
;; ##::::::: ##. #: ##: #########: ##::::::::..... ##:
;; ##::: ##: ##:.:: ##: ##.... ##: ##::: ##:'##::: ##:
;;. ######:: ##:::: ##: ##:::: ##:. ######::. ######::
;;:......:::..:::::..::..:::::..:::......::::......:::
;;   
;;   Version      : 2.0.0
;;   Loading time : %s
;;   Packages     : %s
;;
"
                    (emacs-init-time)
                    (number-to-string (length package-activated-list)))))
  (message (emacs-init-time)))

;;; WINDOW
(use-package window
  :ensure nil
  :custom
  (display-buffer-alist
   '(
     ;; ("\\*.*e?shell\\*"
     ;;  (display-buffer-in-side-window)
     ;;  (window-height . 0.25)
     ;;  (side . bottom)
     ;;  (slot . -1))
     ("\\*\\(Backtrace\\|Warnings\\|Compile-Log\\|Messages\\|Bookmark List\\|Occur\\|eldoc\\)\\*"
      (display-buffer-in-side-window)
      (window-height . 0.25)
      (side . bottom)
      (slot . 0))
     ("\\*\\([Hh]elp\\)\\*"
      (display-buffer-in-side-window)
      (window-width . 75)
      (side . right)
      (slot . 0))
     ("\\*\\(Ibuffer\\)\\*"
      (display-buffer-in-side-window)
      (window-width . 100)
      (side . right)
      (slot . 1))
     ("\\*\\(Flymake diagnostics\\|xref\\|Completions\\)"
      (display-buffer-in-side-window)
      (window-height . 0.25)
      (side . bottom)
      (slot . 1))
     ("\\*\\(grep\\|find\\)\\*"
      (display-buffer-in-side-window)
      (window-height . 0.25)
      (side . bottom)
      (slot . 2))
     )))

;;; ICOMPLETE - I tried it, but ultimately enjoyed vertico more
;; (use-package icomplete
;;   :bind (:map icomplete-minibuffer-map
;;               ("C-n" . icomplete-forward-completions)
;;               ("C-p" . icomplete-backward-completions)
;;               ("C-v" . icomplete-vertical-toggle)
;;               ("RET" . icomplete-force-complete-and-exit)
;;               ("C-j" . exit-minibuffer)) ;; So we can exit commands like `multi-file-replace-regexp-as-diff'
;;   :hook
;;   (after-init . (lambda ()
;;                   (fido-mode -1)
;;                   (icomplete-vertical-mode 1)))
;;   :config
;;   (setq icomplete-delay-completions-threshold 0)
;;   (setq icomplete-compute-delay 0)
;;   (setq icomplete-show-matches-on-no-input t)
;;   (setq icomplete-hide-common-prefix nil)
;;   (setq icomplete-prospects-height 10)
;;   (setq icomplete-separator " . ")
;;   (setq icomplete-with-completion-tables t)
;;   (setq icomplete-in-buffer t)
;;   (setq icomplete-max-delay-chars 0)
;;   (setq icomplete-scroll t)

;;   (if icomplete-in-buffer
;;       (advice-add 'completion-at-point
;;                   :after #'minibuffer-hide-completions))

;;   ;; Emacs 31
;;   ;; https://lists.gnu.org/archive/html/bug-gnu-emacs/2025-01/msg01919.html
;;   ;;
;;   ;; I'm currently proposing these features on bug#75784 (bug-gnu-emacs).
;;   ;; If they get accepted we can get rid of this giant block.
;;   ;;
;;   ;; === FIXME: I'm reviewing it to the icomplete PATCH

;;   (defface icomplete-vertical-selected-prefix-indicator-face
;; 	'((t :inherit font-lock-keyword-face :weight bold :foreground "cyan"))
;; 	"Face used for the prefix set by `icomplete-vertical-selected-prefix-indicator'."
;; 	:group 'icomplete
;; 	:version "31.1")

;;   (defface icomplete-vertical-unselected-prefix-indicator-face
;; 	'((t :inherit font-lock-keyword-face :weight normal :foreground "gray"))
;; 	"Face used for the prefix set by `icomplete-vertical-unselected-prefix-indicator'."
;; 	:group 'icomplete
;; 	:version "31.1")

;;   (defcustom icomplete-vertical-in-buffer-adjust-list t
;; 	"Control whether in-buffer completion should align the cursor position.
;; If this is t and `icomplete-in-buffer' is t, and `icomplete-vertical-mode'
;; is activated, the in-buffer vertical completions are shown aligned to the
;; cursor position when the completion started, not on the first column, as
;; the default behaviour."
;; 	:type 'boolean
;; 	:group 'icomplete
;; 	:version "31.1")

;;   (defcustom icomplete-vertical-render-prefix-indicator t
;; 	"Control whether a indicator is added as a prefix to each candidate.
;; If this is t and `icomplete-vertical-mode' is activated, a indicator,
;; controlled by `icomplete-vertical-selected-prefix-indicator' is shown
;; as a prefix to the current under selection candidate, while the
;; remaining of the candidates will receive the indicator controlled
;; by `icomplete-vertical-unselected-prefix-indicator'."
;; 	:type 'boolean
;; 	:group 'icomplete
;; 	:version "31.1")

;;   (defcustom icomplete-vertical-selected-prefix-indicator "» "
;; 	"Prefix string used to mark the selected completion candidate.
;; If `icomplete-vertical-render-prefix-indicator' is t, the string
;; defined here is used as a prefix of the currently selected entry in the
;; list.  It can be further customized by the face
;; `icomplete-vertical-selected-prefix-indicator-face'."
;; 	:type 'string
;; 	:group 'icomplete
;; 	:version "31.1")

;;   (defcustom icomplete-vertical-unselected-prefix-indicator "  "
;; 	"Prefix string used on the unselected completion candidates.
;; If `icomplete-vertical-render-prefix-indicator' is t, the string
;; defined here is used as a prefix for all unselected entries in the list.
;; list.  It can be further customized by the face
;; `icomplete-vertical-unselected-prefix-indicator-face'."
;; 	:type 'string
;; 	:group 'icomplete
;; 	:version "31.1")

;;   ;; FIXME: make this into PATCH - OK
;;   (defun icomplete-vertical--adjust-lines-for-column (lines buffer data)
;; 	"Adjust the LINES to align with the column in BUFFER based on DATA."
;; 	(if icomplete-vertical-in-buffer-adjust-list
;; 		(let* ((column (current-column))
;;                (prefix-indicator-width
;; 				(if icomplete-vertical-render-prefix-indicator
;; 					(max (length icomplete-vertical-selected-prefix-indicator)
;; 						 (length icomplete-vertical-unselected-prefix-indicator))
;;                   0))
;;                (wrapped-line (with-current-buffer buffer
;;                                (save-excursion
;; 								 (goto-char (car data))
;; 								 (beginning-of-line)
;; 								 (count-screen-lines (point) (car data)))))
;;                (window-width (+ (window-hscroll) (window-body-width)))
;;                (longest-line-width (apply #'max (mapcar #'length lines)))
;;                (spaces-to-add
;; 				(if (> wrapped-line 1)
;; 					(- column (* (- wrapped-line 1) (- window-width 5)))
;;                   column))
;;                (spaces-to-add-avoiding-scrolling
;; 				(if (>= (+ spaces-to-add longest-line-width prefix-indicator-width) window-width)
;; 					(- spaces-to-add longest-line-width)
;;                   spaces-to-add)))

;;           (mapcar (lambda (line)
;; 					(concat (make-string spaces-to-add-avoiding-scrolling ?\s) line))
;;                   lines))
;;       lines))

;;   ;; FIXME: what to demo/test:
;;   ;;
;;   ;; This patch provides two more new features, which improves icomplete-vertical-mode, 1 and 2,
;;   ;; explained below:
;;   ;;
;;   ;;
;;   ;; 1.) Improve feature provided by `icomplete-in-buffer'.
;;   ;;     If user, besides setting `icomplete-in-buffer' to t, also set the
;;   ;;     new `icomplete-vertical-in-buffer-adjust-list' to t, the following are fixed/ improved:
;;   ;;
;;   ;; Without the new `icomplete-vertical-in-buffer-adjust-list':
;;   ;; - [ ] wrapped lines   - completion candidates on different columns always shows candidates at column 0
;;   ;; - [ ] wrapped lines   - completion candidates on different lines always shows candidates at column 0
;;   ;; - [ ] wrapped lines   - completion candidates close to the end of buffer won't be printed
;;   ;; - [ ] truncated lines - completion candidates on different columns always shows candidates at column 0
;;   ;; - [ ] truncated lines - completion candidates on horizontally scrolled windows won't appear on buffer
;;   ;;                         as they're on column 0
;;   ;; - [ ] truncated lines - completion candidates close to the end of buffer wont be shown
;;   ;;
;;   ;;
;;   ;; With the new `icomplete-vertical-in-buffer-adjust-list':
;;   ;; - [ ] wrapped lines   - fix    : completion candidates on different columns will always be printed
;;   ;;                                  under the cursor
;;   ;; - [ ] wrapped lines   - feature: completion candidates on different columns close to the end
;;   ;;                                  of the buffer will adjust so they stay visible
;;   ;; - [ ] wrapped lines   - fix:   : completion candidates on different lines always be printed under
;;   ;;                                  the cursor
;;   ;; - [ ] wrapped lines   - fix    : if icomplete-prospects-height won't fit from current line to the
;;   ;;                                  end of vertical space, our window will be scrolled so we have at
;;   ;;                                  least this amount of lines. This ensures our candidates list is
;;   ;;                                  always visible
;;   ;; - [ ] truncated lines - fix    : completion candidates on different columns will always be printed
;;   ;;                                  under the cursor
;;   ;; - [ ] truncated lines - feature: completion candidates on different columns close to the end
;;   ;;                                  of the buffer will adjust so they stay visible even when we scroll
;;   ;;                                  horizontally
;;   ;; - [ ] truncated lines - feature: completion candidates on horizontally scrolled windows will be
;;   ;;                                  printed under the cursor
;;   ;; - [ ] wrapped lines   - feature: if icomplete-prospects-height won't fit from current line to the
;;   ;;                                  end of vertical space, our window will be scrolled so we have at
;;   ;;                                  least this amount of lines. This ensures our candidates list is
;;   ;;                                  always visible
;;   ;; - [ ] from wrapped    - feature: if we are on wrapped lines and manually horiontal scroll, the lines
;;   ;;       to truncated               will become automatically truncated, in this case, all the features
;;   ;;                                  above still works from either mode (wrapped or truncated).
;;   ;;
;;   ;;
;;   ;; 2.) Implements new feature which provides customizable prefix indicators
;;   ;;
;;   ;; Setting `icomplete-vertical-render-prefix-indicator' to t will provide a prefix indicator
;;   ;; to indicate the current selected candidate, by default "» ".
;;   ;;
;;   ;; This prefix is customizable through the variable `icomplete-vertical-selected-prefix-indicator'
;;   ;; and de face `icomplete-vertical-selected-prefix-indicator-face'.
;;   ;;
;;   ;; Users can also customize an indicator to the not selected candidates trhough the use of
;;   ;; the variable `icomplete-vertical-unselected-prefix-indicator', by default: "  ", and the face
;;   ;; `icomplete-vertical-unselected-prefix-indicator-face'.
;;   ;;

;;   ;; FIXME: remove this after patch
;;   (defun icomplete-vertical--ensure-visible-lines-inside-buffer ()
;; 	"Ensure the completion list is visible in regular buffers only.
;; Scrolls the screen to be at least `icomplete-prospects-height' real lines
;; away from the bottom.  Counts wrapped lines as real lines."
;; 	(unless (minibufferp)
;;       (let* ((window-height (window-body-height))
;; 			 (current-line (count-screen-lines (window-start) (point)))
;; 			 (lines-to-bottom (- window-height current-line)))
;; 		(when (< lines-to-bottom icomplete-prospects-height)
;;           (scroll-up (- icomplete-prospects-height lines-to-bottom))))))

;;   (defun icomplete-vertical--add-indicator-to-selected (comp)
;; 	"Add indicators to the selected/unselected COMP completions."
;; 	(if (and icomplete-vertical-render-prefix-indicator
;; 			 (get-text-property 0 'icomplete-selected comp))
;; 		(concat (propertize icomplete-vertical-selected-prefix-indicator
;; 							'face 'icomplete-vertical-selected-prefix-indicator-face)
;; 				comp)
;;       (concat (propertize icomplete-vertical-unselected-prefix-indicator
;;                           'face 'icomplete-vertical-unselected-prefix-indicator-face)
;;               comp)))

;;   (cl-defun icomplete--render-vertical
;;       (comps md &aux scroll-above scroll-below
;; 			 (total-space ; number of mini-window lines available
;;               (1- (min
;;                    icomplete-prospects-height
;;                    (truncate (max-mini-window-lines) 1)))))
;; 	;; Welcome to loopapalooza!
;; 	;;
;; 	;; First, be mindful of `icomplete-scroll' and manual scrolls.  If
;; 	;; `icomplete--scrolled-completions' and `icomplete--scrolled-past'
;; 	;; are:
;; 	;;
;; 	;; - both nil, there is no manual scroll;
;; 	;; - both non-nil, there is a healthy manual scroll that doesn't need
;; 	;;   to be readjusted (user just moved around the minibuffer, for
;; 	;;   example);
;; 	;; - non-nil and nil, respectively, a refiltering took place and we
;; 	;;   may need to readjust them to the new filtered `comps'.
;; 	(when (and icomplete-scroll                                    ;; FIXME: remove this after patch
;;                (not icomplete--scrolled-completions)
;;                (not icomplete--scrolled-past))
;;       (icomplete-vertical--ensure-visible-lines-inside-buffer))
;; 	(when (and icomplete-scroll
;;                icomplete--scrolled-completions
;;                (null icomplete--scrolled-past))
;;       (icomplete-vertical--ensure-visible-lines-inside-buffer)     ;; FIXME: remove this after patch
;;       (cl-loop with preds
;;                for (comp . rest) on comps
;;                when (equal comp (car icomplete--scrolled-completions))
;;                do
;;                (setq icomplete--scrolled-past preds
;; 					 comps (cons comp rest))
;;                (completion--cache-all-sorted-completions
;; 				(icomplete--field-beg)
;; 				(icomplete--field-end)
;; 				comps)
;;                and return nil
;;                do (push comp preds)
;;                finally (setq icomplete--scrolled-completions nil)))
;; 	;; Then, in this pretty ugly loop, collect completions to display
;; 	;; above and below the selected one, considering scrolling
;; 	;; positions.
;; 	(cl-loop with preds = icomplete--scrolled-past
;; 			 with succs = (cdr comps)
;; 			 with space-above = (- total-space
;;                                    1
;;                                    (cl-loop for (_ . r) on comps
;; 											repeat (truncate total-space 2)
;; 											while (listp r)
;; 											count 1))
;; 			 repeat total-space
;; 			 for neighbor = nil
;; 			 if (and preds (> space-above 0)) do
;; 			 (push (setq neighbor (pop preds)) scroll-above)
;; 			 (cl-decf space-above)
;; 			 else if (consp succs) collect
;; 			 (setq neighbor (pop succs)) into scroll-below-aux
;; 			 while neighbor
;; 			 finally (setq scroll-below scroll-below-aux))
;; 	;; Halfway there...
;; 	(let* ((selected (propertize (car comps) 'icomplete-selected t))
;;            (chosen (append scroll-above (list selected) scroll-below))
;;            (tuples (icomplete--augment md chosen))
;;            max-prefix-len max-comp-len lines nsections)
;;       (add-face-text-property 0 (length selected)
;;                               'icomplete-selected-match 'append selected)
;;       ;; Figure out parameters for horizontal spacing
;;       (cl-loop
;;        for (comp prefix) in tuples
;;        maximizing (length prefix) into max-prefix-len-aux
;;        maximizing (length comp) into max-comp-len-aux
;;        finally (setq max-prefix-len max-prefix-len-aux
;; 					 max-comp-len max-comp-len-aux))
;;       ;; Serialize completions and section titles into a list
;;       ;; of lines to render
;;       (cl-loop
;;        for (comp prefix suffix section) in tuples
;;        when section
;;        collect (propertize section 'face 'icomplete-section) into lines-aux
;;        and count 1 into nsections-aux
;;        for comp = (icomplete-vertical--add-indicator-to-selected comp)
;;        when (get-text-property 0 'icomplete-selected comp)
;;        do (add-face-text-property 0 (length comp)
;;                                   'icomplete-selected-match 'append comp)
;;        collect (concat prefix
;;                        (make-string (max 0 (- max-prefix-len (length prefix))) ? )
;;                        (completion-lazy-hilit comp)
;;                        (make-string (max 0 (- max-comp-len (length comp))) ? )
;;                        suffix)
;;        into lines-aux
;;        finally (setq lines lines-aux
;; 					 nsections nsections-aux))
;;       ;; Kick out some lines from the beginning due to extra sections.
;;       ;; This hopes to keep the selected entry more or less in the
;;       ;; middle of the dropdown-like widget when `icomplete-scroll' is
;;       ;; t.  Funky, but at least I didn't use `cl-loop'
;;       (setq lines
;; 			(nthcdr
;; 			 (cond ((<= (length lines) total-space) 0)
;;                    ((> (length scroll-above) (length scroll-below)) nsections)
;;                    (t (min (ceiling nsections 2) (length scroll-above))))
;; 			 lines))
;;       (when icomplete--in-region-buffer
;; 		(setq lines (icomplete-vertical--adjust-lines-for-column
;; 					 lines icomplete--in-region-buffer completion-in-region--data)))
;;       ;; At long last, render final string return value.  This may still
;;       ;; kick out lines at the end.
;;       (concat " \n"
;;               (cl-loop for l in lines repeat total-space concat l concat "\n")))
;; 	;; end use-package
;; 	))

;;; DIRED
(use-package dired
  :ensure nil
  :custom
  (dired-dwim-target t)
  (dired-guess-shell-alist-user
   '(("\\.\\(png\\|jpe?g\\|tiff\\)" "feh" "xdg-open" "open")
     ("\\.\\(mp[34]\\|m4a\\|ogg\\|flac\\|webm\\|mkv\\)" "mpv" "xdg-open" "open")
     (".*" "xdg-open" "open")))
  (dired-kill-when-opening-new-dired-buffer t)
  (dired-listing-switches "-ahl --group-directories-first"))

;;; WDIRED
(use-package wdired
  :ensure nil
  :commands (wdired-change-to-wdired-mode)
  :config
  (setq wdired-allow-to-change-permissions t)
  (setq wdired-create-parent-directories t))

;;; CONF
(use-package conf-mode
  :ensure nil
  :mode ("\\.env\\..*\\'" "\\.env\\'")
  :init
  (add-to-list 'auto-mode-alist '("\\.env\\'" . conf-mode)))

;;; COMPILATION
(use-package compile
  :ensure nil
  :hook
  (;; Not ideal, but I do not want this poluting the modeline
   (compilation-start . (lambda () (setq compilation-in-progress nil))))
  :custom
  (compilation-always-kill t)
  (compilation-scroll-output t)
  (ansi-color-for-compilation-mode t)
  :config
  (add-hook 'compilation-filter-hook #'ansi-color-compilation-filter))

;;; ESHELL
(use-package eshell
  :ensure nil
  :defer t
  :config
  (defun emacs-solo/eshell-pick-history ()
    "Show Eshell history in a completing-read picker and insert the selected command."
    (interactive)
    (let* ((history-file (expand-file-name "eshell/history" user-emacs-directory))
           (history-entries (when (file-exists-p history-file)
                              (with-temp-buffer
                                (insert-file-contents history-file)
                                (split-string (buffer-string) "\n" t))))
           (selection (completing-read "Eshell History: " history-entries)))
      (when selection
        (insert selection))))

  (defun eshell/cat-with-syntax-highlighting (filename)
    "Like cat(1) but with syntax highlighting.
  Stole from aweshell"
    (let ((existing-buffer (get-file-buffer filename))
          (buffer (find-file-noselect filename)))
      (eshell-print
       (with-current-buffer buffer
         (if (fboundp 'font-lock-ensure)
             (font-lock-ensure)
           (with-no-warnings
             (font-lock-fontify-buffer)))
         (let ((contents (buffer-string)))
           (remove-text-properties 0 (length contents) '(read-only nil) contents)
           contents)))
      (unless existing-buffer
        (kill-buffer buffer))
      nil))
  (advice-add 'eshell/cat :override #'eshell/cat-with-syntax-highlighting)

  (add-hook 'eshell-mode-hook
            (lambda ()
              (local-set-key (kbd "C-c l") #'emacs-solo/eshell-pick-history)
              (local-set-key (kbd "C-l")
                             (lambda ()
                               (interactive)
                               (eshell/clear 1)
                               (eshell-send-input)))))
  
  (add-hook 'eshell-mode-hook (lambda () (setenv "TERM" "xterm-256color")))

  (setopt eshell-prompt-function
          (lambda ()
			(concat
			 "["
			 (if (> eshell-last-command-status 0)
				 "❌"
               "")
			 "" (number-to-string eshell-last-command-status)
			 "]──["
			 "📁 "
			 (concat (if (>= (length (eshell/pwd)) 40)
						 (concat "..." (car (last (butlast (split-string (eshell/pwd) "/") 0))))
                       (abbreviate-file-name (eshell/pwd))))
			 "]\n"
			 "λ ")))

  (setq eshell-prompt-regexp "λ ")
  (setq eshell-visual-commands
        '("vi" "screen" "top"  "htop" "btm" "less" "more" "lynx" "ncftp" "pine" "tin" "trn"
          "elm" "irssi" "nmtui-connect" "nethack" "vim" "alsamixer" "nvim" "w3m"
          "ncmpcpp" "newsbeuter" "nethack" "mutt")))

;;; ISEARCH
(use-package isearch
  :ensure nil
  :config
  (setq isearch-lazy-count t)
  (setq lazy-count-prefix-format "(%s/%s) ")
  (setq lazy-count-suffix-format nil)
  (setq search-whitespace-regexp ".*?")

  (defun isearch-copy-selected-word ()
    "Copy the current `isearch` selection to the kill ring."
    (interactive)
    (when isearch-other-end
      (let ((selection (buffer-substring-no-properties isearch-other-end (point))))
        (kill-new selection)
        (isearch-exit))))

  ;; Bind `M-w` in isearch to copy the selected word, so M-s M-. M-w
  ;; does a great job of 'copying the current word under cursor'.
  (define-key isearch-mode-map (kbd "M-w") 'isearch-copy-selected-word))

;;; SMERGE
(use-package smerge-mode
  :ensure nil
  :bind (:map smerge-mode-map
              ("C-c ^ u" . smerge-keep-upper)
              ("C-c ^ l" . smerge-keep-lower)
              ("C-c ^ n" . smerge-next)
              ("C-c ^ p" . smerge-previous)))

;;; DIFF
(use-package diff-mode
  :ensure nil
  :defer t
  :config
  (setq diff-default-read-only t)
  (setq diff-advance-after-apply-hunk t)
  (setq diff-update-on-the-fly t)
  (setq diff-font-lock-syntax 'hunk-also)
  (setq diff-font-lock-prettify nil))

;;; EDIFF
(use-package ediff
  :ensure nil
  :commands (ediff-buffers ediff-files ediff-buffers3 ediff-files3)
  :init
  (setq ediff-split-window-function 'split-window-horizontally)
  (setq ediff-window-setup-function 'ediff-setup-windows-plain)
  :config
  (setq ediff-keep-variants nil)
  (setq ediff-make-buffers-readonly-at-startup nil)
  (setq ediff-merge-revisions-with-ancestor t)
  (setq ediff-show-clashes-only t))

;;; ELDOC
(use-package eldoc
  :ensure nil
  :init
  (global-eldoc-mode))

;;; EGLOT
(use-package eglot
  :ensure nil
  :custom
  (eglot-autoshutdown t)
  (eglot-events-buffer-size 0)
  (eglot-events-buffer-config '(:size 0 :format full))
  (eglot-prefer-plaintext t)
  (jsonrpc-event-hook nil)
  (eglot-code-action-indications nil) ;; Emacs 31 -- annoying as hell
  :init
  (fset #'jsonrpc--log-event #'ignore)

  (defun emacs-solo/eglot-setup ()
    "Setup eglot mode with specific exclusions."
    (unless (eq major-mode 'emacs-lisp-mode)
      (eglot-ensure)))

  (add-hook 'prog-mode-hook #'emacs-solo/eglot-setup)

  (with-eval-after-load 'eglot
    (add-to-list 'eglot-server-programs '((ruby-mode ruby-ts-mode) "ruby-lsp")))

  :bind (:map
         eglot-mode-map
         ("C-c e a" . eglot-code-actions)
         ("C-c e o" . eglot-code-actions-organize-imports)
         ("C-c e r" . eglot-rename)
         ("C-c e f" . eglot-format)))

;;; FLYMAKE
(use-package flymake
  :ensure nil
  :defer t
  :hook (prog-mode . flymake-mode)
  :bind (:map flymake-mode-map
              ("M-8" . flymake-goto-next-error)
              ("M-7" . flymake-goto-prev-error)
              ("C-c ! n" . flymake-goto-next-error)
              ("C-c ! p" . flymake-goto-prev-error)
              ("C-c ! l" . flymake-show-buffer-diagnostics)
              ("C-c ! t" . toggle-flymake-diagnostics-at-eol))
  :custom
  (flymake-show-diagnostics-at-end-of-line nil)
  ;; (flymake-show-diagnostics-at-end-of-line 'short)
  (flymake-indicator-type 'margins)
  (flymake-margin-indicators-string
   `((error "!" compilation-error)      ;; Alternatives: », E, W, i, !, ?)
     (warning "?" compilation-warning)
     (note "i" compilation-info)))
  :config
  ;; Define the toggle function
  (defun toggle-flymake-diagnostics-at-eol ()
    "Toggle the display of Flymake diagnostics at the end of the line
and restart Flymake to apply the changes."
    (interactive)
    (setq flymake-show-diagnostics-at-end-of-line
          (not flymake-show-diagnostics-at-end-of-line))
    (flymake-mode -1) ;; Disable Flymake
    (flymake-mode 1)  ;; Re-enable Flymake
    (message "Flymake diagnostics at end of line: %s"
             (if flymake-show-diagnostics-at-end-of-line
                 "Enabled" "Disabled"))))

;;; MINIBUFFER
(use-package minibuffer
  :ensure nil
  :custom
  (completion-styles '(partial-completion flex initials))
  (completion-ignore-case t)
  (completion-show-help t)
  ;; (completion-auto-select t) ;; NOTE: only turn this on if not using icomplete, can also be 'second-tab
  (completions-max-height 20)
  (completions-format 'one-column)
  (enable-recursive-minibuffers t)
  (read-file-name-completion-ignore-case t)
  (read-buffer-completion-ignore-case t)
  :config
  ;; Keep the cursor out of the read-only portions of the.minibuffer
  (setq minibuffer-prompt-properties
        '(read-only t intangible t cursor-intangible t face minibuffer-prompt))
  (add-hook 'minibuffer-setup-hook #'cursor-intangible-mode)

  ;; Keep minibuffer lines unwrapped, long lines like on M-y will be truncated
  (add-hook 'minibuffer-setup-hook
			(lambda () (setq truncate-lines t)))

  (minibuffer-depth-indicate-mode 1)
  (minibuffer-electric-default-mode 1))

;;; ELEC_PAIR
(use-package elec-pair
  :ensure nil
  :defer
  :hook (after-init . electric-pair-mode))

;;; PAREN
(use-package paren
  :ensure nil
  :hook (after-init . show-paren-mode)
  :custom
  (show-paren-delay 0)
  (show-paren-style 'mixed)
  (show-paren-context-when-offscreen t)) ;; show matches within window splits

;;; -------------------- NON TREESITTER AREA
;;; SASS-MODE
(use-package scss-mode
  :mode "\\.sass\\'"
  :defer t)

;;; -------------------- TREESITTER AREA
;;; RUBY-TS-MODE
(use-package ruby-ts-mode
  :ensure nil
  :mode "\\.rb\\'"
  :mode "Rakefile\\'"
  :mode "Gemfile\\'"
  :custom
  (add-to-list 'treesit-language-source-alist
               '(ruby "https://github.com/tree-sitter/tree-sitter-ruby" "master" "src"))
  (ruby-indent-level 4)
  (ruby-indent-tabs-mode nil))

;;; JS-TS-MODE
(use-package js-ts-mode
  :ensure js ;; I care about js-base-mode but it is locked behind the feature "js"
  :mode "\\.jsx?\\'"
  :defer 't
  :custom
  (js-indent-level 4)
  :config
  (add-to-list 'treesit-language-source-alist
               '(javascript "https://github.com/tree-sitter/tree-sitter-javascript" "master" "src"))
  (add-to-list 'treesit-language-source-alist
               '(jsdoc "https://github.com/tree-sitter/tree-sitter-jsdoc" "master" "src")))

;;; TYPESCRIPT-TS-MODE
(use-package typescript-ts-mode
  :mode "\\.ts\\'"
  :defer 't
  :custom
  (typescript-indent-level 4)
  :config
  (add-to-list 'treesit-language-source-alist
               '(typescript "https://github.com/tree-sitter/tree-sitter-typescript" "master" "typescript/src"))
  (unbind-key "M-." typescript-ts-base-mode-map))

;;; TYPESCRIPT-TS-MODE
(use-package tsx-ts-mode
  :mode "\\.tsx\\'"
  :defer 't
  :custom
  (typescript-indent-level 4)
  :config
  (add-to-list 'treesit-language-source-alist
               '(tsx "https://github.com/tree-sitter/tree-sitter-typescript" "master" "tsx/src"))
  (unbind-key "M-." typescript-ts-base-mode-map))

;;; RUST-TS-MODE
(use-package rust-ts-mode
  :ensure rust-ts-mode
  :mode "\\.rs\\'"
  :defer 't
  :custom
  (rust-indent-level 4)
  :config
  (add-to-list 'treesit-language-source-alist
               '(rust "https://github.com/tree-sitter/tree-sitter-rust" "master" "src")))

;;; TOML-TS-MODE
(use-package toml-ts-mode
  :ensure toml-ts-mode
  :mode "\\.toml\\'"
  :defer 't
  :config
  (add-to-list 'treesit-language-source-alist
               '(toml "https://github.com/ikatyang/tree-sitter-toml" "master" "src")))

;;; MARKDOWN-TS-MODE - Emacs 31
;;  As I first proposed here:
;;  https://lists.gnu.org/archive/html/emacs-devel/2025-02/msg00810.html
(use-package markdown-ts-mode
  :ensure nil
  :mode "\\.md\\'"
  :defer 't
  :config
  (add-to-list 'major-mode-remap-alist '(markdown-mode . markdown-ts-mode))
  (add-to-list 'treesit-language-source-alist
               '(markdown "https://github.com/tree-sitter-grammars/tree-sitter-markdown" "split_parser" "tree-sitter-markdown/src"))
  (add-to-list 'treesit-language-source-alist
               '(markdown-inline "https://github.com/tree-sitter-grammars/tree-sitter-markdown" "split_parser" "tree-sitter-markdown-inline/src")))

;;; YAML-TS-MODE
(use-package yaml-ts-mode
  :ensure yaml-ts-mode
  :mode "\\.ya?ml\\'"
  :defer 't
  :config
  (add-to-list 'treesit-language-source-alist
               '(yaml "https://github.com/tree-sitter-grammars/tree-sitter-yaml" "master" "src")))

;;; DOCKERFILE-TS-MODE
(use-package dockerfile-ts-mode
  :ensure dockerfile-ts-mode
  :mode "\\Dockerfile.*\\'"
  :defer 't
  :config
  (add-to-list 'treesit-language-source-alist
               '(dockerfile "https://github.com/camdencheek/tree-sitter-dockerfile" "main" "src")))

;;; GO-TS-MODE
(use-package go-ts-mode
  :ensure go-ts-mode
  :mode "\\.go\\'"
  :defer 't
  :custom
  (go-indent-level 4)
  :config
  (add-to-list 'treesit-language-source-alist
               '(go "https://github.com/tree-sitter/tree-sitter-go" "master" "src")))

;;; GO-MOD-TS-MODE
(use-package go-mod-ts-mode
  :ensure nil
  :mode "\\go.mod\\'"
  :defer 't
  :config
  (add-to-list 'treesit-language-source-alist
               '(gomod "https://github.com/camdencheek/tree-sitter-go-mod" "main" "src")))

;;; PHP-TS-MODE
(use-package php-ts-mode
  :ensure nil
  :mode "\\.php\\'"
  :defer 't
  :config
  (add-to-list 'treesit-language-source-alist
             '(php "https://github.com/tree-sitter/tree-sitter-php" "master" "php/src")))

;;; ------------------- EMACS-SOLO CUSTOMS
;;; EMACS-SOLO-HOOKS
;;
;;; EMACS-SOLO-MODE-LINE - Sorry, doom-modeline just hits!
;;
;;  Customizations to the mode-line
;;
;; (use-package emacs-solo-mode-line
;;   :ensure nil
;;   :no-require t
;;   :defer t
;;   :init
;;   ;; Shorten big branches names
;;   (defun emacs-solo/shorten-vc-mode (vc)
;;     "Shorten VC string to at most 20 characters.
;;  Replacing `Git-' with a branch symbol."
;;     (let* ((vc (replace-regexp-in-string "^ Git[:-]" "  " vc))) ;; Options:   ᚠ ⎇
;;       (if (> (length vc) 20)
;;           (concat (substring vc 0 20) "…")
;;         vc)))

;;   ;; Formats Modeline
;;   (setq-default mode-line-format
;;                 '("%e" "  "
;;                   ;; (:propertize " " display (raise +0.1)) ;; Top padding
;;                   ;; (:propertize " " display (raise -0.1)) ;; Bottom padding
;;                   (:propertize "λ  " face font-lock-keyword-face)

;;                   (:propertize
;;                    ("" mode-line-mule-info mode-line-client mode-line-modified mode-line-remote))

;;                   mode-line-frame-identification
;;                   mode-line-buffer-identification
;;                   "   "
;;                   mode-line-position
;;                   mode-line-format-right-align
;;                   "  "
;;                   (project-mode-line project-mode-line-format)
;;                   "  "
;;                   (vc-mode (:eval (emacs-solo/shorten-vc-mode vc-mode)))
;;                   "  "
;;                   mode-line-modes
;;                   mode-line-misc-info
;;                   "  ")
;;                 project-mode-line t
;;                 mode-line-buffer-identification '(" %b")
;;                 mode-line-position-column-line-format '(" %l:%c"))

;;   ;; Provides the Diminish functionality
;;   (defvar emacs-solo-hidden-minor-modes
;;     '(abbrev-mode
;;       eldoc-mode
;;       flyspell-mode
;;       smooth-scroll-mode
;;       outline-minor-mode
;;       which-key-mode))

;;   (defun emacs-solo/purge-minor-modes ()
;;     (interactive)
;;     (dolist (x emacs-solo-hidden-minor-modes nil)
;;       (let ((trg (cdr (assoc x minor-mode-alist))))
;;         (when trg
;;           (setcar trg "")))))

;;   (add-hook 'after-change-major-mode-hook 'emacs-solo/purge-minor-modes))

;;; EMACS-SOLO-MOVEMENTS
;;
;;  Functions to better move around text and Emacs
;;
(use-package emacs-solo-movements
  :ensure nil
  :no-require t
  :defer t
  :init
  (defun emacs-solo/rename-buffer-and-move-to-new-window ()
    "Promotes a side window buffer to a new regular window."
    (interactive)
    (let ((temp-name (make-temp-name "temp-buffer-")))
      (rename-buffer temp-name t)
      (delete-window)
      (split-window-right)
      (switch-to-buffer temp-name)))

  (global-set-key (kbd "C-x x x") 'emacs-solo/rename-buffer-and-move-to-new-window)

  (defun emacs-solo-movements/scroll-down-centralize ()
    (interactive)
    (scroll-up-command)
    (recenter))

  (defun emacs-solo-movements/scroll-up-centralize ()
    (interactive)
    (scroll-down-command)
    (unless (= (window-start) (point-min))
      (recenter))
    (when (= (window-start) (point-min))
      (let ((midpoint (/ (window-height) 2)))
        (goto-char (window-start))
        (forward-line midpoint)
        (recenter midpoint))))

  (global-set-key (kbd "C-v") #'emacs-solo-movements/scroll-down-centralize)
  (global-set-key (kbd "M-v") #'emacs-solo-movements/scroll-up-centralize)

  (defun emacs-solo/transpose-split ()
    "Transpose a horizontal split into a vertical split, or vice versa."
    (interactive)
    (if (> (length (window-list)) 2)
        (user-error "More than two windows present")
      (let* ((this-win (selected-window))
             (other-win (next-window))
             (this-buf (window-buffer this-win))
             (other-buf (window-buffer other-win))
             (this-edges (window-edges this-win))
             (other-edges (window-edges other-win))
             (this-left (car this-edges))
             (other-left (car other-edges))
             (split-horizontally (not (= this-left other-left))))
        (delete-other-windows)
        (if split-horizontally
            (split-window-vertically)
          (split-window-horizontally))
        (set-window-buffer (selected-window) this-buf)
        (set-window-buffer (next-window) other-buf)
        (select-window this-win))))

  (global-set-key (kbd "C-x 4 t") #'emacs-solo/transpose-split))

(provide 'default-config)
;;; default-config.el ends here
