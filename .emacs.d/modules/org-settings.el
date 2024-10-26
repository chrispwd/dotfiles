;;; org-settings.el -*- lexical-binding: t; -*-

(cpwd/install-if-not 'visual-fill-column)
(cpwd/install-if-not 'yankpad)
(cpwd/install-if-not 'ob-go)

;; All my org settings. It can get quite long, so I gave it
;; it's own module.
(setq org-agenda-files
      '("~/Notes/denote/20240507T235852--todo-list__gtd_meta.org"
        "~/Notes/denote/20220823T213739--completed-tasks__meta.org"))
(setq org-archive-location "~/Notes/denote/20220823T213739--completed-tasks__meta.org::")
(setq org-ellipsis " ▾"
      org-hide-emphasis-markers t)
(setq org-agenda-start-with-log-mode t)
(setq org-log-done 'time)
(setq org-log-into-drawer t)
(setq org-scheduled-past-days 0)
(setq org-agenda-entry-text-maxlines 50)
(setq org-todo-keywords
      '((sequence "TODO(t)" "NEXT(n)" "ACTIVE(a)" "WAITING(w!)" "|" "DONE(d!)" "CXLD(x)")))

(setq org-tag-alist
      '((:startgroup)
        (:endgroup)
        ("work"      . ?w)
        ("home"      . ?h)))

(setq org-agenda-custom-commands
      '(("w" "Work TODOs"
         ((tags-todo "+TODO=\"ACTIVE\"+work"
                     ((org-agenda-overriding-header "In Progress")
                      (org-agenda-sorting-strategy '(priority-down))
                      (org-agenda-prefix-format "  %?-12b%?-12t% s")
                      (org-agenda-remove-tags t)))
         (tags-todo "+TODO=\"NEXT\"+work"
                     ((org-agenda-overriding-header "Up Next")
                      (org-agenda-sorting-strategy '(priority-down))
                      (org-agenda-prefix-format "  %?-12b%?-12t% s")
                      (org-agenda-remove-tags t)))
          (tags-todo "+TODO=\"WAITING\"+work"
                     ((org-agenda-overriding-header "Waiting On")
                      (org-agenda-files org-agenda-files)
                                        ;(org-agenda-sorting-strategy '(priority-down))
                      (org-agenda-prefix-format "  %?-12b%?-12t% s")
                      (org-agenda-remove-tags t))
                     (org-agenda-text-search-extra-files nil))
          ;; (agenda "" ((org-deadline-warning-days 7)
          ;;             (org-agenda-prefix-format "  %?-12b%?-12t% s")
          ;;             (org-agenda-remove-tags t)))
          (tags-todo "+TODO=\"TODO\"+work"
                     ((org-agenda-overriding-header "Todos")
                      (org-agenda-max-todos nil)
                                        ;(org-agenda-sorting-strategy '(priority-down))
                      (org-agenda-prefix-format "  %?-12b%?-12t% s")
                      (org-agenda-remove-tags t)))))
        ("h" "Home TODOs"
         ((tags-todo "+TODO=\"ACTIVE\"+home"
                     ((org-agenda-overriding-header "In Progress")
                      (org-agenda-sorting-strategy '(priority-down))
                      (org-agenda-prefix-format "  %?-12b%?-12t% s")
                      (org-agenda-remove-tags t)))
         (tags-todo "+TODO=\"NEXT\"+home"
                     ((org-agenda-overriding-header "Up Next")
                      (org-agenda-sorting-strategy '(priority-down))
                      (org-agenda-prefix-format "  %?-12b%?-12t% s")
                      (org-agenda-remove-tags t)))
          (tags-todo "+TODO=\"WAITING\"+home"
                     ((org-agenda-overriding-header "Waiting On")
                      (org-agenda-files org-agenda-files)
                                        ;(org-agenda-sorting-strategy '(priority-down))
                      (org-agenda-prefix-format "  %?-12b%?-12t% s"))
                     (org-agenda-text-search-extra-files nil))
          ;; (agenda "" ((org-deadline-warning-days 7)
          ;;             (org-agenda-prefix-format "  %?-12b%?-12t% s")
          ;;             (org-agenda-remove-tags t)))
          (tags-todo "+TODO=\"TODO\"+home"
                     ((org-agenda-overriding-header "Todos")
                      (org-agenda-max-todos nil)
                                        ;(org-agenda-sorting-strategy '(priority-down))
                      (org-agenda-prefix-format "  %?-12b%?-12t% s")
                      (org-agenda-remove-tags t)))))))

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
  (add-to-list 'org-structure-template-alist '("sq" . "src sql"))
  (add-to-list 'org-structure-template-alist '("el" . "src emacs-lisp"))
  (add-to-list 'org-structure-template-alist '("js" . "src js"))
  (add-to-list 'org-structure-template-alist '("py" . "src python")))

(defun cpwd/org-mode-setup ()
  (org-indent-mode)
  (visual-line-mode 1)
  (display-line-numbers-mode 0))

(add-hook 'org-mode-hook 'cpwd/org-mode-setup)

(defun cpwd/org-mode-visual-fill ()
  (setq visual-fill-column-width 100
        visual-fill-column-center-text t)
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
