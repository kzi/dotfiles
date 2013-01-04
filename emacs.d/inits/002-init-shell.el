;;==============================================================================
;; Configue Shell
;;------------------------------------------------------------------------------
;; [Create]      2013-01-03
;; [Last Update] 2013-01-03
;; [Author]      kzi <kzi416@gmail.com>
;;------------------------------------------------------------------------------
;; [Comment]
;;   * It changes to shape corresponding to Cocoa Emacs. 
;;   * fix....
;;==============================================================================
(dolist (dir (list
              "/sbin"
              "/usr/sbin"
              "/bin"
              "/usr/bin"
              "/opt/local/bin"
              "/sw/bin"
              "/usr/local/bin"
              (expand-file-name "~/bin")
              (expand-file-name "~/.emacs.d/bin")
              ))
 (when (and (file-exists-p dir) (not (member dir exec-path)))
   (setenv "PATH" (concat dir ":" (getenv "PATH")))
   (setq exec-path (append (list dir) exec-path))))
(setenv "MANPATH" (concat "/usr/local/man:/usr/share/man:/Developer/usr/share/man:/sw/share/man" (getenv "MANPATH")))

;; Check shell existence
(defun skt:shell ()
  (or 
   (executable-find "zsh")
   (executable-find "bash")
   ;; (executable-find "f_zsh") ;; Emacs + Cygwin
   ;; (executable-find "f_bash") ;; Emacs + Cygwin
   (executable-find "cmdproxy")
   (error "can't find 'shell' command in PATH!!")))

;; Configure Shell Name
(setq shell-file-name (skt:shell))
(setenv "SHELL" shell-file-name)
(setq explicit-shell-file-name shell-file-name)
