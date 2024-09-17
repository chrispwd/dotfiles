; coding.el -*- lexical-binding: t; -*-

;; Configuration for coding goes here. Language-specific settings,
;; syntax highlighting, LSP, etc.

;;; Dependencies
(cpwd/install-if-not 'rainbow-delimiters)
(cpwd/install-if-not 'emmet-mode)
(cpwd/install-if-not 'eglot)
(cpwd/install-if-not 'rust-mode)
(cpwd/install-if-not 'nix-mode)
(cpwd/install-if-not 'dockerfile-mode)
(cpwd/install-if-not 'toml-mode)
(cpwd/install-if-not 'magit)

(use-package magit
  :ensure t)

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

(use-package php-mode
  :ensure t)

(unless (version< emacs-version "29")
  
  (cpwd/install-if-not 'treesit-auto)
  
  (use-package treesit-auto
    :custom
    (treesit-auto-install 'prompt)
    :config
    (treesit-auto-add-to-auto-mode-alist 'all)
    (global-treesit-auto-mode))

  ;;(setq major-mode-remap-alist
        ;;'((yaml-mode       . yaml-ts-mode)
          ;;(toml-mode       . toml-ts-mode)
          ;;(rust-mode       . rust-ts-mode)
          ;;(c-mode          . c-ts-mode)
          ;;(c++-mode        . c++-ts-mode)
          ;;(c-or-c++-mode   . c-or-c++-ts-mode)
          ;;(go-mode         . go-ts-mode)
          ;;(javascript-mode . js-ts-mode)
          ;;(js-json-mode    . json-ts-mode)
          ;;(dockerfile-mode . dockerfile-ts-mode)
          ;;(css-mode        . css-ts-mode)
          ;;(python-mode     . python-ts-mode)
          ;;(gdscript-mode   . gdscript-ts-mode)))
;;
  ;;(use-package typescript-ts-mode
    ;;:config
    ;;(add-to-list 'auto-mode-alist '("\\.ts\\'" . typescript-ts-mode))
    ;;(add-to-list 'auto-mode-alist '("\\.tsx\\'" . tsx-ts-mode)))
 ;; 
  ;;(use-package yaml-ts-mode
    ;;:config
    ;;(add-to-list 'auto-mode-alist '("\\.ya?ml\\'" . yaml-ts-mode)))
  
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
;                    yaml-ts-mode-hook
                    css-ts-mode-hook
                    python-ts-mode-hook))
      (add-hook mode 'eglot-ensure)))

  ;;(with-eval-after-load 'treesit-auto
    ;;(setq treesit-language-source-alist
      ;;'((tsx        "https://github.com/tree-sitter/tree-sitter-typescript"
                    ;;"v0.20.3"
                    ;;"tsx/src")
        ;;(typescript "https://github.com/tree-sitter/tree-sitter-typescript"
                    ;;"v0.20.3"
                    ;;"typescript/src")
        ;;(javascript "https://github.com/tree-sitter/tree-sitter-javascript"
                    ;;"v0.20.1"
                    ;;"src")))
    )
  
(defun eglot-format-buffer-on-save ()
  (add-hook 'before-save-hook #'eglot-format-buffer -10 t))
(add-hook 'go-ts-mode-hook #'eglot-format-buffer-on-save)

(provide 'coding)
