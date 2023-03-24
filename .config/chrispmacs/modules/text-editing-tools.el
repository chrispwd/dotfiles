;;; text-editing-tools.el -*- lexical-binding: t; -*-

;; Dependencies
(cop-install-package-if-not-already 'multiple-cursors)
(cop-install-package-if-not-already 'xclip)
(cop-install-package-if-not-already 'clipetty)


;; Use system clipboard from within terminal/multiplexer
(require 'clipetty)
(require 'xclip)
(xclip-mode 1)
(global-clipetty-mode)
(setq clipetty-tmux-ssh-tty "tmux show-environment SSH_TTY")


;; multi-cursors
(require 'multiple-cursors)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-M->") 'mc/unmark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-M-<") 'mc/unmark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

(provide 'text-editing-tools)
