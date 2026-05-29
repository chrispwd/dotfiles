;;; init.el --- init for cmacs -*- lexical-binding: t; -*-
;;; Commentary:
;;
;:'######::'##::::'##::::'###:::::'######:::'######::
;'##... ##: ###::'###:::'## ##:::'##... ##:'##... ##:
; ##:::..:: ####'####::'##:. ##:: ##:::..:: ##:::..::
; ##::::::: ## ### ##:'##:::. ##: ##:::::::. ######::
; ##::::::: ##. #: ##: #########: ##::::::::..... ##:
; ##::: ##: ##:.:: ##: ##.... ##: ##::: ##:'##::: ##:
;. ######:: ##:::: ##: ##:::: ##:. ######::. ######::
;:......:::..:::::..::..:::::..:::......::::......:::
;;                               chrispwd's Emacs :^)
;;
;; "Inspired" (mostly stolen) from the wonderful project `emacs-solo'
;; https://github.com/LionyxML/emacs-solo
;;
;;; Code:

;; Add the modules folder to the load path
(add-to-list 'load-path (expand-file-name "modules/" user-emacs-directory))

;; initialize package system
(require 'package-system)
(cpwd/package-initialize)

;;; MODULES
(when (eq system-type 'darwin)
  (require 'macos-config))
(require 'default-config)
(require 'shell-term-config)
(require 'completion)
(require 'style-config)
(require 'org-config)
(require 'programming-config)
(require 'navigation)
(require 'window-config)
(when (not (display-graphic-p))
  (require 'tty-config))
;;; init.el ends here
