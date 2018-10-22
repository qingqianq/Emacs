(require 'org)

(setq org-src-fontify-natively t)


;;目录 agenda
(setq org-agenda-files '("~/org"))
(global-set-key (kbd "C-c a") 'org-agenda)

(delete-selection-mode t)
(provide 'init-org)
