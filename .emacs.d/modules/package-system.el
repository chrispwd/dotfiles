;;; package-system.el --- Packaging setup -*- lexical-binding: t; -*-

;;; do package stuff
(require 'package)

;; Initialize package repos
;; Emacs 27.x has gnu elpa as the default
;; Emacs 28.x adds the nongnu elpa to the list by default, so only
;; need to add nongnu when this isn't Emacs 28+
(when (version< emacs-version "28")
  (add-to-list 'package-archives '("nongnu" . "https://elpa.nongnu.org/nongnu/")))
(add-to-list 'package-archives '("stable" . "https://stable.melpa.org/packages/"))
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("cselpa" . "https://elpa.thecybershadow.net/packages/"))
(customize-set-variable 'package-archive-priorities
                        '(("gnu"    . 99)   ; prefer GNU packages
                          ("nongnu" . 80)   ; use non-gnu packages if
                                            ; not found in GNU elpa
                          ("stable" . 70)   ; prefer "released" versions
                                            ; from melpa
                          ("melpa"  . 50)   ; if all else fails, get it
                          ("cselpa" . 0)))  ; from melpa (Or this random guy's repo
(customize-set-variable 'package-user-dir
                        (expand-file-name "elpa/" user-emacs-directory))

(defmacro cpwd/install-if-not (package)
  "Only install PACKAGE if it is not already installed."
  `(unless (package-installed-p ,package) (package-install ,package)))

(defun cpwd/package-initialize ()
  "Refresh package archive if not already cached."
  (package-initialize)
  (unless package-archive-contents
    (package-refresh-contents)))

(provide 'package-system)
;;; package-system.el ends here
