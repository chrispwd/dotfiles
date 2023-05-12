;;; text-editing-tools.el -*- lexical-binding: t; -*-

;; Dependencies
(cop-install-package-if-not-already 'multiple-cursors)
(cop-install-package-if-not-already 'multiple-cursors)
(cop-install-package-if-not-already 'xclip)
(cop-install-package-if-not-already 'evil)
(cop-install-package-if-not-already 'evil-terminal-cursor-changer)

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

(setq evil-want-C-u-scroll t)
(setq evil-want-Y-yank-to-eol t)
(setq evil-motion-state-cursor 'box)  ; █
(setq evil-visual-state-cursor 'box)  ; █
(setq evil-normal-state-cursor 'box)  ; █
(setq evil-insert-state-cursor 'bar)  ; ⎸
(setq evil-emacs-state-cursor  'hbar) ; _
(require 'evil)
(unless (display-graphic-p)
  (require 'evil-terminal-cursor-changer)
  (evil-terminal-cursor-changer-activate))
(evil-mode 1)
(define-key evil-normal-state-map (kbd "TAB") 'indent-for-tab-command)
(define-key evil-visual-state-map (kbd "TAB") 'indent-for-tab-command)

(provide 'text-editing-tools)
