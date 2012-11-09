;;==============================================================================
;; Personal Configure base.el
;;------------------------------------------------------------------------------
;; [Create]      2010-01-01
;; [Last Update] 2011-06-24
;; [Author]      kzi <kzi416@gmail.com>
;;------------------------------------------------------------------------------
;; [Comment]
;;   * It changes to shape corresponding to Cocoa Emacs. 
;;   * fix....
;;==============================================================================
(require 'php-mode)
(setq auto-mode-alist  (cons '("\\.php\\'" . php-mode) auto-mode-alist))
(setq auto-mode-alist  (cons '("\\.ctp\\'" . php-mode) auto-mode-alist))
(setq auto-mode-alist  (cons '("\\.thtml\\'" . php-mode) auto-mode-alist))
(setq auto-mode-alist  (cons '("\\.tpl\\'" . php-mode) auto-mode-alist))
(setq auto-mode-alist  (cons '("\\.inc\\'" . php-mode) auto-mode-alist))

(add-hook 'php-mode-hook (lambda ()
			   (setq c-basic-offset 4)
			   (setq tab-width 4)
			   (setq indent-tabs-mode t)
			   (setq-default tab-width 4) 
			   (require 'php-completion)
			   (php-completion-mode t)
			   (define-key php-mode-map (kbd "C-o") 'phpcmp-complete) ;php-completionの補完実行キーバインドの設定
			   (make-local-variable 'ac-sources)
			   (setq ac-sources '(
					      ac-source-words-in-same-mode-buffers
					      ac-source-php-completion
					      ac-source-filename
					      ))))
