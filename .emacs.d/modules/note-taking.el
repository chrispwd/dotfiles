;;;; note-taking.el -*- lexical-binding: t; -*-

;;; Configuration all revolving around taking notes

;;; Dependencies
(cpwd/install-if-not 'denote)

;;; denote - a simlpe note-taking package
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
             (setq denote-known-keywords '("emacs" "testing" "project"))
             (setq denote-file-type nil)
             (setq denote-link-fontify-backlinks t)
             :hook
             (dired-mode . denote-dired-mode)
             :bind
             (("C-c n j" . cpwd/denote-journal)
              ("C-c n n" . denote)
              ("C-c n f" . denote-open-or-create)
              ("C-c n i" . denote-link)
              ("C-c n I" . denote-link-add-links)                               
              ("C-c n l" . denote-link-find-file) 
              ("C-c n b" . denote-link-backlinks) 
              ("C-c n r" . denote-rename-file) 
              ("C-c n R" . denote-rename-file-using-front-matter))
             :config
             (denote-rename-buffer-mode))
;; TODO:: Have denote open backlinks buffer like the xref window when running project-find-regexp

(provide 'note-taking)
