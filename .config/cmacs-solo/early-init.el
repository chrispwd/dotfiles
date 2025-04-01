;;; early-init.el ---- Early init file -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

;; Startup hacks
(setq gc-cons-threshold most-positive-fixnum
      gc-cons-percentage 0.6
      vc-handled-backends '(Git))

;;; Emacs lisp source/compiled preference
;; Prefer loading newest compiled .el file
;;(customize-set-variable 'load-prefer-newer noninteractive)

;; Better Window Management handling
(setq frame-resize-pixelwise t
      frame-inhibit-implied-resize t
      frame-title-format '("Emacs"))

;; Make the initial buffer load faster by setting its mode to fundamental-mode
(customize-set-variable 'initial-major-mode 'fundamental-mode)

;; speed boost
(setq inhibit-compacting-font-caches t)

;; Disables unused UI Elements
(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(tooltip-mode -1)

(provide 'early-init)
;;; early-init.el ends here
