;;; terminals.el  -*- lexical-binding: t; -*-

;; Configuration for eshell, shell, term, vterm, etc.
(cpwd/install-if-not 'vterm)
(cpwd/install-if-not 'eat)

(use-package vterm
  :ensure t
  :hook
  (vterm-mode . (lambda () (display-line-numbers-mode 0)))
  :init
  (setq term-prompt-regexp "^[^#$%>\n]*[#$%>] *")
  (setq vterm-max-scrollback 20000))

(use-package eat
  :ensure t
  :init
  (setq eat-enable-directory-tracking t))

(provide 'terminals)
