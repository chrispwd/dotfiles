;;; tty-config.el --- config for tty/non-gui -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

(defun cpwd/tty-settings ()
  "Settings that only apply to Emacs when ran in a terminal window"
  ;; activate mouse-based scrolling
  (xterm-mouse-mode 1)
  (global-set-key (kbd "<mouse-4>") 'scroll-down-line)
  (global-set-key (kbd "<mouse-5>") 'scroll-up-line)
  (use-package xclip
    :ensure t
    :config (xclip-mode 1))
  (use-package term-keys
    :ensure t
    :config
    (term-keys-mode t)))

;; Hook ran when a new tty terminal is spawned
(add-hook 'tty-setup-hook #'cpwd/tty-settings)

;; Hook ran when a new tty terminal is spawned
(add-hook 'tty-setup-hook #'cpwd/tty-settings)

(provide 'tty-config)
;;; tty-config.el ends here
