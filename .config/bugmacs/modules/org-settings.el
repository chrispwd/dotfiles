;;; org-settings.el -*- lexical-binding: t; -*-

;; All my org settings. It can get quite long, so I gave it
;; it's own module.
;; TODO:: Finish this module
(setq org-agenda-files
      '("~/Notes/denote/20220821T210952--next-actions__meta.org" "~/Notes/denote/20220822T110458--reminders__meta.org"))
(setq org-archive-location "~/Notes/denote/20220823T213739--completed-tasks__meta.org::")
(setq org-ellipsis " ▾"
      org-hide-emphasis-markers t)
(setq org-agenda-start-with-log-mode t)
(setq org-log-done 'time)
(setq org-log-into-drawer t)
(setq org-scheduled-past-days 5)
(setq org-todo-keywords
      '((sequence "TODO(t)" "WAITING(w)" "BACKLOG(b)" "|" "DONE(d!)")))

(setq org-tag-alist
      '((:startgroup)
        (:endgroup)
        ("@email" . ?e)
        ("@sre" . ?s)
        ("@workflow" . ?w)
        ("@dev" . ?d)
        ("@messaging" . ?m)
        ("@meetings" . ?M)
        ("@home" . ?h)
        ("@someday" . ?S)))

(setq org-agenda-custom-commands
      '(("t" "All TODOs"
         ((agenda "" ((org-deadline-warning-days 7)
                      (org-agenda-prefix-format "  %T %?-12t% s")))
          (tags-todo "+TODO=\"TODO\"+@sre"
                     ((org-agenda-overriding-header "@SRE")
                      (org-agenda-max-todos nil)
                      (org-agenda-sorting-strategy '(priority-down))
                      (org-agenda-prefix-format "  %?-12t% s")))
          (tags-todo "+TODO=\"TODO\"+@messaging"
                     ((org-agenda-overriding-header "@Messaging")
                      (org-agenda-sorting-strategy '(priority-down))
                      (org-agenda-prefix-format "  %?-12t% s")))
          (tags-todo "+TODO=\"TODO\"+@meetings"
                     ((org-agenda-overriding-header "@Meeting")
                      (org-agenda-files org-agenda-files)
                      (org-agenda-sorting-strategy '(priority-down))
                      (org-agenda-prefix-format "  %?-12t% s"))
                     (org-agenda-text-search-extra-files nil))
          (tags-todo "+TODO=\"TODO\"+@email"
                     ((org-agenda-overriding-header "@Email")
                      (org-agenda-files org-agenda-files)
                      (org-agenda-sorting-strategy '(priority-down))
                      (org-agenda-prefix-format "  %?-12t% s"))
                     (org-agenda-text-search-extra-files nil))
          (tags-todo "+TODO=\"TODO\"+@dev"
                     ((org-agenda-overriding-header "@Dev")
                      (org-agenda-files org-agenda-files)
                      (org-agenda-sorting-strategy '(priority-down))
                      (org-agenda-prefix-format "  %?-12t% s"))
                     (org-agenda-text-search-extra-files nil))
          (tags-todo "+TODO=\"TODO\"+@workflow"
                     ((org-agenda-overriding-header "@Workflow")
                      (org-agenda-files org-agenda-files)
                      (org-agenda-sorting-strategy '(priority-down))
                      (org-agenda-prefix-format "  %?-12t% s"))
                     (org-agenda-text-search-extra-files nil))
          (tags-todo "+TODO=\"WAITING\""
                     ((org-agenda-overriding-header "@Followup")
                      (org-agenda-files org-agenda-files)
                      (org-agenda-sorting-strategy '(priority-down))
                      (org-agenda-prefix-format "  %?-12t% s"))
                     (org-agenda-text-search-extra-files nil))))
        ("h" "Home TODOs"
         ((agenda "" ((org-deadline-warning-days 7)
                      (org-agenda-prefix-format "  %T %?-12t% s")))
          (tags-todo "+TODO=\"TODO\"+@home"
                ((org-agenda-overriding-header "@Home")
                 (org-agenda-max-todos nil)
                 (org-agenda-sorting-strategy '(priority-down))
                 (org-agenda-prefix-format "  %?-12t% s")))))
        ("b" "Backlog Items"
         ((agenda "" ((org-deadline-warning-days 7)
                      (org-agenda-prefix-format "  %T %?-12t% s")))
          (tags-todo "+TODO=\"BACKLOG\"+@sre"
                     ((org-agenda-overriding-header "@SRE")
                      (org-agenda-max-todos nil)
                      (org-agenda-sorting-strategy '(priority-down))
                      (org-agenda-prefix-format "  %?-12t% s")))
          (tags-todo "+TODO=\"BACKLOG\"+@messaging"
                     ((org-agenda-overriding-header "@Messaging")
                      (org-agenda-sorting-strategy '(priority-down))
                      (org-agenda-prefix-format "  %?-12t% s")))
          (tags-todo "+TODO=\"BACKLOG\"+@meetings"
                     ((org-agenda-overriding-header "@Meeting")
                      (org-agenda-files org-agenda-files)
                      (org-agenda-sorting-strategy '(priority-down))
                      (org-agenda-prefix-format "  %?-12t% s"))
                     (org-agenda-text-search-extra-files nil))
          (tags-todo "+TODO=\"BACKLOG\"+@email"
                     ((org-agenda-overriding-header "@Email")
                      (org-agenda-files org-agenda-files)
                      (org-agenda-sorting-strategy '(priority-down))
                      (org-agenda-prefix-format "  %?-12t% s"))
                     (org-agenda-text-search-extra-files nil))
          (tags-todo "+TODO=\"BACKLOG\"+@dev"
                     ((org-agenda-overriding-header "@Dev")
                      (org-agenda-files org-agenda-files)
                      (org-agenda-sorting-strategy '(priority-down))
                      (org-agenda-prefix-format "  %?-12t% s"))
                     (org-agenda-text-search-extra-files nil))
          (tags-todo "+TODO=\"BACKLOG\"+@workflow"
                     ((org-agenda-overriding-header "@Workflow")
                      (org-agenda-files org-agenda-files)
                      (org-agenda-sorting-strategy '(priority-down))
                      (org-agenda-prefix-format "  %?-12t% s"))
                     (org-agenda-text-search-extra-files nil))))))

(let ((map global-map))
  (define-key map (kbd "C-c a") #'org-agenda))

;; org-babel config
(use-package ox-md
             :config
             (org-babel-do-load-languages 'org-babel-load-languages
                                          (append org-babel-load-languages
                                                  '((sql         . t)
                                                    (shell       . t)))))

;; enables <-s-TAB shortcut for structure templates
(use-package org-tempo
             :config
             (add-to-list 'org-structure-template-alist '("sh" . "src shell"))
             (add-to-list 'org-structure-template-alist '("el" . "src emacs-lisp"))
             (add-to-list 'org-structure-template-alist '("js" . "src js"))
             (add-to-list 'org-structure-template-alist '("py" . "src python")))

;; org-mode config
(defun cop/org-mode-setup ()
  (org-indent-mode)
  ;;(variable-pitch-mode 1)
  (visual-line-mode 1)
  (display-line-numbers-mode 0))

(add-hook 'org-mode-hook 'cop/org-mode-setup)

(provide 'org-settings)
