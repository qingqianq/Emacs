(tool-bar-mode -1)
(scroll-bar-mode -1)
(electric-indent-mode 1)

(setq inhibit-splash-screen t)

(setq-default cursor-type 'bar)

(setq  initial-frame-alist (quote ((fullscreen . maximized))))

(global-hl-line-mode t);;所有buffer都使用自动匹配括号变量

(provide 'init-ui)
