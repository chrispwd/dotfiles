;;; completion.el ---- Completion packages -*- lexical-binding: t; -*-
;;
;;; Commentary:
;;
;; Code:
;;
;;; VERTICO
(use-package vertico
  :ensure t
  :init
  (setq vertico-cycle t)
  :config
  (vertico-mode))

;; (use-package savehist
;;   :ensure t
;;   :config
;;   (savehist-mode))

;;; MARGINALIA
(use-package marginalia
  :ensure t
  :after (vertico)
  :config
  (marginalia-mode))

;;; CONSULT
(use-package consult
  :ensure t
  :init
  (setq completion-styles '(substring basic))
  :bind
  (;; ("C-s"   . consult-line)
   ("C-M-y" . consult-yank-from-kill-ring)
   ("C-c o" . consult-mark)))

;;; ORDERLESS
(use-package orderless
  :ensure t
  :init
  (setq completion-styles '(orderless basic)
        completion-category-overrides '((file (styles basic partial-completion)))))

;;; CORFU
(use-package corfu
  ;; Optional customizations
  :custom
  (corfu-cycle t)                 ; Allows cycling through candidates
  (corfu-auto nil)                  ; {En,Dis}able auto completion
  (corfu-auto-prefix 2)
  (corfu-auto-delay 0.7)
  (corfu-popupinfo-delay '(0.7 . 0.4))
  (corfu-preview-current 'insert) ; Do not preview current candidate
  (corfu-preselect 'prompt)
  (corfu-on-exact-match nil)      ; Don't auto expand tempel snippets
  ;; Optionally use TAB for cycling, default is `corfu-complete'.
  :bind (:map corfu-map
              ("M-SPC"      . corfu-insert-separator)
              ("TAB"        . corfu-next)
              ([tab]        . corfu-next)
              ("S-TAB"      . corfu-previous)
              ([backtab]    . corfu-previous)
              ("S-<return>" . corfu-insert)
              ("RET"        . nil))
  :init
  (global-corfu-mode)
  (corfu-history-mode)
  (corfu-popupinfo-mode)) ; Popup completion info

;; Use corfu-terminal on non-GUI (this will not be necessary in version 31+)
(when (not (display-graphic-p))
  (use-package corfu-terminal
    :ensure t
    :config
    (corfu-terminal-mode +1)))

;;; CAPE
(use-package cape
  :defer 10
  :bind ("C-c c" . cape-file)
  :init
  ;; Add `completion-at-point-functions', used by `completion-at-point'.
  (add-to-list 'completion-at-point-functions #'cape-file)
  :config
  ;; Silence then pcomplete capf, no errors or messages!
  (advice-add 'pcomplete-completions-at-point :around #'cape-wrap-silent)
  ;; Ensure that pcomplete does not write to the buffer
  ;; and behaves as a pure `completion-at-point-function'.
  (advice-add 'pcomplete-completions-at-point :around #'cape-wrap-purify))

(provide 'completion)
;;; completion.el ends here
