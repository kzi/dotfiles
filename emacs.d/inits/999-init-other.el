;; popwin from package.el
(require 'popwin)
(setq display-buffer-function 'popwin:display-buffer)
(global-set-key (kbd "C-z") popwin:keymap)

;; Scrall Page..
;; http://d.hatena.ne.jp/syohex/20130903/1378219917
(defun ac-page-next ()
  (interactive)
  (when (ac-menu-live-p)
    (when (popup-hidden-p ac-menu)
      (ac-show-menu))
    (popup-page-next ac-menu)
    (if (eq this-command 'ac-page-next)
        (setq ac-dwim-enable t))))

(defun ac-page-previous ()
  (interactive)
  (when (ac-menu-live-p)
    (when (popup-hidden-p ac-menu)
      (ac-show-menu))
    (popup-page-previous ac-menu)
    (if (eq this-command 'ac-page-previous)
        (setq ac-dwim-enable t))))

(define-key ac-complete-mode-map (kbd "C-v") 'ac-page-next)
(define-key ac-complete-mode-map (kbd "M-v") 'ac-page-previous)



;; sr speedbar from package.el
(require 'sr-speedbar)
(setq sr-speedbar-right-side nil)

(cond ((win?)) 
	  (global-set-key (kbd "C-M-s") 'sr-speedbar-toggle))

;; undo tree
(require 'undo-tree)
(global-undo-tree-mode)


;; Flymake (flycheck)
(add-hook 'php-mode-hook 'flycheck-mode)
(add-hook 'ruby-mode-hook 'flycheck-mode)


;; remake :: *scratch*
;; http://www.tkl.iis.u-tokyo.ac.jp/~ynaga/tips/elisp_tips.html#scratch
(defun my-make-scratch (&optional arg)
  (interactive)
  (progn
    ;; "*scratch*" を作成してbuffer-listに
    (set-buffer (get-buffer-create "*scratch*"))
    (funcall initial-major-mode)
    (erase-buffer)
    (when (and initial-scratch-message (not inhibit-startup-message))
      (insert initial-scratch-message))
    (or arg (progn (setq arg 0)
                   (switch-to-buffer "*scratch*")))
    (cond ((= arg 0) (message "*scratch* is cleared up."))
          ((= arg 1) (message "another *scratch* is created")))))

(add-hook 'kill-buffer-query-functions
          (lambda ()
            (if (string= "*scratch*" (buffer-name))
                (progn (my-make-scratch 0) nil)
              t)))

(add-hook 'after-save-hook
          (lambda ()
            (unless (member (get-buffer "*scratch*") (buffer-list))
              (my-make-scratch 1))))

