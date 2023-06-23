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

;; ensure only straight.el is being used
(setq package-enable-at-startup nil)
