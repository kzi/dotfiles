;;==============================================================================
;; Package-manage.el
;;------------------------------------------------------------------------------
;; [Created]  2010-01-01
;; [Modified] 2012-09-13
;; [Author]   kzi <kzi416@gmail.com>
;;------------------------------------------------------------------------------
;; [Comment]
;;   * Fixed
;;==============================================================================

;; Configure Package.
(when (require 'package nil t)
  ;; Add package-archives
  (add-to-list 'package-archives
	       '("melpa" . "http://melpa.milkbox.net/packages/") t)
;; 一旦無しにするね。
  (add-to-list 'package-archives 
	       '("marmalade" . "http://marmalade-repo.org/packages/"))
;;  (setq package-archives (list '("melpa" . "http://melpa.milkbox.net/packages/")))
  (package-list-packages)
  (mapc
   (lambda (package)
     (or (package-installed-p package)
	 (package-install package)))
   '(
	 
     cl-lib
     undo-tree
     auto-complete
     auto-install
     fuzzy     
     flycheck
     flymake
     flymake-easy
     flymake-php
;     anything
;     anything-complete
;     anything-config
;     anything-match-plugin
;     anything-obsolete
;     anything-show-completion
;     descbinds-anything
     dash
     git-gutter
	 magit
     helm
	 ac-helm
     helm-descbinds
     helm-git
     helm-ls-git
     helm-migemo
     js2-mode
     markdown-mode
     melpa
     migemo
     mmm-mode
     php-mode
     pkg-info
     popup
     popwin
     powerline
     s
     smart-compile
     smartrep
     sr-speedbar
     yasnippet
	 org
	 web-mode
	 twittering-mode
	 buffer-move
     ))
)



(require 'auto-install)
(setq auto-install-directory "~/.emacs.d/elisp/")
(auto-install-update-emacswiki-package-name t)
(auto-install-compatibility-setup) 
