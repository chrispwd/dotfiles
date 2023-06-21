;;; os-specific.el -*- lexical-binding: t; -*-

(straight-use-package 'exec-path-from-shell)
;(straight-use-package 'xclip)
(straight-use-package 'evil-terminal-cursor-changer)

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

;; (use-package xclip
;;   :if (memq window-system '(nil))
;;   :config
;;   (xclip-mode 1))

(use-package evil-terminal-cursor-changer
  :straight t
  :if (memq window-system '(nil))
  :config
  (evil-terminal-cursor-changer-activate))

(provide 'os-specific)
