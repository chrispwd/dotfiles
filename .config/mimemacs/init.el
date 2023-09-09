; init.el -*- lexical-binding: t; -*-
; MIMEmacs Is My Emacs

;; initialize package system
(require 'package-system)
(cpwd/package-initialize)
(cpwd/install-if-not 'use-package)

;; Add the modules folder to the load path
(add-to-list 'load-path (expand-file-name "modules/" user-emacs-directory))

(require 'defaults)
(require 'completion)
(require 'os-specific)
;(require 'text-editing)
;(require 'note-taking)
(require 'org-settings)
(require 'look-and-feel)
;(require 'coding)
;(require 'terminals)

;; Module interoperability
(defun cpwd/configure-org-faces ()
  (with-eval-after-load 'org-faces
    (set-face-attribute 'org-block nil    :foreground nil :inherit 'fixed-pitch)
    (set-face-attribute 'org-table nil    :inherit 'fixed-pitch)
    (set-face-attribute 'org-formula nil  :inherit 'fixed-pitch)
    (set-face-attribute 'org-code nil     :inherit '(shadow fixed-pitch))
    (set-face-attribute 'org-table nil    :inherit '(shadow fixed-pitch))
    (set-face-attribute 'org-verbatim nil :inherit '(shadow fixed-pitch))
    (set-face-attribute 'org-special-keyword nil :inherit '(font-lock-comment-face fixed-pitch))
    (set-face-attribute 'org-meta-line nil :inherit '(font-lock-comment-face fixed-pitch))
    (set-face-attribute 'org-checkbox nil  :inherit 'fixed-pitch)
    (set-face-attribute 'line-number nil :inherit 'fixed-pitch)
    (set-face-attribute 'line-number-current-line nil :inherit 'fixed-pitch)))

(add-hook 'ef-themes-post-load-hook 'cpwd/configure-org-faces)

;; startup time / message
(add-hook 'emacs-startup-hook
          (lambda ()
            (message "MIMEmacs loaded in %s."
                     (emacs-init-time))))
