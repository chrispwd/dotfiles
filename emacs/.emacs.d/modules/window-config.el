;;; window-config.el -*- lexical-binding: t; -*-

(use-package popper
  :ensure t
  :bind (("C-`"   . popper-toggle)
         ("M-~"   . popper-cycle)
         ("C-M-`" . popper-toggle-type))
  :init
  (setq popper-reference-buffers
        '("\\*Messages\\*"
          "Output\\*$"
          "\\*Async Shell Command\\*"
          "\\*Org Agenda\\*"
          help-mode
          compilation-mode
          "^\\*eshell.*\\*$" eshell-mode
          "^\\*shell.*\\*$"  shell-mode
          "^\\*term.*\\*$"   term-mode
          "^\\*vterm.*\\*$"  vterm-mode))
  (setq popper-group-function #'popper-group-by-directory)
  (setq popper-window-height 0.45)
  (popper-mode +1)
  (popper-echo-mode +1))

(provide 'window-config)
