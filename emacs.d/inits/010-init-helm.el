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
		 (,(kbd "C-x C-f") helm-find-files)
        )))
  (loop for (key func) in key-and-func
        do (global-set-key key func)))
