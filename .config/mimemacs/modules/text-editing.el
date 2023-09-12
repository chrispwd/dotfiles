;;; text-editing.el -*- lexical-binding: t; -*-

;;; TODO:: finish setting up multiple-cursors
(cpwd/install-if-not 'multiple-cursors)
(cpwd/install-if-not 'avy)
(cpwd/install-if-not 'god-mode)

(use-package avy
  :ensure t
  :config
  (global-set-key (kbd "M-g c") 'avy-goto-char)
  (global-set-key (kbd "M-g t") 'avy-goto-char-2)
  (global-set-key (kbd "M-g l") 'avy-goto-line)
  (global-set-key (kbd "M-g w") 'avy-goto-word-1)
  (global-set-key (kbd "M-g e") 'avy-goto-word-0))

(use-package god-mode
  :ensure t
  :init
  (setq god-exempt-major-modes nil)
  (setq god-exempt-predicates nil)
  :config
  (global-set-key (kbd "<escape>") #'god-mode-all)
  (define-key god-local-mode-map (kbd ".") #'repeat)
  (god-mode))

(defun my-god-mode-update-cursor-type ()
  (setq cursor-type (if (or god-local-mode buffer-read-only) 'hbar 'box)))
(add-hook 'post-command-hook #'my-god-mode-update-cursor-type)

;; TODO:: configure `multiple-cursors

(provide 'text-editing)
