;;; tty-config.el --- config for tty/non-gui -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

;;; XCLIP - for use with system clipboard
(use-package xclip
    :ensure t
    :config (xclip-mode 1))

;;; TERM-KEYS - Helper for mapping key sequences for the terminal
(use-package term-keys
    :ensure t
    :config
    (term-keys-mode t))

;; activate mouse-based scrolling
(global-set-key (kbd "<mouse-4>") 'scroll-down-line)
(global-set-key (kbd "<mouse-5>") 'scroll-up-line)

(provide 'tty-config)
;;; tty-config.el ends here
