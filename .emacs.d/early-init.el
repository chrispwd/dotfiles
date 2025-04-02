;;; early-init.el -*- lexical-binding: t; -*-

;;; Garbage collection
;; Increase the GC threshold for faster startup
;; The default is 800 kilobytes.  Measured in bytes.
(setq gc-cons-threshold (* 50 1000 1000))

;;; Emacs lisp source/compiled preference
;; Prefer loading newest compiled .el file
;;(customize-set-variable 'load-prefer-newer noninteractive)

;; Make the initial buffer load faster by setting its mode to fundamental-mode
(customize-set-variable 'initial-major-mode 'fundamental-mode)

;; speed boost
(setq inhibit-compacting-font-caches t)

;; Disables unused UI Elements
(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(tooltip-mode -1)

;;; Package system
;; Load the package-system. 
;; (defvar bootstrap-directory (expand-file-name "bootstrap/" user-emacs-directory)
;;   "Package system bootstrap configuration.")

;; (load (expand-file-name "package-system.el" bootstrap-directory))
;;; early-init.el ends here
