;;; macos-config.el ---- MacOS-specific config -*- lexical-binding: t; -*-

(use-package exec-path-from-shell
  :if (eq system-type 'darwin)
  :ensure t
  :config
  (exec-path-from-shell-initialize))

(set-face-attribute 'default (selected-frame) :height 180)
;; macos visible-bell is insanely distracting
(setq visible-bell nil)

(provide 'macos-config)
;;; macos-config.el ends here
