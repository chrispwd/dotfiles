;;;; os-specific.el -*- lexical-binding: t; -*-

(cop-install-package-if-not-already 'exec-path-from-shell)
(cop-install-package-if-not-already 'clipetty)

;; MacOS stuff
(require 'exec-path-from-shell)
(require 'clipetty)
(when (memq window-system '(mac ns))
  ;; Sync shell exec path
  ;;(setq exec-path-from-shell-arguments '("))
  (dolist (var '("SSH_AUTH_SOCK" "SSH_AGENT_PID" "LANG"))
    (add-to-list 'exec-path-from-shell-variables var))
  (exec-path-from-shell-initialize)

  ;;use system clipboard for copying/pasting text
  (global-clipetty-mode 1)
  (setq clipetty-tmux-ssh-tty "tmux show-environment SSH_TTY"))

(provide 'os-specific)
