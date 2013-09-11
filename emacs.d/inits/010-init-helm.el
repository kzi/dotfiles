;;==============================================================================
;; Personal Configure helm
;;------------------------------------------------------------------------------
;; [Create]      2010-01-01
;; [Last Update] 2013-01-04
;; [Author]      kzi <kzi416@gmail.com>
;;------------------------------------------------------------------------------
;; [Comment]
;;   * It changes to shape corresponding to Cocoa Emacs. 
;;   * fix....
;;==============================================================================
(eval-when-compile (require 'cl))
(require 'helm-config)
(require 'helm-command)
(require 'helm-descbinds)

(setq helm-idle-delay             0.3
      helm-input-idle-delay       0.1
      helm-candidate-number-limit 200)

(let ((key-and-func
       `((,(kbd "C-r")   helm-for-files)
         (,(kbd "C-^")   helm-c-apropos)
         (,(kbd "C-;")   helm-resume)
         (,(kbd "M-s")   helm-occur)
         (,(kbd "M-x")   helm-M-x)
         (,(kbd "M-y")   helm-show-kill-ring)
         (,(kbd "M-z")   helm-do-grep)
         (,(kbd "C-S-h") helm-descbinds)
        )))
  (loop for (key func) in key-and-func
        do (global-set-key key func)))

;; package-install ac-helm
(require 'ac-helm)
(define-key ac-complete-mode-map (kbd "C-:") 'ac-complete-with-helm)
