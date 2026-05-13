;;; macos-config.el ---- MacOS-specific config -*- lexical-binding: t; -*-

(use-package exec-path-from-shell
  :if (eq system-type 'darwin)
  :ensure t
  :config
  (setq exec-path-from-shell-arguments '("-l"))
  (dolist (var '("MY_MONO_FONT" "NOTES" "SYNC" "SCROTS" "DOCUMENTS" "DOWNLOADS" "DOTFILES" "DESKTOP" "LS_COLORS" "EDITOR" "ALTERNATE_EDITOR" "HISTFILE" "HISTCONTROL" "HISTSIZE" "SAVEHIST"))
    (add-to-list 'exec-path-from-shell-variables var))
  (exec-path-from-shell-initialize))

(set-face-attribute 'default nil :family (getenv "MY_MONO_FONT") :height 180)
;; macos visible-bell is insanely distracting
(setq visible-bell nil)

(provide 'macos-config)
;;; macos-config.el ends here
