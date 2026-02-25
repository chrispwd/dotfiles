;;; coding.el --- Configuration for code -*- lexical-binding: t; -*-
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

(provide 'coding)
;;; coding.el ends here
