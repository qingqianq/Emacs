(require 'cl)
(when (>= emacs-major-version 24)

    (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
    )
;;add whatever packages you want here
(defvar zilongshanren/packages '(
				 company
				 monokai-theme
				 hungry-delete
				 swiper
				 counsel
				 smartparens
				 erlang
				 js2-mode
				 exec-path-from-shell
				 popwin
			    
			    )  "Default packages")

(setq package-selected-packages zilongshanren/packages)


(defun zilongshanren/packages-installed-p ()
  (loop for pkg in zilongshanren/packages
	when (not (package-installed-p pkg)) do (return nil)
	finally (return t)))

(unless (zilongshanren/packages-installed-p)
  (message "%s" "Refreshing package database...")
  (package-refresh-contents)
  (dolist (pkg zilongshanren/packages)
    (when (not (package-installed-p pkg))
      (package-install pkg))))

;; exec-path-from-shell  Emacs could find executable
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

(require 'hungry-delete)
(global-hungry-delete-mode)
;;(add-hook 'emacs-lisp-mode-hook 'smartparens-mode)
(smartparens-global-mode t)

(ivy-mode 1)
(setq ivy-use-virtual-buffers t)

;;config js2 mode
(setq auto-mode-alist
	  (append
	   '(("\\.js\\'" . js2-mode))
	   auto-mode-alist))

(global-company-mode t)

(load-theme 'monokai t)

(require 'popwin)
(popwin-mode t)

(provide 'init-packages)
