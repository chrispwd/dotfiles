;;; coding.el -*- lexical-binding: t; -*-

;; Configuration for coding goes here. Language-specific settings,
;; syntax highlighting, LSP, etc.

;;; Dependencies
(cpwd/install-if-not 'rainbow-delimiters)
(cpwd/install-if-not 'rust-mode)
(cpwd/install-if-not 'vue-mode)
(cpwd/install-if-not 'typescript-mode)
(cpwd/install-if-not 'nix-mode)
(cpwd/install-if-not 'emmet-mode)

;;; rainbow-delimiters - colors parens for visual aid
(use-package rainbow-delimiters
  :ensure t
  :hook
  (prog-mode . rainbow-delimiters-mode))

;;; Tree-sitter: smarter, structured syntax highlighting
(use-package tree-sitter
  :ensure t
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
  :ensure t
  :after (tree-sitter))

;;; Language modes
(use-package rust-mode
  :ensure t
  :after (tree-sitter tree-sitter-langs)
  :mode "\\.rs\\'")
(use-package vue-mode
  :ensure t
  :after (tree-sitter tree-sitter-langs)
  :mode "\\.vue\\'")
(use-package nix-mode
  :ensure t
  :after (tree-sitter tree-sitter-langs)
  :mode "\\.nix\\'")
(use-package typescript-mode
  :ensure t
  :after (tree-sitter tree-sitter-langs)
  :mode "\\.tsx?\\'")

;;; LSP
(use-package eglot
  :ensure t
  :hook
  ((rust-mode       . eglot-ensure)
   (vue-mode        . eglot-ensure)
   (js-mode         . eglot-ensure)
   (typescript-mode . eglot-ensure))
  :config
  (add-to-list 'eglot-server-programs
               '((vue-mode . ("vls")))))

(use-package emmet-mode
  :ensure t
  :config
  (add-hook 'sgml-mode-hook 'emmet-mode)
  (add-hook 'css-mode-hook  'emmet-mode))

(provide 'coding)
