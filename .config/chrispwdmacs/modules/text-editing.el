;;; text-editing.el -*- lexical-binding: t; -*-

;;; TODO:: finish setting up multiple-cursors
(straight-use-package 'multiple-cursors)
(straight-use-package 'god-mode)
(straight-use-package 'avy)
;; (straight-use-package 'evil)
;; (straight-use-package 'evil-collection)

;; (use-package evil
;;   :straight t
;;   :init
;;   (setq evil-want-integration t)
;;   (setq evil-want-keybinding nil)
;;   (setq evil-want-C-u-scroll t)
;;   (setq evil-want-Y-yank-to-eol t)
;;   (setq evil-motion-state-cursor 'box)  ; █
;;   (setq evil-visual-state-cursor 'box)  ; █
;;   (setq evil-normal-state-cursor 'box)  ; █
;;   (setq evil-insert-state-cursor 'bar)  ; ⎸
;;   (setq evil-emacs-state-cursor  'hbar) ; _
;;   :config
;;   (evil-mode 1))
;;   ;; (define-key evil-normal-state-map (kbd "TAB") 'indent-for-tab-command)
;;   ;; (define-key evil-visual-state-map (kbd "TAB") 'indent-for-tab-command))

;; (use-package evil-collection
;;   :straight t
;;   :after evil
;;   :config
;;   (evil-collection-init))

(use-package god-mode
  :straight t
  :config
  (global-set-key (kbd "<escape>") #'god-mode-all)
  (define-key god-local-mode-map (kbd "i") #'god-local-mode)
  (define-key god-local-mode-map (kbd ".") #'repeat)
  (defun my-god-mode-update-cursor-type ()
    (setq cursor-type (if (or god-local-mode buffer-read-only) 'box 'hbar)))
  (add-hook 'post-command-hook #'my-god-mode-update-cursor-type)
  (god-mode))

(use-package avy
  :straight t
  :config
  (global-set-key (kbd "C-:") 'avy-goto-char)
  (global-set-key (kbd "C-'") 'avy-goto-char-2)
  (global-set-key (kbd "M-g l") 'avy-goto-line)
  (global-set-key (kbd "M-g w") 'avy-goto-word-1)
  (global-set-key (kbd "M-g e") 'avy-goto-word-0))

(provide 'text-editing)
