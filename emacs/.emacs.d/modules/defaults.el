;;; defaults.el -*- lexical-binding: t; -*-

;; Default emacs settings
; no startup message
(setq inhibit-startup-message t)

;; no menu bar or tooltip
(menu-bar-mode -1)
;(scroll-bar-mode -1)
;(tool-bar-mode -1)
(tooltip-mode -1)

;; quick jump to recent files in recentf buffer
(recentf-mode 1)

;; typed M-x command history
(setq history-length 25)
(savehist-mode 1)

;; disable manually customized variables from cluttering init file
(setq custom-file (locate-user-emacs-file "custom-vars.el"))
(load custom-file 'noerror 'nomessage)

;; line and character numbers
(column-number-mode)
(global-hl-line-mode 1)

;; Highlight column 80
(add-hook 'prog-mode-hook #'display-fill-column-indicator-mode)
(setq-default display-fill-column-indicator-column 80)

;; Don't display line numbers on the side
;(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode 0)

;; Typed text replaces the selection if the selection is active,
;; pressing delete or backspace deletes the selection.
(delete-selection-mode)

;; spaces instead of tabs
(setq-default indent-tabs-mode nil)

;; if the buffer needs tabs, use a width of 4
(setq-default tab-width 4)

;; auto-revert dired and other buffers
(setq global-auto-revert-non-file-buffers t)

;; auto-revert file buffers on changes from elsewhere
(global-auto-revert-mode 1)

;; move auto-backups to one place
(setq backup-directory-alist `(("." . "~/.saves/")))

;; tab-bar-mode by default
(tab-bar-mode 1)
(setq tab-bar-close-button-show nil
      tab-bar-new-button-show nil)
(let ((map global-map))
  (define-key map (kbd "C-c f") #'tab-next)
  (define-key map (kbd "C-<backtab>") #'tab-previous)
  (define-key map (kbd "C-c b") #'tab-previous))

(provide 'defaults)
;;; defaults.el ends here
