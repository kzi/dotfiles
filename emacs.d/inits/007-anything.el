;;==============================================================================
;; Personal Configure anything.el
;;------------------------------------------------------------------------------
;; [Create]      2010-01-01
;; [Last Update] 2013-01-04
;; [Author]      kzi <kzi416@gmail.com>
;;------------------------------------------------------------------------------
;; [Comment]
;;   * It changes to shape corresponding to Cocoa Emacs. 
;;   * fix....
;;   * all comment out (for helm)
;;==============================================================================

(require 'anything-startup)
(global-set-key (kbd "C-x b") 'anything)

;; auto-completex
(require 'auto-complete)
(require 'auto-complete-config)
(global-auto-complete-mode t)
(setq ac-auto-start t)
