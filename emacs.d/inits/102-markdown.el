;;==============================================================================
;; Mark Down Uses...
;;------------------------------------------------------------------------------
;; [Create]      2012-08-29
;; [Last Update] 2012-08-29
;; [Author]      kzi <kzi416@gmail.com>
;;------------------------------------------------------------------------------
;; [Comment]
;;   * Create.
;;==============================================================================
(autoload 'markdown-mode "markdown-mode.el" 
  "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
