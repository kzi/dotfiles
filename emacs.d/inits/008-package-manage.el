;;==============================================================================
;; Package-manage.el
;;------------------------------------------------------------------------------
;; [Created]  2010-01-01
;; [Modified] 2012-09-13
;; [Author]   kzi <kzi416@gmail.com>
;;------------------------------------------------------------------------------
;; [Comment]
;;   * Fixed
;;==============================================================================

;; Configure Package.
(require 'package)
;; Add package-archives
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives 
	     '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)
;;; melpa.el
(require 'melpa)
