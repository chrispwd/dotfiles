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
