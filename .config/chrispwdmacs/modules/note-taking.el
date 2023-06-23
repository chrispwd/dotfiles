;;;; note-taking.el -*- lexical-binding: t; -*-

;;; Configuration all revolving around taking notes

;;; Dependencies
(straight-use-package 'denote)

;;; denote - a simlpe note-taking package
(use-package denote
             :straight t
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
              ("C-c n R" . denote-rename-file-using-front-matter)))

;; (setq denote-link-backlinks-display-buffer-action
;;       '((display-buffer-reuse-window
;;          display-buffer-in-side-window)
;;         (side . left)
;;         (slot . 99)
;;         (window-width . 0.3)))

(provide 'note-taking)
