;;; shell-term-config.el ---- config for shells/terminals -*- lexical-binding: t; -*-

(use-package coterm
  :ensure t
  :config
  ;; Enable coterm-mode globally
  (coterm-mode 1)
  
  ;; Optional: bind coterm-char-mode-cycle to C-; in comint
  (with-eval-after-load 'comint
    (define-key comint-mode-map (kbd "C-;") #'coterm-char-mode-cycle)))

(when (memq window-system '(mac ns x))
  (use-package multi-vterm
    :ensure t
    :config
    (with-eval-after-load 'vterm
      (define-key vterm-mode-map (kbd "C-c v r") #'multi-vterm-rename-buffer))))

(provide 'shell-term-config)
;;; shell-term-config.el ends here
