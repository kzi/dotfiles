;;==============================================================================
;; Personal Configure anything.el
;;------------------------------------------------------------------------------
;; [Create]      2010-01-01
;; [Last Update] 2011-06-24
;; [Author]      kzi <kzi416@gmail.com>
;;------------------------------------------------------------------------------
;; [Comment]
;;   * It changes to shape corresponding to Cocoa Emacs. 
;;   * fix....
;;==============================================================================
(require 'anything-startup)
(global-set-key (kbd "C-x b") 'anything)

;; auto-completex
(require 'auto-complete)
(require 'auto-complete-config)
(global-auto-complete-mode t)
(setq ac-auto-start t)