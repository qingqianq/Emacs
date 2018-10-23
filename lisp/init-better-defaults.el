(setq ring-bell-function 'ignore)

(global-linum-mode t)

(global-auto-revert-mode t)
(global-auto-composition-mode t)
(setq-default abbrev-mode t)
(define-abbrev-table 'global-abbrev-table '(
					    ;; signature
					    ("8zl" "zilongshanren")
					    ;; emacs regex
					    ("8ms" "Macrosoft")
					    ))

(setq make-backup-files nil)

(setq auto-save-default nil)

(require 'recentf)
(recentf-mode 1)			
(setq recentf-max-menu-items 25)

(add-hook 'emacs-lisp-mode-hook 'smartparens-mode)
(defun indent-buffer ()
  "Indent the currently visited buffer."
  (interactive)
  (indent-region (point-min) (point-max)))
(defun indent-region-or-buffer ()
  "Indent a region if selected, otherwise the whole buffer."
  (interactive)
  (save-excursion
    (if (region-active-p)
	(progn
	  (indent-region (region-beginning) (region-end))
	  (message "Indented selected region."))
      (progn
	(indent-buffer)
	(message "Indented buffer.")))))


;; hippie expand is dabbrev expand on steroids
(setq hippie-expand-try-functions-list '(try-expand-dabbrev
                                         try-expand-dabbrev-all-buffers
                                         try-expand-dabbrev-from-kill
                                         try-complete-file-name-partially
                                         try-complete-file-name
                                         try-expand-all-abbrevs
                                         try-expand-list
                                         try-expand-line
                                         try-complete-lisp-symbol-partially
                                         try-complete-lisp-symbol))

(fset 'yes-or-no-p 'y-or-n-p)

(setq dired-recursive-deletes 'always)

(setq dired-recursive-copies 'always)

(put 'dired-find-alternate-file 'disabled nil)

(require 'dired-x);; C-x C-j 打开当前 dired
(setq dired-dwim-target t)




(provide 'init-better-defaults)
