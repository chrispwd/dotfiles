;;; os-specific.el -*- lexical-binding: t; -*-

(straight-use-package 'exec-path-from-shell)

;;; MacOS Tweaks
(when (eq system-type 'darwin)
   (set-face-attribute 'default (selected-frame) :height 180))

(use-package exec-path-from-shell
             :if (memq window-system '(mac ns))
             :straight t
             :config
             (exec-path-from-shell-initialize))

(provide 'os-specific)
