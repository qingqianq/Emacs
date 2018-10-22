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

(provide 'init-better-defaults)
