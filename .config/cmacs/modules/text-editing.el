;;; text-editing.el -*- lexical-binding: t; -*-

;;; TODO:: finish setting up multiple-cursors
(cpwd/install-if-not 'multiple-cursors)
(cpwd/install-if-not 'avy)
(cpwd/install-if-not 'evil)
(cpwd/install-if-not 'evil-collection)

(use-package avy
  :ensure t
  :config
  (global-set-key (kbd "M-g c") 'avy-goto-char)
  (global-set-key (kbd "M-g t") 'avy-goto-char-2)
  (global-set-key (kbd "M-g l") 'avy-goto-line)
  (global-set-key (kbd "M-g w") 'avy-goto-word-1)
  (global-set-key (kbd "M-g e") 'avy-goto-word-0))

(use-package evil
  :ensure t
  :init
  (setq evil-want-integration t)
  (setq evil-want-keybinding nil)
  (setq evil-want-C-u-scroll t)
  (setq evil-want-Y-yank-to-eol t)
  (setq evil-motion-state-cursor 'box)  ; █
  (setq evil-visual-state-cursor 'box)  ; █
  (setq evil-normal-state-cursor 'box)  ; █
  ;; (setq evil-insert-state-cursor 'bar)  ; ⎸
  (setq evil-insert-state-cursor 'hbar) ; _
  (setq evil-emacs-state-cursor  'hbar) ; _
  :config
  (evil-mode 1)
  (evil-set-leader 'normal (kbd "SPC")))

(use-package evil-collection
  :ensure t
  :after evil
  :config
  (evil-collection-init))

(provide 'text-editing)
