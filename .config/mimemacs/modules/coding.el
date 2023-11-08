; coding.el -*- lexical-binding: t; -*-

;; Configuration for coding goes here. Language-specific settings,
;; syntax highlighting, LSP, etc.

;;; Dependencies
(cpwd/install-if-not 'rainbow-delimiters)
(cpwd/install-if-not 'emmet-mode)
(cpwd/install-if-not 'eglot)
(cpwd/install-if-not 'rust-mode)
;; (cpwd/install-if-not 'vue-mode)
;; (cpwd/install-if-not 'typescript-mode)
(cpwd/install-if-not 'nix-mode)
(cpwd/install-if-not 'dockerfile-mode)
(cpwd/install-if-not 'toml-mode)

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

(use-package eglot
  :ensure t)

(use-package rust-mode
  :ensure t)

(use-package nix-mode
  :ensure t)

(use-package dockerfile-mode
  :ensure t)

(use-package go-mode
  :ensure t)

(unless (version< emacs-version "29")
  
  (cpwd/install-if-not 'treesit-auto)
  
  (use-package treesit-auto
    :ensure t
    :init
    (setq treesit-auto-install 'prompt)
    :config
    (global-treesit-auto-mode))

  (setq major-mode-remap-alist
        '((yaml-mode       . yaml-ts-mode)
          (toml-mode       . toml-ts-mode)
          (rust-mode       . rust-ts-mode)
          (c-mode          . c-ts-mode)
          (c++-mode        . c++-ts-mode)
          (c-or-c++-mode   . c-or-c++-ts-mode)
          (go-mode         . go-ts-mode)
          (javascript-mode . js-ts-mode)
          (js-json-mode    . json-ts-mode)
          (dockerfile-mode . dockerfile-ts-mode)
          (css-mode        . css-ts-mode)
          (python-mode     . python-ts-mode)
          (gdscript-mode   . gdscript-ts-mode)))
  
  (with-eval-after-load 'eglot
    (dolist (mode '(rust-ts-mode-hook
                    js-ts-mode-hook
                    tsx-ts-mode-hook
                    typescript-ts-mode-hook
                    json-ts-mode-hook
                    c-ts-mode-hook
                    c++-ts-mode-hook
                    c-or-c++-ts-mode-hook
                    go-ts-mode-hook
                    yaml-ts-mode-hook
                    css-ts-mode-hook
                    python-ts-mode-hook))
      (add-hook mode 'eglot-ensure))))

(provide 'coding)
