;;; terminals.el  -*- lexical-binding: t; -*-

;; Configuration for eshell, shell, term, vterm, etc.
(straight-use-package 'vterm)

(unless (memq window-system '(nil))
  (use-package vterm
    :straight t
    :hook
    (vterm-mode . (lambda () (display-line-numbers-mode 0)))
    :init
    (setq term-prompt-regexp "^[^#$%>\n]*[#$%>] *")
    (setq vterm-max-scrollback 20000)))

(provide 'terminals)
