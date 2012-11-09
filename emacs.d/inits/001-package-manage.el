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

;; auto-install
;; http://www.emacswiki.org/emacs/download/auto-install.el
;(require 'auto-install)
;(setq auto-install-directory "~/.emacs.d/elisp/")
;(auto-install-update-emacswiki-package-name t)
;(auto-install-compatibility-setup)
;(setq ediff-window-setup-function 'ediff-setup-windows-plain)


;;; This was installed by package-install.el.
;;; This provides support for the package system and
;;; interfacing with ELPA, the package archive.
;;; Move this code earlier if you want to reference
;;; packages in your .emacs.
;(when   
;(load
;     (expand-file-name "~/.emacs.d/elisp/package.el"))
;)
;; Configure Package.
(require 'package)
;; Add package-archives
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)
;;; melpa.el
(require 'melpa)
