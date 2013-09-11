;; web-mode
;; package-install web-mode
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.ctp\\'"   . web-mode)) ;; CakePHP 2.X
(add-to-list 'auto-mode-alist '("\\.tpl\\'"   . web-mode)) ;; Smarty
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

(defun web-mode-hook ()
  (setq web-mode-markup-indent-offset 4)
  (setq web-mode-css-indent-offset 4)
  (setq web-mode-code-indent-offset 4)
  (setq web-mode-engines-alist
        '(("php"    . "\\.ctp\\'")
		  ("php"    . "\\.tpl\\'"))
        )
  )
(add-hook 'web-mode-hook  'web-mode-hook)
