; init.el -*- lexical-binding: t; -*-
;:'######::'##::::'##::::'###:::::'######:::'######::
;'##... ##: ###::'###:::'## ##:::'##... ##:'##... ##:
; ##:::..:: ####'####::'##:. ##:: ##:::..:: ##:::..::
; ##::::::: ## ### ##:'##:::. ##: ##:::::::. ######::
; ##::::::: ##. #: ##: #########: ##::::::::..... ##:
; ##::: ##: ##:.:: ##: ##.... ##: ##::: ##:'##::: ##:
;. ######:: ##:::: ##: ##:::: ##:. ######::. ######::
;:......:::..:::::..::..:::::..:::......::::......:::
                              ; chrispwd's emacs :^)

;; initialize package system
(require 'package-system)
(cpwd/package-initialize)
(cpwd/install-if-not 'use-package)

;; Add the modules folder to the load path
(add-to-list 'load-path (expand-file-name "modules/" user-emacs-directory))

(require 'defaults)
(require 'dired-config)
(require 'completion)
(require 'environment-specific)
(require 'text-editing)
(require 'note-taking)
(require 'org-settings)
(require 'look-and-feel)
(require 'coding)
;;(require 'terminals)
(require 'window-management)

;; startup time / message
(add-hook 'emacs-startup-hook
          (lambda ()
            (message "cmacs loaded in %s."
                     (emacs-init-time))))
