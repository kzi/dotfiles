(setq indent-line-function 'indent-relative-maybe) ;; Shift + Allowで範囲選択を可能
(setq inhibit-startup-message t)                   ;; Emacsの開始メッセージ非表示
(setq backup-inhibited t)                          ;; バックアップファイルの作成を禁止
(setq tab-width 4)                                 ;; Tab幅を4
(setq indent-tabs-mode nil)                        ;; Tabをスペース利用
(setq ns-pop-up-frames nil)                        ;; 新規ファイルを既存のemacsで開くようにする
(setq truncate-lines t)                            ;; 折り返しはしない
(setq truncate-partial-width-windows t)            ;; バッファ分割表示に折り返しを実施させない
(setq display-time-day-and-date t)                 ;; 日時を表示する
(setq display-time-24hr-format t)		   ;; 表示フォーマットを24時間表示
;;;(setq visible-bell t)                           ;; 警告時に画面をフラッシュさせる
(setq ring-bell-function 'ignore)                  ;; 警告時の画面フラッシュ・Beepを実施しない
(savehist-mode 1)                                  ;; history-list
(setq-default save-place t)                        ;; 
(require 'saveplace)				   ;;
(show-paren-mode 1)                                ;; 括弧の強調表示
(display-time-mode t)                              ;; 時間を表示する
(line-number-mode t)                               ;; 行数を表示
(column-number-mode t)				   ;; 列数を表示
(transient-mark-mode 1)				   ;; リージョンに色をつける
(blink-cursor-mode t)                              ;; カーソルの点滅を行う
(menu-bar-mode -1)
(if window-system (progn
		    (tool-bar-mode -1)             ;; ツールバーを非表示
		    (scroll-bar-mode -1)           ;; スクロールバーを非表示
		    ))

;; Open At FullScreen
(set-frame-parameter nil 'fullscreen 'fullboth)

(require 'package)
(package-initialize)
(setq package-archives
      '(("gnu" . "http://elpa.gnu.org/packages/")
        ("melpa" . "http://melpa.org/packages/")
        ("org" . "http://orgmode.org/elpa/")))




(set-face-attribute 'default nil :family "VL Gothic" :height 120)
;; プロポーショナル フォント
(set-face-attribute 'variable-pitch nil :family "VL Gothic" :height 120)
;; 等幅フォント
(set-face-attribute 'fixed-pitch nil :family "VL Gothic" :height 120)
;; ツールチップ表示フォント
(set-face-attribute 'tooltip nil :family "VL Gothic" :height 90)

;; install use-package
(unless package-archive-contents (package-refresh-contents))
(unless (package-installed-p 'use-package)
  (package-install 'use-package))
(eval-when-compile
  (require 'use-package))

(use-package doom-themes
  :ensure t
  :init
  (load-theme 'doom-dracula t)
  :config
  (progn
    (setq doom-themes-enable-bold t
	  doom-themes-enable-italic t)
    (doom-themes-visual-bell-config)
    (doom-themes-neotree-config)
    (doom-themes-treemacs-config)
    (setq doom-neotree-line-spacing 0)
    (doom-themes-org-config)))



(use-package doom-modeline
      :custom
      (doom-modeline-buffer-file-name-style 'truncate-with-project)
      (doom-modeline-icon t)
      (doom-modeline-major-mode-icon nil)
      (doom-modeline-minor-modes nil)
      :hook
      (after-init . doom-modeline-mode)
      :config
      (line-number-mode 0)
      (column-number-mode 0)
      (doom-modeline-def-modeline 'main
    '(bar workspace-number window-number evil-state god-state ryo-modal xah-fly-keys matches buffer-info remote-host buffer-position parrot selection-info)
    '(misc-info persp-name lsp github debug minor-modes input-method major-mode process vcs checker)))

(use-package magit
  :ensure t
  :bind (("C-c g" . magit-status)
	 ("C-c C-g l" . magit-file-log)
	 ("C-c f" . magit-grep))
  :init
  (setq magit-last-seen-setup-instructions "1.4.0")
  (defadvice magit-status (around magit-fullscreen activate)
    (window-configuration-to-register :magit-fullscreen)
    ad-do-it
    (delete-other-windows))
  ;; Save Window Configure
  (defun my/magit-quit-session ()
    (interactive)
    (kill-buffer)
    (jump-to-register :magit-fullscreen))
  ;;(define-key magit-status-mode-map (kbd "q") 'my/magit-quit-session)
  (defadvice git-commit-commit (after move-to-magit-buffer activate)
    (delete-window))
  ;; Logの正確な時刻表示
  ;; http://rubikitch.com/2015/01/30/magit-time-format/
  (defun magit-format-duration--format-date (duration spec width)
    (format-time-string "%y-%m-%dT%H:%M:%S"
			(seconds-to-time (- (float-time) duration))))
  (advice-add 'magit-format-duration :override
	      'magit-format-duration--format-date)
  (defun magit-log-margin-set-timeunit-width--fixed ()
    (setq magit-log-margin-timeunit-width 12))
  (advice-add 'magit-log-margin-set-timeunit-width :override
	      'magit-log-margin-set-timeunit-width--fixed)
  (setq magit-log-margin-spec '(33 nil magit-duration-spec)))


(use-package flycheck
  :ensure t
  )



(use-package vue-mode
  :ensure t
  :config
  (setq auto-mode-alist  (cons '("\\.vue\\'" . vue-mode) auto-mode-alist))
  (eval-after-load 'vue-mode
    '(add-hook 'vue-mode-hook #'add-node-modules-path))
  (flycheck-add-mode 'javascript-eslint 'vue-mode)
  (flycheck-add-mode 'javascript-eslint 'vue-html-mode)
  (flycheck-add-mode 'javascript-eslint 'css-mode)
  (add-hook 'vue-mode-hook 'flycheck-mode))




(use-package swiper
  :ensure t
  :config
  (defun isearch-forward-or-swiper (use-swiper)
    (interactive "p")
    ;; (interactive "P") ;; 大文字のPだと，C-u C-sでないと効かない
    (let (current-prefix-arg)
      (call-interactively (if use-swiper 'swiper 'isearch-forward))))
  (global-set-key (kbd "C-s") 'isearch-forward-or-swiper)
  )


(use-package migemo
  :ensure t
  ;; :if (executable-find "cmigemo")
  :config
  ;; C/Migemo を使う場合は次のような設定を .emacs に加えます．
  (setq
   migemo-dictionary "/usr/share/migemo/utf-8/migemo-dict"
   migemo-command "/usr/bin/cmigemo"
   ;; migemo-command "cmigemo"
   migemo-options '("-q" "--emacs" "-i" "\a")
   migemo-user-dictionary nil
   migemo-regex-dictionary nil
   migemo-coding-system 'utf-8-unix)
  (migemo-init))




(use-package ivy
  :diminish
  :demand t
  :ensure t
  :bind (("C-x b" . ivy-switch-buffer)
         ("C-x B" . ivy-switch-buffer-other-window)
         ("M-H"   . ivy-resume))
  :bind (:map ivy-minibuffer-map
              ("<tab>" . ivy-alt-done)
              ("SPC"   . ivy-alt-done-or-space)
              ("C-d"   . ivy-done-or-delete-char)
              ("C-i"   . ivy-partial-or-done)
              ("C-r"   . ivy-previous-line-or-history)
              ("M-r"   . ivy-reverse-i-search))
  :bind (:map ivy-switch-buffer-map
              ("C-k" . ivy-switch-buffer-kill))
  :config
  (ivy-mode 1)
  (ivy-set-occur 'ivy-switch-buffer 'ivy-switch-buffer-occur))


(use-package avy-migemo
  :after ivy
  :ensure t
  :config
  (avy-migemo-mode 1)
  (setq avy-timeout-seconds nil)
  (require 'avy-migemo-e.g.swiper)
  (global-set-key (kbd "C-M-;") 'avy-migemo-goto-char-timer)
  ;;  (global-set-key (kbd "M-g m m") 'avy-migemo-mode)
  )



(use-package ivy-rich
    :defines (all-the-icons-mode-icon-alist all-the-icons-dir-icon-alist bookmark-alist)
    :functions (all-the-icons-icon-family
                all-the-icons-match-to-alist
                all-the-icons-auto-mode-match?
                all-the-icons-octicon
                all-the-icons-dir-is-submodule)
    :hook (ivy-rich-mode . (lambda ()
                             (setq ivy-virtual-abbreviate
                                   (or (and ivy-rich-mode 'abbreviate) 'name))))
    :preface
    (with-eval-after-load 'all-the-icons
      (add-to-list 'all-the-icons-mode-icon-alist
                   '(gfm-mode  all-the-icons-octicon "markdown" :v-adjust 0.0 :face all-the-icons-lblue)))

    (defun ivy-rich-bookmark-name (candidate)
      (car (assoc candidate bookmark-alist)))

    (defun ivy-rich-buffer-icon (candidate)
      "Display buffer icons in `ivy-rich'."
      (when (display-graphic-p)
        (when-let* ((buffer (get-buffer candidate))
                    (major-mode (buffer-local-value 'major-mode buffer))
                    (icon (if (and (buffer-file-name buffer)
                                   (all-the-icons-auto-mode-match? candidate))
                              (all-the-icons-icon-for-file candidate)
                            (all-the-icons-icon-for-mode major-mode))))
          (if (symbolp icon)
              (setq icon (all-the-icons-icon-for-mode 'fundamental-mode)))
          (unless (symbolp icon)
            (propertize icon
                        'face `(
                                :height 1.1
                                :family ,(all-the-icons-icon-family icon)
                                ))))))

    (defun ivy-rich-file-icon (candidate)
      "Display file icons in `ivy-rich'."
      (when (display-graphic-p)
        (let ((icon (if (file-directory-p candidate)
                        (cond
                         ((and (fboundp 'tramp-tramp-file-p)
                               (tramp-tramp-file-p default-directory))
                          (all-the-icons-octicon "file-directory"))
                         ((file-symlink-p candidate)
                          (all-the-icons-octicon "file-symlink-directory"))
                         ((all-the-icons-dir-is-submodule candidate)
                          (all-the-icons-octicon "file-submodule"))
                         ((file-exists-p (format "%s/.git" candidate))
                          (all-the-icons-octicon "repo"))
                         (t (let ((matcher (all-the-icons-match-to-alist candidate all-the-icons-dir-icon-alist)))
                              (apply (car matcher) (list (cadr matcher))))))
                      (all-the-icons-icon-for-file candidate))))
          (unless (symbolp icon)
            (propertize icon
                        'face `(
                                :height 1.1
                                :family ,(all-the-icons-icon-family icon)
                                ))))))

    (setq ivy-rich--display-transformers-list
          '(ivy-switch-buffer
            (:columns
             ((ivy-rich-buffer-icon (:width 1))
              (ivy-rich-candidate (:width 30))
              (ivy-rich-switch-buffer-size (:width 7))
              (ivy-rich-switch-buffer-indicators (:width 4 :face error :align right))
              (ivy-rich-switch-buffer-major-mode (:width 12 :face warning))
              (ivy-rich-switch-buffer-project (:width 15 :face success))
              (ivy-rich-switch-buffer-path (:width (lambda (x) (ivy-rich-switch-buffer-shorten-path x (ivy-rich-minibuffer-width 0.3))))))
             :predicate
             (lambda (cand) (get-buffer cand)))
            ivy-switch-buffer-other-window
            (:columns
             ((ivy-rich-buffer-icon)
              (ivy-rich-candidate (:width 30))
              (ivy-rich-switch-buffer-size (:width 7))
              (ivy-rich-switch-buffer-indicators (:width 4 :face error :align right))
              (ivy-rich-switch-buffer-major-mode (:width 12 :face warning))
              (ivy-rich-switch-buffer-project (:width 15 :face success))
              (ivy-rich-switch-buffer-path (:width (lambda (x) (ivy-rich-switch-buffer-shorten-path x (ivy-rich-minibuffer-width 0.3))))))
             :predicate
             (lambda (cand) (get-buffer cand)))
            counsel-M-x
            (:columns
             ((counsel-M-x-transformer (:width 50))
              (ivy-rich-counsel-function-docstring (:face font-lock-doc-face))))
            counsel-describe-function
            (:columns
             ((counsel-describe-function-transformer (:width 50))
              (ivy-rich-counsel-function-docstring (:face font-lock-doc-face))))
            counsel-describe-variable
            (:columns
             ((counsel-describe-variable-transformer (:width 50))
              (ivy-rich-counsel-variable-docstring (:face font-lock-doc-face))))
            counsel-find-file
            (:columns
             ((ivy-rich-file-icon)
              (ivy-rich-candidate (:width 30))))
            counsel-file-jump
            (:columns
             ((ivy-rich-file-icon)
              (ivy-rich-candidate (:width 30))))
            counsel-dired-jump
            (:columns
             ((ivy-rich-file-icon)
              (ivy-rich-candidate (:width 30))))
            counsel-git
            (:columns
             ((ivy-rich-file-icon)
              (ivy-rich-candidate (:width 30))))
            counsel-projectile-find-file
            (:columns
             ((ivy-rich-file-icon)
              (ivy-rich-candidate (:width 30))))
            counsel-projectile-find-dir
            (:columns
             ((ivy-rich-file-icon)
              (ivy-rich-candidate (:width 30))))
            counsel-recentf
            (:columns
             ((ivy-rich-file-icon)
              (ivy-rich-candidate (:width 90))
              (ivy-rich-file-last-modified-time (:face font-lock-comment-face))))
            counsel-bookmark
            (:columns
             ((ivy-rich-bookmark-type)
              (ivy-rich-bookmark-name (:width 40))
              (ivy-rich-bookmark-info)))
            ))
    :init
    (setq ivy-rich-parse-remote-buffer nil)
    (ivy-rich-mode 1))


(use-package undo-tree
  :ensure t
  :config
  (global-undo-tree-mode))


(use-package company
  :ensure t
  :config
  (global-company-mode) ; 全バッファで有効にする
  (setq company-transformers '(company-sort-by-backend-importance)) ;; ソート順
  (setq company-idle-delay 0) ; デフォルトは0.5
  (setq company-minimum-prefix-length 3) ; デフォルトは4
  (setq company-selection-wrap-around t) ; 候補の一番下でさらに下に行こうとすると一番上に戻る
  (setq completion-ignore-case t)
  (setq company-dabbrev-downcase nil)
  (global-set-key (kbd "C-M-i") 'company-complete)
  (define-key company-active-map (kbd "C-n") 'company-select-next) ;; C-n, C-pで補完候補を次/前の候補を選択
  (define-key company-active-map (kbd "C-p") 'company-select-previous)
  (define-key company-search-map (kbd "C-n") 'company-select-next)
  (define-key company-search-map (kbd "C-p") 'company-select-previous)
  (define-key company-active-map (kbd "C-s") 'company-filter-candidates) ;; C-sで絞り込む
  (define-key company-active-map (kbd "C-i") 'company-complete-selection) ;; TABで候補を設定
  (define-key company-active-map [tab] 'company-complete-selection) ;; TABで候補を設定
  (define-key company-active-map (kbd "C-f") 'company-complete-selection) ;; C-fで候補を設定
  (define-key emacs-lisp-mode-map (kbd "C-M-i") 'company-complete) ;; 各種メジャーモードでも C-M-iで company-modeの補完を使う
  )



(use-package recentf-ext
  :init
  (setq recentf-max-saved-items 2000)
  (setq recentf-exclude '(".recentf"))
  (setq recentf-auto-cleanup 10)
  (setq recentf-auto-save-timer (run-with-idle-timer 30 t 'recentf-save-list))
  (setq recentf-save-file "~/.emacs.d/.recentf")
  ;;(bind-key "C-x C-r" 'recentf-open-files)
  (define-key global-map [(super r)] 'counsel-recentf)
  (recentf-mode +1))



(use-package neotree
  :ensure t
  :config
  (setq neo-theme 'icon) ;; icon, classic等もあるよ！
  (setq neo-persist-show t) ;; delete-other-window で neotree ウィンドウを消さない
  (setq neo-smart-open t) ;; neotree ウィンドウを表示する毎に current file のあるディレクトリを表示する
  (global-set-key "\C-o" 'neotree-toggle))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(avy-migemo-function-names
   (quote
    (swiper--add-overlays-migemo
     (swiper--re-builder :around swiper--re-builder-migemo-around)
     (ivy--regex :around ivy--regex-migemo-around)
     (ivy--regex-ignore-order :around ivy--regex-ignore-order-migemo-around)
     (ivy--regex-plus :around ivy--regex-plus-migemo-around)
     ivy--highlight-default-migemo ivy-occur-revert-buffer-migemo ivy-occur-press-migemo avy-migemo-goto-char avy-migemo-goto-char-2 avy-migemo-goto-char-in-line avy-migemo-goto-char-timer avy-migemo-goto-subword-1 avy-migemo-goto-word-1 avy-migemo-isearch avy-migemo-org-goto-heading-timer avy-migemo--overlay-at avy-migemo--overlay-at-full)))
 '(package-selected-packages
   (quote
    (neotree recentf-ext company undo-tree vue-mode use-package magit ivy-rich flycheck doom-themes doom-modeline counsel avy-migemo add-node-modules-path))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
