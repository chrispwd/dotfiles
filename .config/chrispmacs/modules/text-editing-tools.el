;;; text-editing-tools.el -*- lexical-binding: t; -*-

;; Dependencies
(cop-install-package-if-not-already 'multiple-cursors)
(cop-install-package-if-not-already 'xclip)


;; Use system clipboard from within terminal/multiplexer
(require 'xclip)
(xclip-mode 1)

;; multi-cursors
(require 'multiple-cursors)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-M->") 'mc/unmark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-M-<") 'mc/unmark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

(provide 'text-editing-tools)
