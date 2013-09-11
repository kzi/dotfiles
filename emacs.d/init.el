;;==============================================================================
;; Personal Configure init.el
;;------------------------------------------------------------------------------
;; [Created]  YYYY-MM-DD
;; [Modified] 2013-08-20
;; [Author]   kzi <kzi416@gmail.com>
;;------------------------------------------------------------------------------
;; [Comment]
;;   * Fixed
;;   * Add Shell Script
;;   * Delete disused configure.
;;==============================================================================

;; Configure Load Path
(setq load-path (cons "~/.emacs.d/elisp" load-path))
(let ((default-directory "~/.emacs.d/elpa/"))
  (setq load-path (cons default-directory load-path))
  (normal-top-level-add-subdirs-to-load-path))
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

;; init-loader
;; http://coderepos.org/share/export/39079/lang/elisp/init-loader/init-loader.el
(require 'init-loader)
(init-loader-load "~/.emacs.d/inits")

