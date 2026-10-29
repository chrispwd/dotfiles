;;; org-config.el --- Org-mode and agenda settings -*- lexical-binding: t; -*-
;;
;;; Commentary: Org mode and related workflow package configuration
;;
;;; Code:

;;; ORG
(use-package org
  :ensure nil
  :defer t
  :mode ("\\.org\\'" . org-mode)
  :bind
  (("C-c a" . org-agenda))
  :config
  (setq
   ;; Start collapsed for speed
   org-startup-folded nil

   ;; Edit settings
   org-catch-invisible-edits 'show-and-error
   ;; org-special-ctrl-a/e t
   org-insert-heading-respect-content t

   ;; Org styling, hide markup etc.
   org-indent-mode t
   org-auto-align-tags t
   org-tags-column -70
   org-hide-emphasis-markers nil
   org-pretty-entities t
   org-fontify-quote-and-verse-blocks t
   org-use-sub-superscripts '{}

   ;; Agenda Config
   org-agenda-files
   '("~/Notes/denote/20250201T192254--todos__work.org"
	 "~/Notes/denote/20250811T093919--inbox__home.org")
   org-archive-location "~/Notes/denote/20220823T213739--completed-tasks__meta.org::"
   org-scheduled-past-days 14
   org-agenda-entry-text-maxlines 50
   org-log-done 'time
   org-log-into-drawer t
   org-tag-alist '((:startgroup . nil) ;; urgency type
                   ("today"     . ?t)
                   ("tomorrow"  . ?m)
                   ("blocked"   . ?b)
                   (:endgroup   . nil)
                   (:startgroup . nil) ;; category type
                   ("school"    . ?s)
                   ("chores"    . ?c)
                   ("project"   . ?p)
                   ("family"    . ?f)
                   (:endgroup   . nil)
                   (:startgroup . nil) ;; work/home type
                   ("work"      . ?w)
                   ("home"      . ?h)
                   (:endgroup   . nil)
                   ("next"      . ?n) ;; other types
                   ("zengine"   . ?z)
                   ("infra"     . ?i))
   org-todo-keywords '((sequence
                        "TODO(t)" "|" "DONE(d!)" "CXLD(x!)"))
   org-agenda-custom-commands
   '(("w" "Work Todos" ;; agenda with only work items
	    ((agenda "" ((org-agenda-ndays 8)
				           (org-deadline-warning-days 7)))
	     (tags-todo "today"
			            ((org-agenda-overriding-header "Today:")
                   (org-agenda-sorting-strategy '(priority-down))))
	     (tags-todo "tomorrow"
			            ((org-agenda-overriding-header "Tomorrow:")
                   (org-agenda-sorting-strategy '(priority-down))
                   (org-agenda-skip-function '(org-agenda-skip-entry-if 'scheduled))))
	     (tags-todo "blocked"
			            ((org-agenda-overriding-header "Blocked:")
                   (org-agenda-sorting-strategy '(priority-down))
                   (org-agenda-skip-function '(org-agenda-skip-entry-if 'scheduled))))
       (tags-todo "-today-tomorrow-blocked"
			            ((org-agenda-overriding-header "Backlog:")
                   (org-agenda-sorting-strategy '(priority-down))
                   (org-agenda-skip-function '(org-agenda-skip-entry-if 'scheduled)))))
	    ((org-agenda-tag-filter-preset '("+work"))))

	   ("h" "Home Todos" ;; agenda with only Home items
	    ((agenda "" ((org-agenda-ndays 8)
				           (org-deadline-warning-days 7)))
	     (tags-todo "today"
			            ((org-agenda-overriding-header "Today:")
                   (org-agenda-sorting-strategy '(priority-down))))
	     (tags-todo "tomorrow"
			            ((org-agenda-overriding-header "Tomorrow:")
                   (org-agenda-sorting-strategy '(priority-down))
                   (org-agenda-skip-function '(org-agenda-skip-entry-if 'scheduled))))
	     (tags-todo "blocked"
			            ((org-agenda-overriding-header "Blocked:")
                   (org-agenda-sorting-strategy '(priority-down))
                   (org-agenda-skip-function '(org-agenda-skip-entry-if 'scheduled))))
       (tags-todo "-today-tomorrow-blocked"
			            ((org-agenda-overriding-header "Backlog:")
                   (org-agenda-sorting-strategy '(priority-down))
                   (org-agenda-skip-function '(org-agenda-skip-entry-if 'scheduled)))))
	    ((org-agenda-tag-filter-preset '("+home"))))

     ("a" "All Todos" ;; agenda with all items
	    ((agenda "" ((org-agenda-ndays 8)
				           (org-deadline-warning-days 7)))
	     (tags-todo "today"
			            ((org-agenda-overriding-header "Today:")
                   (org-agenda-sorting-strategy '(priority-down))))
	     (tags-todo "tomorrow"
			            ((org-agenda-overriding-header "Tomorrow:")
                   (org-agenda-sorting-strategy '(priority-down))
                   (org-agenda-skip-function '(org-agenda-skip-entry-if 'scheduled))))
	     (tags-todo "blocked"
			            ((org-agenda-overriding-header "Blocked:")
                   (org-agenda-sorting-strategy '(priority-down))
                   (org-agenda-skip-function '(org-agenda-skip-entry-if 'scheduled))))
       (tags-todo "-today-tomorrow-blocked"
			            ((org-agenda-overriding-header "Backlog:")
                   (org-agenda-sorting-strategy '(priority-down))
                   (org-agenda-skip-function '(org-agenda-skip-entry-if 'scheduled)))))))
	 
   ;; Agenda styling
   ;; org-agenda-tags-column 0
   org-agenda-remove-tags t
   org-agenda-block-separator ?─
   org-agenda-time-grid
   '((daily today require-timed)
     (800 1000 1200 1400 1600 1800 2000)
     " ┄┄┄ " "┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄")
   org-agenda-current-time-string
   "───────────────>"
  org-agenda-deadline-leaders (quote ("Today:" "in -%d:" "over +%2d!:"))
  org-agenda-scheduled-leaders (quote ("" "over +%d:"))
  org-agenda-prefix-format " %-10:T%-32b %3e %?-10t%?-10 s")
  
  ;; Ellipsis styling
  (setq org-ellipsis "...")
  (set-face-attribute 'org-ellipsis nil :inherit 'default :box nil)
  
  (defun cpwd/org-mode-setup ()
	(org-indent-mode)
	(visual-line-mode 1)
	(display-line-numbers-mode 0)
    (hl-line-mode -1))

  :hook
  (org-mode . cpwd/org-mode-setup))

;;; ORG-BABEL
(use-package ox-gfm
  :ensure t
  :config
  (org-babel-do-load-languages 'org-babel-load-languages
                               (append org-babel-load-languages
                                       '((sql    . t)
                                         (shell  . t)))))
(use-package ob-go
  :ensure t
  :config
  (add-to-list 'org-src-lang-modes '("go" . go-ts))
  (org-babel-do-load-languages 'org-babel-load-languages
                               (append org-babel-load-languages
                                       '((go     . t)))))
  
(use-package ob-restclient
  :ensure t
  :config
  (org-babel-do-load-languages 'org-babel-load-languages
                               (append org-babel-load-languages
                                       '((restclient . t)))))

;; enables <-s-TAB shortcut for structure templates
(use-package org-tempo
  :config
  (add-to-list 'org-structure-template-alist '("sh" . "src shell"))
  (add-to-list 'org-structure-template-alist '("sq" . "src sql"))
  (add-to-list 'org-structure-template-alist '("el" . "src emacs-lisp"))
  (add-to-list 'org-structure-template-alist '("js" . "src js"))
  (add-to-list 'org-structure-template-alist '("py" . "src python"))
  (add-to-list 'org-structure-template-alist '("go" . "src go")))

;;; VISUAL-FILL-COLUMN - centers text and sets width to 80
(use-package visual-fill-column
  :ensure t
  :config
  (defun cpwd/org-mode-visual-fill ()
  (setq visual-fill-column-width 80
        visual-fill-column-center-text t)
  (visual-fill-column-mode 1))
  :hook
  (org-mode . cpwd/org-mode-visual-fill))

;;; LINK-HINT - provides key hints to open links visible in buffer
(use-package link-hint
  :ensure t
  :bind
  ("C-c l o" . link-hint-open-link)
  ("C-c l c" . link-hint-copy-link))

;;; DENOTE - a simlpe note-taking package with note linking
(use-package denote
             :ensure t
             :init
             (defun cpwd/denote-journal ()
               "Create an entry tagged 'journal' with the date as its title."
               (interactive)
               (denote
                (format-time-string "%A %B %e %Y") ; format like Tuesday June 14 2022
                '("journal")))
             (setq denote-directory (expand-file-name "~/Notes/denote"))
             (setq denote-known-keywords '("work" "home" "ref" "howto"))
             (setq denote-file-type nil) ; default to org
             (setq denote-link-fontify-backlinks t)
             (setq denote-rename-buffer-backlinks-indicator  " (b)")
             :hook
             (dired-mode . denote-dired-mode)
             :bind
             (("C-c n j" . cpwd/denote-journal)
              ("C-c n n" . denote)
              ("C-c n f" . denote-open-or-create)
              ("C-c n g" . denote-grep)
              ("C-c n i" . denote-link-or-create)
              ("C-c n I" . denote-add-links)
              ("C-c n l" . denote-link-find-file)
              ("C-c n b" . denote-backlinks)
              ("C-c n r" . denote-rename-file)
              ("C-c n R" . denote-rename-file-using-front-matter))
             :config
             (denote-rename-buffer-mode 1))

(use-package denote-org
  :ensure t
  :after (denote)
  :bind
  ("C-c n h" . denote-org-link-to-heading))

(use-package yankpad
  :ensure t
  :init
  (setq yankpad-file "~/Notes/denote/20231113T064822--yankpad__meta.org")
  :bind
  (("C-c y i" . yankpad-insert)
   ("C-c y r" . yankpad-reload)
   ("C-c y c" . yankpad-set-category)
   ("C-c y e" . yankpad-expand)))

(provide 'org-config)
;;; org-config.el ends here
