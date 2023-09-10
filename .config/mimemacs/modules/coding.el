; coding.el -*- lexical-binding: t; -*-

;; Configuration for coding goes here. Language-specific settings,
;; syntax highlighting, LSP, etc.

;;; Dependencies
(cpwd/install-if-not 'rainbow-delimiters)
;; (cpwd/install-if-not 'rust-mode)
;; (cpwd/install-if-not 'vue-mode)
;; (cpwd/install-if-not 'typescript-mode)
;; (cpwd/install-if-not 'nix-mode)
(cpwd/install-if-not 'emmet-mode)

;;; rainbow-delimiters - colors parens for visual aid
(use-package rainbow-delimiters
  :ensure t
  :hook
  (prog-mode . rainbow-delimiters-mode))

(use-package emmet-mode
  :ensure t
  :config
  (add-hook 'sgml-mode-hook 'emmet-mode)
  (add-hook 'css-mode-hook  'emmet-mode))

(provide 'coding)
