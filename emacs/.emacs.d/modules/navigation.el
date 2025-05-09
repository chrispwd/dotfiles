;;; navigation.el --- Jump, filter, and move around -*- lexical-binding: t; -*-
;;
;;; Commentary:
;;     This module is for all functionality related to navigation -- whether
;;     that be jumping around a buffer, presenting action menus, or filtering
;;     selections. There are many really cool packages out there I want to try
;;     and this module will be the place to do so
;;
;;; Code:

;;; AVY - Gather, filter, choose
(use-package avy
  :ensure t
  :config
  (global-set-key (kbd "M-g c") 'avy-goto-char)
  (global-set-key (kbd "M-g t") 'avy-goto-char-2)
  (global-set-key (kbd "M-g l") 'avy-goto-line)
  (global-set-key (kbd "M-g w") 'avy-goto-word-1)
  (global-set-key (kbd "M-g e") 'avy-goto-word-0))

(provide 'navigation)
;;; navigation.el ends here
