;; popwin from package.el
(require 'popwin)
(setq display-buffer-function 'popwin:display-buffer)
(global-set-key (kbd "C-z") popwin:keymap)


;; sr speedbar from package.el
(require 'sr-speedbar)
(setq sr-speedbar-right-side nil)
