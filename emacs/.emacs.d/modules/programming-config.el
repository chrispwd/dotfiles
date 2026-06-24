;;; programming-config.el --- Configuration for code -*- lexical-binding: t; -*-
;;
;;; Commentary: Configuration for code-related functionality
;;
;; Code:
;;
;;; RAINBOW-DELIMITERS - colors parens for visual aid
(use-package rainbow-delimiters
  :ensure t
  :hook
  (prog-mode . rainbow-delimiters-mode)
  :config
  (setq rainbow-delimiters-max-face-count 8))

;;; EMMET-MODE - helpful HTML templating
(use-package emmet-mode
  :ensure t
  :config
  (add-hook 'sgml-mode-hook 'emmet-mode)
  (add-hook 'css-mode-hook  'emmet-mode))

;;; RESTCLIENT - A lovely and highly flexible ReST client
(use-package restclient
  :ensure t
  :init
  (add-to-list 'auto-mode-alist '("\\.http\\'" . restclient-mode))
  :config
  (setq restclient-enable-eval t))

;;; CUSTOM CONFIG
(defun eglot-format-buffer-on-save ()
  "Format buffer according to linting rules of current LSP"
  (add-hook 'before-save-hook #'eglot-format-buffer -10 t))

(defun eglot-format-imports-on-save ()
  "Format import statements according to current LSP"
  (add-hook 'before-save-hook
            (lambda ()
              (call-interactively 'eglot-code-action-organize-imports))
            nil t))

;; Go formatting on save
(add-hook 'go-ts-mode-hook #'eglot-format-buffer-on-save)
(add-hook 'go-ts-mode-hook #'eglot-format-imports-on-save)

(use-package nix-ts-mode
  :ensure t
  :defer 't
  :mode "\\.nix\\'"
  :config
  (add-to-list 'treesit-language-source-alist
               '(nix "https://github.com/nix-community/tree-sitter-nix" "master" "src")))

(use-package indent-bars
  :ensure t
  :custom
  (indent-bars-treesit-support t)
  (indent-bars-treesit-wrap '((c argument_list parameter_list init_declarator parenthesized_expression)
                              (rust arguments parameters)
                              (toml table array comment)
                              (yaml comment)))
  :hook
  ((python-mode yaml-ts-mode go-ts-mode toml-ts-mode js-ts-mode typescript-ts-mode tsx-ts-mode php-ts-mode c-ts-mode c++-ts-mode) . indent-bars-mode))

(provide 'programming-config)
;;; coding.el ends here
