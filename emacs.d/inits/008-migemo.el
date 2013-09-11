;;==============================================================================
;; Personal Configure init.el
;;------------------------------------------------------------------------------
;; [Created]  2010-01-01
;; [Modified] 2013-06-06
;; [Author]   kzi <kzi416@gmail.com>
;;------------------------------------------------------------------------------
;; [Comment]
;;   * Fixed
;;   * add Windows Configure.
;;==============================================================================

;; migemo
;; http://d.hatena.ne.jp/ground256/20111008/1318063872
(require 'migemo)
(setq migemo-command "/usr/local/bin/cmigemo")
(setq migemo-options '("-q" "--emacs"))
(setq migemo-dictionary "/usr/local/share/migemo/utf-8/migemo-dict")
(setq migemo-user-dictionary nil)
(setq migemo-coding-system 'utf-8-unix)
(setq migemo-regex-dictionary nil)
(load-library "migemo")
(migemo-init)

;; For Windows
(cond ((win?)
	   (cond ((equal (executable-find "C:/Applications/cmigemo/cmigemo.exe") "C:/Applications/cmigemo/cmigemo.exe")
			  (setq migemo-command "C:/Applications/cmigemo/cmigemo.exe")
			  (setq migemo-options '("-q" "--emacs"))
			  (setq migemo-dictionary "C:/Applications/cmigemo/dict/utf-8/migemo-dict")
			  (setq migemo-user-dictionary nil) 
			  (setq migemo-regex-dictionary nil)
			  ))
	   ))
