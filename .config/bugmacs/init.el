;;; Bugmacs: for bugtesting

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;            BEGIN DEFAULTS          ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'package)
(when (version< emacs-version "28")
  (add-to-list 'package-archives '("nongnu" . "https://elpa.nongnu.org/nongnu/")))
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("stable" . "https://stable.melpa.org/packages/"))

(defun bm-package-initialize ()
  (package-initialize)
  (unless package-archive-contents
    (package-refresh-contents)))

(bm-package-initialize)

(defmacro bm-install-package-if-not-already (package)
  "Only install the package if it is not already installed."
  `(unless (package-installed-p ,package) (package-install ,package)))

(load-theme 'modus-vivendi t)
(add-to-list 'custom-theme-load-path "~/.config/bugmacs/themes")

;; Default emacs settings
; no startup message
(setq inhibit-startup-message t)

; no scroll bar
(scroll-bar-mode -1)

; no tool bar at the top
(tool-bar-mode -1)

; no tooltip popup
(tooltip-mode -1)

; no menu bar
(menu-bar-mode -1)

; auto revert mode
(global-auto-revert-mode 1)

; tabs
(tab-bar-mode 1)
(setq tab-bar-close-button-show nil
      tab-bar-new-button-show nil)

; disable manually customized variables from cluttering init file
(setq custom-file (locate-user-emacs-file "custom-vars.el"))
(load custom-file 'noerror 'nomessage)

;; Typed text replaces the selection if the selection is active,
;; pressing delete or backspace deletes the selection.
(delete-selection-mode)

;; move auto-backups to one place
(setq backup-directory-alist `(("." . "~/.saves/")))

(bm-install-package-if-not-already 'consult)
(bm-install-package-if-not-already 'vertico)
(bm-install-package-if-not-already 'savehist)
(bm-install-package-if-not-already 'marginalia)
(bm-install-package-if-not-already 'orderless)

(require 'vertico)
(vertico-mode)
(setq vertico-cycle t)

(require 'savehist)
(savehist-mode)

(require 'marginalia)
(with-eval-after-load 'vertico
  (marginalia-mode))

(require 'consult)
(setq completion-styles '(substring basic))
(global-set-key (kbd "C-s") 'consult-line)
(global-set-key (kbd "C-M-y") 'consult-yank-from-kill-ring)

(require 'orderless)
(setq completion-styles '(orderless basic)
      completion-category-overrides '((file (styles basic partial-completion))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;            END DEFAULTS            ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(bm-install-package-if-not-already 'nix-mode)
(bm-install-package-if-not-already 'clipetty)
(bm-install-package-if-not-already 'xclip)

(require 'nix-mode)
(with-eval-after-load 'nix-mode 
  (add-to-list 'auto-mode-alist '("\\.nix\\'" . nix-mode)))

(org-babel-do-load-languages 'org-babel-load-languages
                             (append org-babel-load-languages
                              '((sql         . t)
                                (shell       . t))))

(require 'ox-md)

(require 'clipetty)
(require 'xclip)
(xclip-mode 1)
(global-clipetty-mode)
(setq clipetty-tmux-ssh-tty "tmux show-environment SSH_TTY")
