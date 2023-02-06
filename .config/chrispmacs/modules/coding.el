;;; coding.el -*- lexical-binding: t; -*-

;; Configuration for coding goes here. Language-specific settings,
;; syntax highlighting, LSP, etc.

;;; Dependencies
(cop-install-package-if-not-already 'rainbow-delimiters)
(cop-install-package-if-not-already 'tree-sitter)
(cop-install-package-if-not-already 'tree-sitter-langs)
(cop-install-package-if-not-already 'rust-mode)
(cop-install-package-if-not-already 'vue-mode)
(cop-install-package-if-not-already 'typescript-mode)
(cop-install-package-if-not-already 'eglot)
(cop-install-package-if-not-already 'nix-mode)

;;; rainbow-delimiters - colors parens for visual aid
(require 'rainbow-delimiters)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

;;; Tree-sitter: smarter, structured syntax highlighting
(require 'tree-sitter)
(require 'tree-sitter-langs)
(global-tree-sitter-mode)
(add-hook 'tree-sitter-after-on-hook #'tree-sitter-hl-mode)

;;; Language modes
(with-eval-after-load 'tree-sitter
  (require 'rust-mode)
  (require 'vue-mode)
  (require 'typescript-mode)
  (require 'nix-mode)
  (define-derived-mode typescriptreact-mode typescript-mode
    "TypeScript TSX")
  (add-to-list 'auto-mode-alist '("\\.tsx?\\'" . typescriptreact-mode))
  (add-to-list 'tree-sitter-major-mode-language-alist '(typescriptreact-mode . tsx))
  (add-to-list 'auto-mode-alist '("\\.nix\\'" . nix-mode)))

;;; LSP
(require 'eglot)
(with-eval-after-load 'eglot
  (dolist (mode '(rust-mode-hook
                  vue-mode-hook
                  js-mode-hook
                  typescriptreact-mode-hook))
    (add-hook mode 'eglot-ensure))
  (add-to-list 'eglot-server-programs
               '((vue-mode . ("vls")))))

(provide 'coding)
