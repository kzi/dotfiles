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
	       '("melpa" . "http://melpa.org/packages/") t)
;; 一旦無しにするね。
;;  (add-to-list 'package-archives 
;;	       '("marmalade" . "https://marmalade-repo.org/packages/"))
  ;;  (setq package-archives (list '("melpa" . "http://melpa.milkbox.net/packages/")))
;;  (add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/"))
  (package-list-packages)
  (mapc
   (lambda (package)
     (or (package-installed-p package)
	 (package-install package)))
   '(
     ;; Library
     dash
     f
     s
     cl-lib
     ;; Common Package
     undo-tree
     auto-complete
     fuzzy
     migemo
     popup
     popwin
     yasnippet
     smartrep
     smart-compile
     smartparens
     org-plus-contrib
     buffer-move
     recentf-ext
     multiple-cursors
     igrep
     drag-stuff
     exec-path-from-shell
     expand-region
     idle-highlight-mode
     prodigy
     projectile
     anzu
     open-junk-file
     smart-newline
     win-switch
     auto-install
     ;; Package
     use-package
     pallet
     ;; git
     git-gutter
     magit
     ;; helm
     helm
     ac-helm
     helm-descbinds
     helm-git
     helm-ls-git
     helm-migemo
     helm-gtags
     helm-projectile
     ;; php
     php-mode
     ;; Ruby
     ruby-electric
     ruby-block
     ;; Other Lang
     js2-mode
     markdown-mode
     web-mode
     yaml-mode
     ;; Other
     bind-key
     cask
     twittering-mode
     ;; flymake
     flymake
     flycheck
     flymake-easy
     flymake-php
     flycheck-cask
     ))
)



(require 'auto-install)
(setq auto-install-directory "~/.emacs.d/elisp/")
(auto-install-update-emacswiki-package-name t)
(auto-install-compatibility-setup) 
