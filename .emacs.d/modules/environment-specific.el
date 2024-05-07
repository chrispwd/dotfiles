; environment-specific.el -*- lexical-binding: t; -*-

(cpwd/install-if-not 'exec-path-from-shell)
(cpwd/install-if-not 'clipetty)
(cpwd/install-if-not 'corfu-terminal)
(cpwd/install-if-not 'term-keys)
(cpwd/install-if-not 'xclip)

;; MacOS Tweaks
(when (eq system-type 'darwin)
  (set-face-attribute 'default (selected-frame) :height 180)
  (setq visible-bell nil))

(use-package exec-path-from-shell
  :if (eq system-type 'darwin)
  :ensure t
  :config
  (exec-path-from-shell-initialize))

(defun cpwd/terminal-settings ()
  "Settings that only apply to emacs when ran in a terminal window"
  ;; activate mouse-based scrolling
  (xterm-mouse-mode 1)
  (global-set-key (kbd "<mouse-4>") 'scroll-down-line)
  (global-set-key (kbd "<mouse-5>") 'scroll-up-line)
  ;; (use-package clipetty
  ;;   :ensure t
  ;;   :config (global-clipetty-mode))
  (use-package xclip
    :ensure t
    :config (xclip-mode 1))
  (use-package corfu-terminal
    :ensure t
    :config
    (corfu-terminal-mode +1))
  (use-package term-keys
    :ensure t
    :config
    (term-keys-mode t)))

(defun cpwd/gui-settings ()
  "Settings that only apply to emacs when ran in a full GUI frame"
  (scroll-bar-mode -1))

;; Run if GUI on startup
(when (display-graphic-p)
  (cpwd/gui-settings))

;; Hook ran when a GUI frame is spawned
(add-hook 'after-make-frame-functions
          (lambda (frame)
            (with-selected-frame frame
              (cpwd/gui-settings))))

;; Hook ran when a new tty terminal is spawned
(add-hook 'tty-setup-hook #'cpwd/terminal-settings)

(provide 'environment-specific)
