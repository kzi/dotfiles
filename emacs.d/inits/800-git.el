;;==============================================================================
;; Personal Configure git.el
;;------------------------------------------------------------------------------
;; [Create]      2013-01-01
;; [Last Update] 2013-03-26
;; [Author]      kzi <kzi416@gmail.com>
;;------------------------------------------------------------------------------
;; [Comment]
;;   * fix....
;;==============================================================================

;;
;; git-gutter-mode
;; 
(require 'git-gutter)
(global-git-gutter-mode t)

;; magit
;; package-install magit


;; 
(defadvice magit-status (around magit-fullscreen activate)
  (window-configuration-to-register :magit-fullscreen)
  ad-do-it
  (delete-other-windows))

;; Save Window Configure
(defun my/magit-quit-session ()
  (interactive)
  (kill-buffer)
  (jump-to-register :magit-fullscreen))

(define-key magit-status-mode-map (kbd "q") 'my/magit-quit-session)

(defadvice git-commit-commit (after move-to-magit-buffer activate)
  (delete-window))
