;;; shell-term-config.el ---- config for shells/terminals -*- lexical-binding: t; -*-

(use-package coterm
  :ensure t
  :config
  ;; Enable coterm-mode globally
  (coterm-mode 1)
  
  ;; Optional: bind coterm-char-mode-cycle to C-; in comint
  (with-eval-after-load 'comint
    (define-key comint-mode-map (kbd "C-;") #'coterm-char-mode-cycle)))

  (use-package multi-vterm
    :ensure t
    :bind (("C-c v v" . multi-vterm)
           ("C-c v p" . multi-vterm-project)
           ("C-x p t" . multi-vterm-project)
           :map vterm-mode-map
           ("C-c v r" . multi-vterm-rename-buffer)))
    ;; :config
    ;; (with-eval-after-load 'vterm
    ;;   (define-key vterm-mode-map (kbd "C-c v r") #'multi-vterm-rename-buffer))))

(provide 'shell-term-config)
;;; shell-term-config.el ends here
