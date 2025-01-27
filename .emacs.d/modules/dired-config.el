;;; dired-config.el -*- lexical-binding: t; -*-

(cpwd/install-if-not 'dired-quick-sort)

(use-package dired
  :config
  (defun cpwd/dired-mode-setup ()
    (dired-hide-details-mode 1)
    (cond ((eq system-type 'darwin)
           (setq dired-listing-switches "-ahlF"))
          ((eq system-type 'gnu/linux)
           (setq dired-listing-switches "-lAh --group-directories-first"))))
  (add-hook 'dired-mode-hook 'cpwd/dired-mode-setup))

(use-package dired-quick-sort
  :ensure t
  :init
  (setq dired-quick-sort-suppress-setup-warning t)
  :config
  (dired-quick-sort-setup))

(provide 'dired-config)
