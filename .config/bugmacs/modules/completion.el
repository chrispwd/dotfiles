;;;; completion.el -*- lexical-binding: t; -*-

(straight-use-package 'vertico)
(straight-use-package 'consult)
(straight-use-package 'savehist)
(straight-use-package 'marginalia)
(straight-use-package 'orderless)
(straight-use-package 'corfu)
(straight-use-package 'corfu-terminal)

(use-package vertico
  :straight t
  :init
  (setq vertico-cycle t)
  :config
  (vertico-mode))

(use-package savehist
  :straight t
  :config
  (savehist-mode))

(use-package marginalia
  :straight t
  :after (vertico)
  :config
  (marginalia-mode))

;; (require 'marginalia)
;; (with-eval-after-load 'vertico
;;   (marginalia-mode))

(use-package consult
  :straight t
  :init
  (setq completion-styles '(substring basic))
  :bind
  (("C-s" . consult-line)                             
   ("C-M-y" . consult-yank-from-kill-ring)))

;; (require 'consult)
;; (setq completion-styles '(substring basic))
;; (global-set-key (kbd "C-s") 'consult-line)
;; (global-set-key (kbd "C-M-y") 'consult-yank-from-kill-ring)

(use-package orderless
  :straight t
  :init
  (setq completion-styles '(orderless basic)
        completion-category-overrides '((file (styles basic partial-completion)))))

(use-package corfu
  :straight t
  :init
  (setq completion-cycle-threshold 3)
  :config
  (global-corfu-mode)
  :bind
  (("TAB" . corfu-next)
   ("S-TAB" . corfu-previous)))

(use-package corfu-terminal
  :straight t
  :if (memq window-system '(nil))
  :config
  (corfu-terminal-mode +1))
;; (require 'orderless)
;; (setq completion-styles '(orderless basic)
;;       completion-category-overrides '((file (styles basic partial-completion))))

(provide 'completion)
