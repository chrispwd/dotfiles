;;; text-editing.el -*- lexical-binding: t; -*-

;;; TODO:: finish
(straight-use-package 'multiple-cursors)
(straight-use-package 'multiple-cursors)
(straight-use-package 'evil)
(straight-use-package 'evil-collection)

(use-package evil
  :straight t
  :init
  (setq evil-want-integration t)
  (setq evil-want-keybinding nil)
  (setq evil-want-C-u-scroll t)
  (setq evil-want-Y-yank-to-eol t)
  (setq evil-motion-state-cursor 'box)  ; █
  (setq evil-visual-state-cursor 'box)  ; █
  (setq evil-normal-state-cursor 'box)  ; █
  (setq evil-insert-state-cursor 'bar)  ; ⎸
  (setq evil-emacs-state-cursor  'hbar) ; _
  :config
  (evil-mode 1))
  ;; (define-key evil-normal-state-map (kbd "TAB") 'indent-for-tab-command)
  ;; (define-key evil-visual-state-map (kbd "TAB") 'indent-for-tab-command))

(use-package evil-collection
  :straight t
  :after evil
  :config
  (evil-collection-init))

(provide 'text-editing)
