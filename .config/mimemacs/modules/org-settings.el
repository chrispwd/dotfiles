;;; org-settings.el -*- lexical-binding: t; -*-

(cpwd/install-if-not 'visual-fill-column)
(cpwd/install-if-not 'yankpad)
(cpwd/install-if-not 'ob-go)

;; All my org settings. It can get quite long, so I gave it
;; it's own module.
(setq org-agenda-files
      '("~/Notes/denote/20230827T231459--project-list__gtd_meta.org"
        "~/Notes/denote/20230827T235259--someday-maybe-list__gtd_meta.org"
        "~/Notes/denote/20220822T110458--reminders__meta.org"
        "~/Notes/denote/20220823T213739--completed-tasks__meta.org"))
(setq org-archive-location "~/Notes/denote/20220823T213739--completed-tasks__meta.org::")
(setq org-ellipsis " ▾"
      org-hide-emphasis-markers t)
(setq org-agenda-start-with-log-mode t)
(setq org-log-done 'time)
(setq org-log-into-drawer t)
(setq org-scheduled-past-days 0)
(setq org-todo-keywords
      '((sequence "TODO(t)" "NEXT(n)" "WAITING(w!)" "|" "DONE(d!)" "CXLD(x)")))

(setq org-tag-alist
      '((:startgroup)
        (:endgroup)
        ("work"      . ?w)
        ("workflow"  . ?f)
        ("personal"  . ?p)
        ("home"      . ?h)
        ("someday"   . ?s)))

(setq org-agenda-custom-commands
      '(("t" "All TODOs"
         ((tags-todo "+TODO=\"NEXT\"+personal-home|+TODO=\"NEXT\"+work-home"
                     ((org-agenda-overriding-header "Next Actions")
                      (org-agenda-sorting-strategy '(priority-down))
                      (org-agenda-prefix-format "  %?-12b%?-12t% s")))
          (tags-todo "+TODO=\"TODO\"+work"
                     ((org-agenda-overriding-header "@Work")
                      (org-agenda-max-todos nil)
                                        ;(org-agenda-sorting-strategy '(priority-down))
                      (org-agenda-prefix-format "  %?-12b%?-12t% s")))
          (tags-todo "+TODO=\"TODO\"+personal"
                     ((org-agenda-overriding-header "@Personal")
                      (org-agenda-files org-agenda-files)
                                        ;(org-agenda-sorting-strategy '(priority-down))
                      (org-agenda-prefix-format "  %?-12b%?-12t% s"))
                     (org-agenda-text-search-extra-files nil))
          (tags-todo "+TODO=\"TODO\"+workflow"
                     ((org-agenda-overriding-header "@Workflow")
                      (org-agenda-files org-agenda-files)
                                        ;(org-agenda-sorting-strategy '(priority-down))
                      (org-agenda-prefix-format "  %?-12b%?-12t% s"))
                     (org-agenda-text-search-extra-files nil))
          (tags-todo "+TODO=\"WAITING\"+personal-home|+TODO=\"WAITING\"+work-home"
                     ((org-agenda-overriding-header "@Waiting")
                      (org-agenda-files org-agenda-files)
                                        ;(org-agenda-sorting-strategy '(priority-down))
                      (org-agenda-prefix-format "  %?-12b%?-12t% s"))
                     (org-agenda-text-search-extra-files nil))
          (agenda "" ((org-deadline-warning-days 7)
                      (org-agenda-prefix-format "  %?-12b%?-12t% s")))))
        ("h" "Home TODOs"
         ((tags-todo "+TODO=\"NEXT\"+home"
                     ((org-agenda-overriding-header "@Next Actions")
                      (org-agenda-sorting-strategy '(priority-down))
                      (org-agenda-prefix-format "  %?-12b%?-12t% s")))
          (tags-todo "+TODO=\"TODO\"+home"
                     ((org-agenda-overriding-header "@Home")
                      (org-agenda-max-todos nil)
                      (org-agenda-sorting-strategy '(priority-down))
                      (org-agenda-prefix-format "  %?-12b%?-12t% s")))
          (tags-todo "+TODO=\"WAITING\"+home"
                     ((org-agenda-overriding-header "@Home")
                      (org-agenda-max-todos nil)
                      (org-agenda-sorting-strategy '(priority-down))
                      (org-agenda-prefix-format "  %?-12b%?-12t% s")))
          (agenda "" ((org-deadline-warning-days 7)
                      (org-agenda-prefix-format "  %?-12b%?-12t% s")))))
        ("s" "Someday-Maybe TODOs"
         ((tags-todo "+someday"
                     ((org-agenda-overriding-header "@Someday-Maybe")
                      (org-agenda-sorting-strategy '(priority-down))
                      (org-agenda-prefix-format "  %?-12b%?-12t% s")))
          (agenda "" ((org-deadline-warning-days 7)
                      (org-agenda-prefix-format "  %?-12b%?-12t% s")))))))

(let ((map global-map))
  (define-key map (kbd "C-c a") #'org-agenda))

;; org-babel config
(use-package ox-md
  :config
  (org-babel-do-load-languages 'org-babel-load-languages
                               (append org-babel-load-languages
                                       '((sql         . t)
                                         (shell       . t)))))

(use-package ob-go
  :ensure t
  :config
  (org-babel-do-load-languages 'org-babel-load-languages
                               (append org-babel-load-languages
                                       '((go       . t)))))
  
;; enables <-s-TAB shortcut for structure templates
(use-package org-tempo
  :config
  (add-to-list 'org-structure-template-alist '("sh" . "src shell"))
  (add-to-list 'org-structure-template-alist '("el" . "src emacs-lisp"))
  (add-to-list 'org-structure-template-alist '("js" . "src js"))
  (add-to-list 'org-structure-template-alist '("py" . "src python")))

;; org-mode config
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

(defun cpwd/org-mode-setup ()
  ;;(variable-pitch-mode 1)
  ;;(cpwd/configure-org-faces)
  (org-indent-mode)
  (visual-line-mode 1)
  (display-line-numbers-mode 1))

(add-hook 'org-mode-hook 'cpwd/org-mode-setup)

(defun cpwd/org-mode-visual-fill ()
  (setq visual-fill-column-width 100)
  (visual-fill-column-mode 1))

(use-package visual-fill-column
  :ensure t
  :hook (org-mode . cpwd/org-mode-visual-fill))

(use-package yankpad
  :ensure t
  :defer 10
  :init
  (setq yankpad-file "~/Notes/denote/20231113T064822--yankpad__meta.org")
  :config
  (bind-key "C-c y i" 'yankpad-insert)
  (bind-key "C-c y r" 'yankpad-reload)
  (bind-key "C-c y c" 'yankpad-set-category)
  (bind-key "C-c y e" 'yankpad-expand))

(provide 'org-settings)
