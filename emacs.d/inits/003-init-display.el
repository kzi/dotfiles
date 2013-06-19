;;==============================================================================
;; Personal Configure display.el
;;------------------------------------------------------------------------------
;; [Create] 2010-01-01
;; [Last Update] 2013-06-18
;; [Author] kzi <kzi416@gmail.com>
;;------------------------------------------------------------------------------
;; [Comment]
;; * It changes to shape corresponding to Cocoa Emacs.
;; * Platform Edit
;;==============================================================================

;; Configure display size and color.
(cond
 ((eq window-system 'x)
  (setq initial-frame-alist '((width . 80) (height . 30) (top . 30)))
  ))

;; FullScreen Configure
(cond ((mac?)
  (when (>= emacs-major-version 23)
	(ns-toggle-fullscreen-internal)
	(global-set-key (kbd "M-<RET>") 'ns-toggle-fullscreen))))


;; Configure Font
(cond
 ((eq window-system 'x)
  (create-fontset-from-ascii-font "VL Gothic-14:weight=normal:slant=normal" nil "menlokakugo")
  (set-fontset-font "fontset-menlokakugo"
					'unicode
					(font-spec :family "VL Gothic" :size 14)
					nil
					'append)
  (add-to-list 'default-frame-alist '(font . "fontset-menlokakugo"))))
