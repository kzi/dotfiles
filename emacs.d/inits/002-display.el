;;==============================================================================
;; Personal Configure display.el
;;------------------------------------------------------------------------------
;; [Create]      2010-01-01
;; [Last Update] 2011-06-24
;; [Author]      kzi <kzi416@gmail.com>
;;------------------------------------------------------------------------------
;; [Comment]
;;   * It changes to shape corresponding to Cocoa Emacs. 
;;   * fix....
;;==============================================================================

;； Configure display size and color.
(if window-system (progn
		    (setq initial-frame-alist '((width . 80) (height . 30) (top . 30)))
		    (set-background-color "Black")
		    (set-foreground-color "White")
		    (set-cursor-color "Gray")
		    ))
(set-frame-parameter (selected-frame) 'alpha '(85 50))


(when (>= emacs-major-version 23)
  (ns-toggle-fullscreen-internal)
  (global-set-key (kbd "M-<RET>") 'ns-toggle-fullscreen))

;; Configure Font
(create-fontset-from-ascii-font "VL Gothic-14:weight=normal:slant=normal" nil "menlokakugo")
(set-fontset-font "fontset-menlokakugo"
		  'unicode
		  (font-spec :family "VL Gothic" :size 14)
		  nil
		  'append)
(add-to-list 'default-frame-alist '(font . "fontset-menlokakugo"))