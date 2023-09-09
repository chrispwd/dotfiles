; os-specific.el -*- lexical-binding: t; -*-

(cpwd/install-if-not 'exec-path-from-shell)
;(cpwd/install-if-not 'xclip)
(cpwd/install-if-not 'evil-terminal-cursor-changer)
(cpwd/install-if-not 'clipetty)

;; MacOS Tweaks
(when (eq system-type 'darwin)
  (set-face-attribute 'default (selected-frame) :height 180)
  (setq visible-bell nil))

(use-package exec-path-from-shell
             :if (eq system-type 'darwin)
             :ensure t
             :config
             (exec-path-from-shell-initialize))

;; Terminal-only settings
(unless (display-graphic-p)
  ;; activate mouse-based scrolling
  (xterm-mouse-mode 1)
  (global-set-key (kbd "<mouse-4>") 'scroll-down-line)
  (global-set-key (kbd "<mouse-5>") 'scroll-up-line)

  (use-package clipetty
    :ensure t
    :hook (after-init . global-clipetty-mode)))
;(use-package xclip
;  :if (memq window-system '(nil))
;  :config
;  (xclip-mode 1))

(use-package evil-terminal-cursor-changer
  :ensure t
  :if (not (display-graphic-p))
  :config
  (evil-terminal-cursor-changer-activate))

(provide 'os-specific)
