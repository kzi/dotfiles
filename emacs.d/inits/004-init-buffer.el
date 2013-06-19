;;==============================================================================
;; Personal Configure buffer.el
;;------------------------------------------------------------------------------
;; [Create] 2013-04-01
;; [Last Update] 2013-06-18
;; [Author] kzi <kzi416@gmail.com>
;;------------------------------------------------------------------------------
;; [Comment]
;; * 
;;==============================================================================

;; Select Buffer
;; - http://d.hatena.ne.jp/syohex/20121107/1352298066
(require 'smartrep)
(setq windmove-wrap-around t)
(windmove-default-keybindings)
(defvar my/alt-b-map (make-sparse-keymap)
  "Prefix key to M-b")
(defalias 'my/alt-b-prefix my/alt-b-map)
(define-key global-map (kbd "M-b") 'my/alt-b-prefix)
(smartrep-define-key
    global-map "M-b" '(("h" . 'windmove-left)
                       ("j" . 'windmove-down)
                       ("k" . 'windmove-up)
                       ("l" . 'windmove-right)))

