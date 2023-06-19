;;; Bugmacs: for bugtesting
;;         __         _                        ____  ___
;;   _____/ /_  _____(_)________ _      ______/ /  |/  /___ ___________
;;  / ___/ __ \/ ___/ / ___/ __ \ | /| / / __  / /|_/ / __ `/ ___/ ___/
;; / /__/ / / / /  / (__  ) /_/ / |/ |/ / /_/ / /  / / /_/ / /__(__  )
;; \___/_/ /_/_/  /_/____/ .___/|__/|__/\__,_/_/  /_/\__,_/\___/____/
;;                      /_/
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;            BEGIN DEFAULTS          ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (require 'package)
;; (when (version< emacs-version "28")
;;   (add-to-list 'package-archives '("nongnu" . "https://elpa.nongnu.org/nongnu/")))
;; (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
;; (add-to-list 'package-archives '("stable" . "https://stable.melpa.org/packages/"))

;; (defun bm-package-initialize ()
;;   (package-initialize)
;;   (unless package-archive-contents
;;     (package-refresh-contents)))

;; (bm-package-initialize)

;; (defmacro bm-install-package-if-not-already (package)
;;   "Only install the package if it is not already installed."
;;   `(unless (package-installed-p ,package) (package-install ,package)))

(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 6))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(straight-use-package 'use-package)

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

(straight-use-package 'consult)
(straight-use-package 'vertico)
(straight-use-package 'savehist)
(straight-use-package 'marginalia)
(straight-use-package 'orderless)

(use-package vertico
             :straight t
             :init
             (setq vertico-cycle t)
             :config
             (vertico-mode))

(use-package savehist
             :straight t
             :config
             (savehist-mode))

(use-package marginalia
             :straight t
             :after (vertico)
             :config
             (marginalia-mode))

;; (require 'marginalia)
;; (with-eval-after-load 'vertico
;;   (marginalia-mode))

(use-package consult
             :straight t
             :init
             (setq completion-styles '(substring basic))
             :bind
             (("C-s" . consult-line)                             
              ("C-M-y" . consult-yank-from-kill-ring)))

;; (require 'consult)
;; (setq completion-styles '(substring basic))
;; (global-set-key (kbd "C-s") 'consult-line)
;; (global-set-key (kbd "C-M-y") 'consult-yank-from-kill-ring)

(use-package orderless
             :straight t
             :init
             (setq completion-styles '(orderless basic)
                   completion-category-overrides '((file (styles basic partial-completion)))))

;; (require 'orderless)
;; (setq completion-styles '(orderless basic)
;;       completion-category-overrides '((file (styles basic partial-completion))))

(use-package evil
             :straight t
             :init
             (setq evil-want-C-u-scroll t)
             (setq evil-want-Y-yank-to-eol t)
             (setq evil-normal-state-cursor '(box)
                   evil-insert-state-cursor '(bar)
                   evil-visual-state-cursor '(hollow))
             :config
             (evil-mode 1))

;; Add the modules folder to the load path
(add-to-list 'load-path (expand-file-name "modules/" user-emacs-directory))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;            END DEFAULTS            ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'coding)
(require 'look-and-feel)
(require 'os-specific)
;; (bm-install-package-if-not-already 'nix-mode)
;; ;(bm-install-package-if-not-already 'clipetty)
;; (bm-install-package-if-not-already 'xclip)
;; (bm-install-package-if-not-already 'evil)

;; (require 'nix-mode)
;; (with-eval-after-load 'nix-mode 
;;   (add-to-list 'auto-mode-alist '("\\.nix\\'" . nix-mode)))

;; (org-babel-do-load-languages 'org-babel-load-languages
;;                              (append org-babel-load-languages
;;                               '((sql         . t)
;;                                 (shell       . t))))

;; (require 'ox-md)

;; ;(require 'clipetty)
;; (require 'xclip)
;; (xclip-mode 1)
;(global-clipetty-mode)
;(setq clipetty-tmux-ssh-tty "tmux show-environment SSH_TTY")

;; (setq evil-want-C-u-scroll t)
;; (setq evil-want-Y-yank-to-eol t)
;; (setq evil-normal-state-cursor '(box)
;;       evil-insert-state-cursor '(bar)
;;       evil-visual-state-cursor '(hollow))
;; (require 'evil)
;; (evil-mode 1)

