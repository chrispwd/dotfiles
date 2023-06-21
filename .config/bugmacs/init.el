;;; Bugmacs: for bugtesting
;;         __         _                        ____  ___
;;   _____/ /_  _____(_)________ _      ______/ /  |/  /___ ___________
;;  / ___/ __ \/ ___/ / ___/ __ \ | /| / / __  / /|_/ / __ `/ ___/ ___/
;; / /__/ / / / /  / (__  ) /_/ / |/ |/ / /_/ / /  / / /_/ / /__(__  )
;; \___/_/ /_/_/  /_/____/ .___/|__/|__/\__,_/_/  /_/\__,_/\___/____/
;;                      /_/
;;

;; Uses straight.el instead of package.el
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 6))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(straight-use-package 'use-package)

;; Add the modules folder to the load path
(add-to-list 'load-path (expand-file-name "modules/" user-emacs-directory))

(require 'defaults)
(require 'text-editing)
(require 'os-specific)
(require 'completion)
(require 'look-and-feel)
(require 'coding)
(require 'org-settings)
(require 'note-taking)
(require 'terminals)

;; (bm-install-package-if-not-already 'nix-mode)
;; ;(bm-install-package-if-not-already 'clipetty)
;; (bm-install-package-if-not-already 'xclip)
;; (bm-install-package-if-not-already 'evil)

;; (require 'nix-mode)
;; (with-eval-after-load 'nix-mode 
;;   (add-to-list 'auto-mode-alist '("\\.nix\\'" . nix-mode)))

;; (org-babel-do-load-languages 'org-babel-load-languages
;;                              (append org-babel-load-languages
;;                               '((sql         . t)
;;                                 (shell       . t))))

;; (require 'ox-md)

;; ;(require 'clipetty)
;; (require 'xclip)
;; (xclip-mode 1)
;(global-clipetty-mode)
;(setq clipetty-tmux-ssh-tty "tmux show-environment SSH_TTY")

;; (setq evil-want-C-u-scroll t)
;; (setq evil-want-Y-yank-to-eol t)
;; (setq evil-normal-state-cursor '(box)
;;       evil-insert-state-cursor '(bar)
;;       evil-visual-state-cursor '(hollow))
;; (require 'evil)
;; (evil-mode 1)

