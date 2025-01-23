;;; text-editing.el -*- lexical-binding: t; -*-

;;; TODO:: finish
;; (straight-use-package 'multiple-cursors)
(straight-use-package 'evil)
(straight-use-package 'evil-collection)
;; (straight-use-package 'god-mode)
(straight-use-package 'avy)
(straight-use-package 'evil-terminal-cursor-changer)

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
  ;(setq evil-insert-state-cursor 'hbar) ; _
  (setq evil-emacs-state-cursor  'hbar) ; _
  (setq evil-undo-system 'undo-redo)
  :config
  (evil-mode 1)
  (evil-set-leader 'normal (kbd "SPC"))
  (evil-define-key
    '(normal insert visual replace operator motion emacs)
    'global
    (kbd "C-n") nil)
  (evil-define-key
    '(normal insert visual replace operator motion emacs)
    'global
    (kbd "C-p") nil))

(use-package evil-collection
  :straight t
  :after evil
  :config
  (evil-collection-init))

(unless (display-graphic-p)
  (use-package evil-terminal-cursor-changer
    :straight t
    :config
    (evil-terminal-cursor-changer-activate)))

;; (use-package god-mode
;;   :straight t
;;   :config
;;   (global-set-key (kbd "<escape>") #'god-mode-all)
;;   (god-mode))

(use-package avy
  :straight t
  :config
  (global-set-key (kbd "C-:") 'avy-goto-char)
  (global-set-key (kbd "C-'") 'avy-goto-char-2)
  (global-set-key (kbd "M-g l") 'avy-goto-line)
  (global-set-key (kbd "M-g w") 'avy-goto-word-1)
  (global-set-key (kbd "M-g e") 'avy-goto-word-0))

(provide 'text-editing)
