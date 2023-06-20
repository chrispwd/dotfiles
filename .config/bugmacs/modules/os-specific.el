;;; os-specific.el -*- lexical-binding: t; -*-

(straight-use-package 'exec-path-from-shell)

;;; MacOS Tweaks
(when (eq system-type 'darwin)
  (set-face-attribute 'default (selected-frame) :height 180)
  (setq visible-bell nil))

(use-package exec-path-from-shell
             :if (memq window-system '(mac ns))
             :straight t
             :config
             (exec-path-from-shell-initialize))

;;; GUI-only settings
(unless (memq window-system '(nil))
  (scroll-bar-mode -1)
  (tool-bar-mode -1)
  (tooltip-mode -1))

;; Terminal-only settings
(unless (display-graphic-p)
  ;; activate mouse-based scrolling
  (xterm-mouse-mode 1)
  (global-set-key (kbd "<mouse-4>") 'scroll-down-line)
  (global-set-key (kbd "<mouse-5>") 'scroll-up-line))

(provide 'os-specific)
