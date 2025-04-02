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
;;
;; (cpwd/install-if-not 'use-package)

;; Add the modules folder to the load path
(add-to-list 'load-path (expand-file-name "modules/" user-emacs-directory))

;; initialize package system
(require 'package-system)
(cpwd/package-initialize)

;;; MODULES
(require 'default-config)
;; (require 'dired-config)
(require 'completion)
(when (eq system-type 'darwin)
  (require 'macos-config))
;; (require 'environment-specific)
;; (require 'text-editing)
;; (require 'note-taking)
(require 'org-config)
;; (require 'look-and-feel)
(require 'coding)
(require 'tty-config)
;; (require 'window-management)
;;; init.el ends here
