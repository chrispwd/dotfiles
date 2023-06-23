;;; coding.el -*- lexical-binding: t; -*-

;; Configuration for coding goes here. Language-specific settings,
;; syntax highlighting, LSP, etc.

;;; Dependencies
(straight-use-package 'rainbow-delimiters)
(straight-use-package 'tree-sitter)
(straight-use-package 'tree-sitter-langs)
(straight-use-package 'rust-mode)
(straight-use-package 'vue-mode)
(straight-use-package 'typescript-mode)
(straight-use-package 'eglot)
(straight-use-package 'nix-mode)

;;; rainbow-delimiters - colors parens for visual aid
(use-package rainbow-delimiters
  :straight t
  :hook
  (prog-mode . rainbow-delimiters-mode))

;;; Tree-sitter: smarter, structured syntax highlighting
(use-package tree-sitter
  :straight t
  :hook
  (tree-sitter-after-on-hook . tree-sitter-hl-mode)
  :config
  (global-tree-sitter-mode)
  (set-face-attribute 'tree-sitter-hl-face:function.call nil
                      :weight 'normal)
  (set-face-attribute 'tree-sitter-hl-face:property nil
                      :weight 'normal
                      :slant 'normal))
(use-package tree-sitter-langs
  :straight t
  :after (tree-sitter))

;;; Language modes
(use-package rust-mode
  :straight t
  :after (tree-sitter tree-sitter-langs)
  :mode "\\.rs\\'")
(use-package vue-mode
  :straight t
  :after (tree-sitter tree-sitter-langs)
  :mode "\\.vue\\'")
(use-package nix-mode
  :straight t
  :after (tree-sitter tree-sitter-langs)
  :mode "\\.nix\\'")
(use-package typescript-mode
  :straight t
  :after (tree-sitter tree-sitter-langs)
  :mode "\\.tsx?\\'")

;; (with-eval-after-load 'tree-sitter
;;   (require 'typescript-mode)
;;   (define-derived-mode typescriptreact-mode typescript-mode
;;     "TypeScript TSX")
;;   (add-to-list 'auto-mode-alist '("\\.tsx?\\'" . typescriptreact-mode))
;;   (add-to-list 'tree-sitter-major-mode-language-alist '(typescriptreact-mode . tsx))
;;   (add-to-list 'auto-mode-alist '("\\.nix\\'" . nix-mode)))

;;; LSP
(use-package eglot
  :straight t
  :hook
  ((rust-mode       . eglot-ensure)
   (vue-mode        . eglot-ensure)
   (js-mode         . eglot-ensure)
   (typescript-mode . eglot-ensure))
  :config
  (add-to-list 'eglot-server-programs
               '((vue-mode . ("vls")))))

(provide 'coding)
