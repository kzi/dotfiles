;;; init.el --- kzi's .emacs -*- coding: utf-8 ; lexical-binding: t -*-

;; Filename: init.el
;; Description: kzi's Emacs File
<<<<<<< HEAD
;; Package-Requires: ((emacs "24.3"))
;; Author: kzi <kzi416@gmail.com>
;; Created:  2012-12-18
;; Modified: 2015-04-01
=======
;; Package-Requires: ((emacs "24.4"))
;; Author: kzi <kzi416@gmail.com>
;; Created:  2012-12-18
;; Modified: 2015-02-20
>>>>>>> b049def98a866a24287fe26ae8c75bc4580ead07
;; Version: 1.01
;; Keywords: internal, local
;; Human-Keywords: Emacs Initialization
;; Namespace: emacs/
<<<<<<< HEAD
;; URL: https://github.com/kzi/dotfiles.git
=======
;; URL: https://github.com/kzi/dotfiles
>>>>>>> b049def98a866a24287fe26ae8c75bc4580ead07

;; This file is NOT part of GNU Emacs.

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
;; Boston, MA 02110-1301, USA.

;;; Commentary:
;;
;; Nobiscum Sexp. - S-expression is with us.
;;
;;; Code:


;;; パッケージインストールに関して
;;
;; Linux, MacについてはCaskを利用
;; WindowsについてはPackage.elを使った形となる。
;;
<<<<<<< HEAD
;; 要求推奨
;; migemo     (migemo)
;; gnu global (gtags, helm-gtags)
;; grep       (igrep)
;; node
=======
;; 必要ソフトウェア
;; migemo     (migemo)
;; gnu global (gtags, helm-gtags)
;; grep       (igrep)
;; VL Gothic Font (必須ではない)
;; 上記が揃わない場合、それぞれの処理が正常に動かない場合がある。
>>>>>>> b049def98a866a24287fe26ae8c75bc4580ead07
;;; 





;;; Proxy設定
;;
<<<<<<< HEAD
;; Proxy経由の時にコメントを解除。
=======
;; Proxy経由のDL時、Local端末で実行する場合は以下の
;; コメントを解除。
>>>>>>> b049def98a866a24287fe26ae8c75bc4580ead07
;;
;; 対象：url.el
;;;
;;(setq url-proxy-services '(
<<<<<<< HEAD
;;			   ("http" . "xxx.xxx.xxx.xxx:yyyy")
;;			   ("https" . "xxx.xxx.xxx.xxx:yyyy")))
=======
;;			   ("http" . "XXX.XXX.XXX.XXX:YYYY")
;;			   ("https" . "XXX.XXX.XXX.XXX:YYYY")))
>>>>>>> b049def98a866a24287fe26ae8c75bc4580ead07





;;; Emacsテーマ設定 
;;  
;; 自作テーマ利用のため以下の設定を記載。
;; その他設定に応じては、enable-theme実行後にload-themeにて反映。
;;;
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'jp-tranditional t)





;;; 一般的な設定
;; 
<<<<<<< HEAD
;; 
=======
;; 外部ライブラリに依存しないemacs固有設定のまとめ
>>>>>>> b049def98a866a24287fe26ae8c75bc4580ead07
;;
;;
;;;
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
<<<<<<< HEAD
=======
(global-set-key (kbd "C-h") 'delete-backward-char) ;; C-hをBackSpaceとする
>>>>>>> b049def98a866a24287fe26ae8c75bc4580ead07
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




;;; 軽量化処理
;; 
;; linum-mode利用時にEmacsが重くなるのでその回避策
;; 参考URL： http://d.hatena.ne.jp/daimatz/20120215/1329248780
;;;
(setq linum-delay t)
(defadvice linum-schedule (around my-linum-schedule () activate)
  (run-with-idle-timer 0.2 nil #'linum-update-current))





;;; Scratch Bufferを削除時に再生成
;; 
;; 参考URL : http://www.tkl.iis.u-tokyo.ac.jp/~ynaga/tips/elisp_tips.html#scratch
;;;
(defun my-make-scratch (&optional arg)
  (interactive)
  (progn
    ;; "*scratch*" を作成してbuffer-listに
    (set-buffer (get-buffer-create "*scratch*"))
    (funcall initial-major-mode)
    (erase-buffer)
    ;; scratchをorg-modeとして扱う
    (org-mode)
    (when (and initial-scratch-message (not inhibit-startup-message))
      (insert initial-scratch-message))
    (or arg (progn (setq arg 0)
                   (switch-to-buffer "*scratch*")))
    (cond ((= arg 0) (message "*scratch* is cleared up."))
          ((= arg 1) (message "another *scratch* is created")))))
(add-hook 'kill-buffer-query-functions
          (lambda ()
            (if (string= "*scratch*" (buffer-name))
                (progn (my-make-scratch 0) nil) t)))
(add-hook 'after-save-hook
          (lambda ()
            (unless (member (get-buffer "*scratch*") (buffer-list))
              (my-make-scratch 1))))





;;; Platform判別
;;
;; Emacsの起動プラットフォーム判別メソッド
;; os-typeに起動プラットフォーム、各種プラットフォーム名に
;; 真偽値が入る
;;;
(defvar os-type nil)
(cond ((string-match "apple-darwin" system-configuration) ;; Mac
       (setq os-type 'mac))
      ((string-match "linux" system-configuration)        ;; Linux
       (setq os-type 'linux))
      ((string-match "freebsd" system-configuration)      ;; FreeBSD
       (setq os-type 'bsd))
      ((string-match "mingw" system-configuration)        ;; Windows
       (setq os-type 'win)))
(defun mac? () (eq os-type 'mac))
(defun linux? () (eq os-type 'linux))
(defun bsd? () (eq os-type 'freebsd))
(defun win? () (eq os-type 'win))





;;; Encoding 
;;
;; Windowsの場合tplファイルの文字コードの誤認が発生するので強制指定
;; また、ファイル名をSJISに指定。WIN以外はクリップボードをUTF指定とする。
;; その他稼働環境はUTF-8に固定
;;;
(set-language-environment       'utf-8)
(prefer-coding-system           'utf-8)
(set-default-coding-systems     'utf-8)
(set-keyboard-coding-system     'utf-8)
(set-buffer-file-coding-system  'utf-8)
(set-terminal-coding-system     'utf-8)
(cond ((win?)
       (setq default-file-name-coding-system 'shift_jis)
       (modify-coding-system-alist 'file "\\.tpl\\'" 'utf-8-unix))
      (t (set-clipboard-coding-system 'utf-8)))





;;; Configure Font
;;
;; Mac, Win時の設定。
;; linuxについては、基本Terminal上からの起動になるので
;; Terminalの設定に依存させる形で対応
;;;
(cond ((mac?)
       (set-face-attribute 'default nil
			   :family "VL Gothic"
			   :height 120)
       (set-fontset-font nil 'japanese-jisx0208
			 (font-spec :family "VL Gothic"))
       (setq face-font-rescale-alist '(("VL Gothic" . 1.2))))
      ((win?)
       (set-face-attribute 'default nil
			   :family "VL Gothic"
			   :height 120)
       (set-fontset-font nil 'japanese-jisx0208
			 (font-spec :family "VL Gothic"))
       (setq face-font-rescale-alist '(("VL Gothic" . 1.2)))))





;;; バックアップファイル生成の定義
;; 
;; バックアップファイルの作成場所を統一化させて、
;; プロジェクトディレクトリの汚染を防ぐ。
;;;
(setq make-backup-files t)
(setq backup-directory-alist
  (cons (cons "\\.*$" (expand-file-name "~/.emacs.d/backup"))
    backup-directory-alist))
;; create auto-save file in ~/.emacs.d/backup
(setq auto-save-file-name-transforms
      `((".*" ,(expand-file-name "~/.emacs.d/backup/") t)))





;;; Cask及びPackage.elの設定処理 
;;
;; Windowsの場合はPackageList設定Lispを別途Include。
;; *nixについては、事前にcask installでパッケージを導入している。
;;
;; また、Caskの連携対策としてPalletをここでRequireし、追加パッケージを随時
;; Caskに追記されるようにしている。
;; 
;; @todo 何故かVMのEmacsでは、CaskのDependencyPackageである
;;       eieioがautoloadされていないので一旦明示的にRequireする。
;;;
(if (win?)
  (progn 
    (setq load-path (cons "~/.emacs.d/elisp" load-path))
    (let ((default-directory "~/.emacs.d/elpa/"))
      (setq load-path (cons default-directory load-path))
      (normal-top-level-add-subdirs-to-load-path))
    (load-file "~/.emacs.d/load-package.el"))
  (progn 
    (require 'eieio)
<<<<<<< HEAD
    (require 'cask)
=======
    (require 'cask "~/.cask/cask.el")
>>>>>>> b049def98a866a24287fe26ae8c75bc4580ead07
    (cask-initialize)))
(require 'pallet)





;;; use-package
;; 
;; PackageRequireの簡略化処理
;; use-packageが存在しない場合は何もしないように設定。
;;;
(require 'use-package)
(unless (require 'use-package nil t)
  (defmacro use-package (&rest args)))





<<<<<<< HEAD
;;; Key Bind
;;
;;
;;
;;;
(bind-key "C-h" 'delete-backward-char)





;;; exec-path-from-shell
;;
=======
;;; exec-path-from-shell
;; 
>>>>>>> b049def98a866a24287fe26ae8c75bc4580ead07
;; ログインシェルと、Emacs上のShellにおける
;; 環境変数の統一化。
;;;
(use-package exec-path-from-shell
<<<<<<< HEAD
  :if (not (win?))
  :config
  (exec-path-from-shell-initialize)
  (let ((envs '("PATH" "VIRTUAL_ENV" "GOROOT" "GOPATH")))
    (exec-path-from-shell-copy-envs envs)))





;;; migemo
;;
;;
;;
;;;
(use-package migemo
  :config
  (migemo-init)
  (load-library "migemo")
  (setq migemo-options '("-q" "--emacs"))
  (setq migemo-user-dictionary nil)
  (setq migemo-regex-dictionary nil)
  (setq migemo-coding-system 'utf-8-unix)
  (when (win?)
    (setq migemo-command "C:/Apps/cmigemo/cmigemo.exe")
    (setq migemo-dictionary "C:/Apps/cmigemo/dict/utf-8/migemo-dict"))
  (when (mac?)
    (setq migemo-command "/usr/local/bin/cmigemo")
    (setq migemo-dictionary "/usr/local/share/migemo/utf-8/migemo-dict"))
  (when (linux?)
    (setq migemo-command "/usr/local/bin/cmigemo")
    (setq migemo-dictionary "/usr/local/share/migemo/utf-8/migemo-dict")))




;;; igrep
;;
;;
;;
;;;
(use-package igrep
  :config
  (igrep-define lgrep (igrep-use-zgrep nil)(igre-regex-option "-n -Ou8"))
  (igrep-find-define lgrep (igrep-use-zgrep nil)(igrep-regex-option "-n -Ou8")))
=======
  :config
  (unless (win?)
    (exec-path-from-shell-initialize)
    (let ((envs '("PATH" "VIRTUAL_ENV" "GOROOT" "GOPATH")))
      (exec-path-from-shell-copy-envs envs))))
>>>>>>> b049def98a866a24287fe26ae8c75bc4580ead07





;;; eshell
<<<<<<< HEAD
;;
=======
;; 
>>>>>>> b049def98a866a24287fe26ae8c75bc4580ead07
;; 特記事項なし。
;;;





;;; Undo Tree
<<<<<<< HEAD
;;
=======
;; 
>>>>>>> b049def98a866a24287fe26ae8c75bc4580ead07
;; Undo 履歴のTree表示
;;
;;;
(use-package undo-tree
  :config (global-undo-tree-mode))



<<<<<<< HEAD


;;; 自動保存
;;
=======
;;; 自動保存
;; 
>>>>>>> b049def98a866a24287fe26ae8c75bc4580ead07
;; 最近開いたファイルの単一管理処理
;;
;; @todo recentfが存在しない場合、after-init-hookからのコマンド起動が何故か失敗する。。。
;;;
(use-package recentf-ext
<<<<<<< HEAD
  :init
=======
  :bind (("C-x C-r" . recentf-open-files))
  :config
>>>>>>> b049def98a866a24287fe26ae8c75bc4580ead07
  (setq recentf-max-saved-items 2000)
  (setq recentf-exclude '(".recentf"))
  (setq recentf-auto-cleanup 10)
  (setq recentf-auto-save-timer (run-with-idle-timer 30 t 'recentf-save-list))
  (setq recentf-save-file "~/.emacs.d/.recentf")
<<<<<<< HEAD
  (bind-key "C-x C-r" 'recentf-open-files)
  (recentf-mode +1))
=======
  (recentf-mode +1))
;;;; 起動画面で recentf を開く
;;(add-hook 'after-init-hook (lambda() (recentf-open-files)))
>>>>>>> b049def98a866a24287fe26ae8c75bc4580ead07





<<<<<<< HEAD
;;; auto-complete
;;
;; 補完のアレ
;;
;;
;;;
(use-package auto-complete
  :config  (global-auto-complete-mode t))





;;; fuzzy
;;
;; auto-completeにwrapさせてるから特記なし
;;
;;
;;;





;;; popup
;;
;;
;;
;;;

=======
;;; buffer move
;; 
;; Buffer位置変更の簡略化
;;;
(use-package buffer-move
  :bind (("M-g h" . buf-move-left)
	 ("M-g j" . buf-move-down)
	 ("M-g k" . buf-move-up)
	 ("M-g l" . buf-move-right)))
>>>>>>> b049def98a866a24287fe26ae8c75bc4580ead07




;;; popwin
;;
;;
<<<<<<< HEAD
;;
;;
;;;
(use-package popwin
  :config (setq display-buffer-function 'popwin:display-buffer))
=======
;;;
(use-package popwin
;;  :bind (("C-z" .  popwin:keymap))
  :config
  (setq display-buffer-function 'popwin:display-buffer)
  ;; Popup結果をページ単位でスクロールする処理
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
;; (define-key ac-complete-mode-map (kbd "C-v") 'ac-page-next)
;; (define-key ac-complete-mode-map (kbd "M-v") 'ac-page-previous)
)
>>>>>>> b049def98a866a24287fe26ae8c75bc4580ead07





<<<<<<< HEAD
;;; yasnippet
;;
;;
;;
;;;
(use-package yasnippet
  :config
  (yas-global-mode 1))





;;; buffer move
;;
;; Buffer位置変更の簡略化
;;;
(use-package buffer-move
  :bind (("M-g h" . buf-move-left)
	 ("M-g j" . buf-move-down)
	 ("M-g k" . buf-move-up)
	 ("M-g l" . buf-move-right)))


=======
;;; migemo
;; 
;;
;;
;;;
(use-package migemo
  :config
  (if (win?)
      (progn 
	(cond ((equal (executable-find "C:/Apps/cmigemo/cmigemo.exe") "C:/Apps/cmigemo/cmigemo.exe")
	       (setq migemo-command "C:/Apps/cmigemo/cmigemo.exe")
	       (setq migemo-options '("-q" "--emacs"))
	       (setq migemo-dictionary "C:/Apps/cmigemo/dict/utf-8/migemo-dict")
	       (setq migemo-user-dictionary nil) 
	       (setq migemo-regex-dictionary nil)
	       )))
    (progn 
      (setq migemo-command "/usr/local/bin/cmigemo")
      (setq migemo-options '("-q" "--emacs"))
      (setq migemo-dictionary "/usr/local/share/migemo/utf-8/migemo-dict")
      (setq migemo-user-dictionary nil)
      (setq migemo-coding-system 'utf-8-unix)
      (setq migemo-regex-dictionary nil)
      (load-library "migemo")
      (migemo-init))))
>>>>>>> b049def98a866a24287fe26ae8c75bc4580ead07



;;; MultipleCursor
;;
;;
;;
;;
;;;
(use-package multiple-cursors
<<<<<<< HEAD
  :ensure multiple-cursors
  :defer t
=======
>>>>>>> b049def98a866a24287fe26ae8c75bc4580ead07
  :config
  (defun mc/edit-lines-or-string-rectangle (s e)
    "C-x r tで同じ桁の場合にmc/edit-lines (C-u M-x mc/mark-all-dwim)"
    (interactive "r")
    (if (eq (save-excursion (goto-char s) (current-column))
	    (save-excursion (goto-char e) (current-column)))
	(call-interactively 'mc/edit-lines)
      (call-interactively 'string-rectangle)))
  (global-set-key (kbd "C-x r t") 'mc/edit-lines-or-string-rectangle)

  (defun mc/mark-all-dwim-or-mark-sexp (arg)
    "C-u C-M-SPCでmc/mark-all-dwim, C-u C-u C-M-SPCでC-u M-x mc/mark-all-dwim"
    (interactive "p")
    (cl-case arg
      (16 (mc/mark-all-dwim t))
      (4 (mc/mark-all-dwim nil))
      (1 (mark-sexp 1))))
<<<<<<< HEAD
    (global-set-key (kbd "C-M-SPC") 'mc/mark-all-dwim-or-mark-sexp))





;;; expand-region
;;
;;
;;
;;;
(use-package expand-region
  :ensure expand-region
  :bind (("C-+" . er/expand-region)
	 ("C-=" . er/contract-region)))





;;; git-gutter-mode
;;
;;;
(use-package git-gutter
  :init
  (global-git-gutter-mode t)
  (custom-set-variables
   '(git-gutter:window-width 2)
   '(git-gutter:modified-sign "🍻")
   '(git-gutter:added-sign "🍣")
   '(git-gutter:deleted-sign "🍅"))
  )
=======
  (global-set-key (kbd "C-M-SPC") 'mc/mark-all-dwim-or-mark-sexp))


;;; git-gutter-mode
;; 
;;;
(use-package git-gutter
  :config (global-git-gutter-mode t))
>>>>>>> b049def98a866a24287fe26ae8c75bc4580ead07





;;; magit
;;
;;
;;;
(use-package magit
<<<<<<< HEAD
  :bind (("C-c g" . magit-status)
	 ("C-c C-g l" . magit-file-log)
	 ("C-c f" . magit-grep))
  :init
  (setq magit-last-seen-setup-instructions "1.4.0")
=======
  :config
>>>>>>> b049def98a866a24287fe26ae8c75bc4580ead07
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





;;; Helm
<<<<<<< HEAD
;;
;;;
;;(eval-when-compile (require 'cl))
(use-package helm
;;  :ensure helm
;;  :diminish helm
  :bind (("C-r" . helm-for-files)
	 ("C-^" . helm-c-apropos)
	 ("C-;" . helm-resume)
	 ("M-s" . helm-occur)
	 ("M-x" . helm-M-x)
	 ("M-y" . helm-show-kill-ring)
	 ("M-z" . helm-do-grep))
  :config
  (require 'helm-config)
  (setq helm-idle-delay             0.3
	helm-input-idle-delay       0.1
	helm-candidate-number-limit 200)
  (helm-mode 1))





(use-package helm-descbinds
  :defer t
  :config
  (bind-key "<F1> b" 'helm-descbinds))
;;(require 'helm-command)





;;; auzu
=======
;; 
;;;
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


;;;
;;
;; auzu
>>>>>>> b049def98a866a24287fe26ae8c75bc4580ead07
;;
;;
;;
;;;
(use-package anzu
  :config
  (global-anzu-mode +1)
  (set-face-attribute 'anzu-mode-line nil
		      :foreground "yellow" :weight 'bold)
  (custom-set-variables
   '(anzu-mode-lighter "")
   '(anzu-deactivate-region t)
   '(anzu-search-threshold 1000)
   '(anzu-replace-to-string-separator " => ")))





;;;
;; open-junk-file
;;
;;
;;
;;;
(use-package open-junk-file
<<<<<<< HEAD
  :config
  (setq open-junk-file-format "~/.emacs.d/junk/%Y-%m-%d-%H%M%S.org")
  (bind-key "C-x j" 'open-junk-file))





;;; smart newline
;;
;;
;; http://rubikitch.com/2014/12/31/smart-newline/
;;;
(use-package smart-newline
  :config
  (require 'smart-newline)
  (global-set-key (kbd "C-m") 'smart-newline)
  (add-hook 'ruby-mode-hook 'smart-newline-mode)
  (add-hook 'emacs-lisp-mode-hook 'smart-newline-mode)
  (add-hook 'org-mode-hook 'smart-newline-mode)

  (defadvice smart-newline (around C-u activate)
    "C-uを押したら元のC-mの挙動をするようにした。org-modeなどで活用。"
    (if (not current-prefix-arg)
	ad-do-it
      (let (current-prefix-arg)
	(let (smart-newline-mode)
	  (call-interactively (key-binding (kbd "C-m"))))))))





;;; win-switch
;;
;;
;;
;;
;;;
(use-package win-switch
  :ensure win-switch
  :bind ("C-x o" . win-switch-dispatch)
  :config
  (setq win-switch-idle-time 0.75)
  ;; ウィンドウ切り替え
  (win-switch-set-keys '("k") 'up)
  (win-switch-set-keys '("j") 'down)
  (win-switch-set-keys '("h") 'left)
  (win-switch-set-keys '("l") 'right)
  (win-switch-set-keys '("o") 'next-window)
  (win-switch-set-keys '("p") 'previous-window)
  ;; リサイズ
  (win-switch-set-keys '("K") 'enlarge-vertically)
  (win-switch-set-keys '("J") 'shrink-vertically)
  (win-switch-set-keys '("H") 'shrink-horizontally)
  (win-switch-set-keys '("L") 'enlarge-horizontally)
  ;; 分割
  (win-switch-set-keys '("3") 'split-horizontally)
  (win-switch-set-keys '("2") 'split-vertically)
  (win-switch-set-keys '("0") 'delete-window)
  ;; その他
  (win-switch-set-keys '(" ") 'other-frame)
  (win-switch-set-keys '("u" [return]) 'exit)
  (win-switch-set-keys '("\M-\C-g") 'emergency-exit))





;;; php-mode
;;
;;
;;
;;;
=======
  :bind (("C-x j" . open-junk-file))
  :config
  (setq open-junk-file-format "~/.emacs.d/junk/%Y-%m-%d-%H%M%S.org"))


;; yasnippet
;;
;;
(use-package yasnippet
  :config
  (yas-global-mode 1))


;;
;; php
;;

>>>>>>> b049def98a866a24287fe26ae8c75bc4580ead07
(use-package php-mode
  :config
  (setq auto-mode-alist  (cons '("\\.php\\'" . php-mode) auto-mode-alist))
  (setq auto-mode-alist  (cons '("\\.ctp\\'" . php-mode) auto-mode-alist))
  (setq auto-mode-alist  (cons '("\\.thtml\\'" . php-mode) auto-mode-alist))
  (setq auto-mode-alist  (cons '("\\.tpl\\'" . php-mode) auto-mode-alist))
  (setq auto-mode-alist  (cons '("\\.inc\\'" . php-mode) auto-mode-alist))
  (add-hook 'php-mode-hook (lambda ()
			     (php-enable-symfony2-coding-style)
			     (require 'php-completion)
			     (php-completion-mode t)
			     (define-key php-mode-map (kbd "C-o") 'phpcmp-complete) ;php-completionの補完実行キーバインドの設定
			     (make-local-variable 'ac-sources)
			     (setq ac-sources '(
						ac-source-words-in-same-mode-buffers
						ac-source-php-completion
						ac-source-filename
						)))))
(add-hook 'php-mode-hook 'flycheck-mode)
<<<<<<< HEAD
(require 'flymake-phpcs)
(add-hook 'php-mode-hook 'flymake-phpcs-load)
(custom-set-variables '(flymake-phpcs-standard "Symfony2"))



=======
>>>>>>> b049def98a866a24287fe26ae8c75bc4580ead07



;;
;; JavaScript
;;
(use-package js2-mode
  :config (add-to-list 'auto-mode-alist '("\\.\\(js\\|json\\)$" . js2-mode)))
<<<<<<< HEAD
(add-hook 'js2-mode-hook '(lambda ()
			    (require 'flymake-jshint)
			    (flymake-jshint-load)))




;;;
;; Ruby
;;
;;
;;;
(use-package ruby-mode
  :config
  (autoload 'ruby-mode "ruby-mode" "Mode for editing ruby source files" t)
  (setq auto-mode-alist  (append '(("\\.rb$" . ruby-mode)) auto-mode-alist))
  (setq interpreter-mode-alist (append '(("ruby" . ruby-mode)) interpreter-mode-alist))
  (autoload 'run-ruby "inf-ruby" "Run an inferior Ruby process")
  (autoload 'inf-ruby-keys "inf-ruby" "Set local key defs for inf-ruby in ruby-mode")
  ;; ruby-mode indent
  (setq ruby-deep-indent-paren-style nil))





;;;
;; ruby-electric
;;
;;
;;;
(use-package ruby-electric
  :config
  (add-hook 'ruby-mode-hook '(lambda () (ruby-electric-mode t))))




=======



;;
;; Ruby
;;
;; ruby-mode
(autoload 'ruby-mode "ruby-mode" "Mode for editing ruby source files" t)
(setq auto-mode-alist  (append '(("\\.rb$" . ruby-mode)) auto-mode-alist))
(setq interpreter-mode-alist (append '(("ruby" . ruby-mode)) interpreter-mode-alist))
(autoload 'run-ruby "inf-ruby" "Run an inferior Ruby process")
(autoload 'inf-ruby-keys "inf-ruby" "Set local key defs for inf-ruby in ruby-mode")
  
;; ruby-mode indent
(setq ruby-deep-indent-paren-style nil)

;; ruby-electric
(require 'ruby-electric)
(add-hook 'ruby-mode-hook '(lambda () (ruby-electric-mode t)))
>>>>>>> b049def98a866a24287fe26ae8c75bc4580ead07

;; Smart Compile
(require 'smart-compile)
(global-set-key (kbd "C-x c") 'smart-compile)
(global-set-key (kbd "C-x C-x") (kbd "C-x c C-m"))

<<<<<<< HEAD




;; ruby-block
(use-package ruby-block
  :config
  (ruby-block-mode t)
  (setq ruby-block-highlight-toggle t)
  (add-hook 'ruby-mode-hook 'flycheck-mode))


=======
;; ruby-block
(require 'ruby-block)
(ruby-block-mode t)
(setq ruby-block-highlight-toggle t)
(add-hook 'ruby-mode-hook 'flycheck-mode)
>>>>>>> b049def98a866a24287fe26ae8c75bc4580ead07



;;;
;;
;; Web Mode
;;
;;
;;
<<<<<<< HEAD
;;;
=======
;;; 
>>>>>>> b049def98a866a24287fe26ae8c75bc4580ead07
(use-package web-mode
  :config
  (add-to-list 'auto-mode-alist '("\\.ctp\\'"   . web-mode)) ;; CakePHP 2.X
  (add-to-list 'auto-mode-alist '("\\.tpl\\'"   . web-mode)) ;; Smarty
  (add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.html.twig\\'" . web-mode))
  (defun web-mode-hook ()
    (setq web-mode-markup-indent-offset 4)
    (setq web-mode-css-indent-offset 4)
    (setq web-mode-code-indent-offset 4)
    (setq web-mode-engines-alist
	  '(("php"    . "\\.ctp\\'")
<<<<<<< HEAD
	    ("php"    . "\\.tpl\\'"))
=======
	    ("php"    . "\\.tpl\\'"))  
>>>>>>> b049def98a866a24287fe26ae8c75bc4580ead07
	  )
    )
  (add-hook 'web-mode-hook  'web-mode-hook))



<<<<<<< HEAD


=======
>>>>>>> b049def98a866a24287fe26ae8c75bc4580ead07
;;
;; MarkDown
;;
(use-package markdown-mode
<<<<<<< HEAD
  :mode
  ("\\.md\\'" . gfm-mode))

=======
	     :mode ("\\.md\\'" . gfm-mode))
;;(autoload 'markdown-mode "markdown-mode.el" "Major mode for editing Markdown files" t)
;;(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
;;(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
>>>>>>> b049def98a866a24287fe26ae8c75bc4580ead07



(use-package helm-gtags
  :config
  (add-hook 'helm-gtags-mode-hook
<<<<<<< HEAD
	    '(lambda ()
	       ;;入力されたタグの定義元へジャンプ
	       (local-set-key (kbd "M-t") 'helm-gtags-find-tag)
	       ;;入力タグを参照する場所へジャンプ
	       (local-set-key (kbd "M-r") 'helm-gtags-find-rtag)
=======
	    '(lambda ()  
	       ;;入力されたタグの定義元へジャンプ
	       (local-set-key (kbd "M-t") 'helm-gtags-find-tag)
	       ;;入力タグを参照する場所へジャンプ
	       (local-set-key (kbd "M-r") 'helm-gtags-find-rtag)  
>>>>>>> b049def98a866a24287fe26ae8c75bc4580ead07
	       ;;入力したシンボルを参照する場所へジャンプ
	       (local-set-key (kbd "M-s") 'helm-gtags-find-symbol)
	       ;;タグ一覧からタグを選択し, その定義元にジャンプする
	       (local-set-key (kbd "M-l") 'helm-gtags-select)
	       ;;ジャンプ前の場所に戻る
	       (local-set-key (kbd "C-t") 'helm-gtags-pop-stack)
	       (setq helm-gtags-path-style 'root)
	       (setq helm-gtags-auto-update t)))
  (add-hook 'php-mode-hook 'helm-gtags-mode))



;;;
;; Gtag Update
;;
;;
;;;
(defun my-c-mode-update-gtags ()
  (let* ((file (buffer-file-name (current-buffer)))
<<<<<<< HEAD
	 (dir (directory-file-name (file-name-directory file))))
    (when (executable-find "global")
      (start-process "gtags-update" nil
		     "global" "-uv"))))
=======
     (dir (directory-file-name (file-name-directory file))))
    (when (executable-find "global")
      (start-process "gtags-update" nil
             "global" "-uv"))))
>>>>>>> b049def98a866a24287fe26ae8c75bc4580ead07

;;(add-hook 'after-save-hook
;;      'my-c-mode-update-gtags)




<<<<<<< HEAD

=======
  
>>>>>>> b049def98a866a24287fe26ae8c75bc4580ead07

;;;
;; Projectile
;;
;;
;;;
(projectile-global-mode)
(setq projectile-completion-system 'helm)
(helm-projectile-on)
<<<<<<< HEAD
=======



;;
;; smart newline
;; http://rubikitch.com/2014/12/31/smart-newline/
(use-package smart-newline
  :config
  (require 'smart-newline)
  (global-set-key (kbd "C-m") 'smart-newline)
  (add-hook 'ruby-mode-hook 'smart-newline-mode)
  (add-hook 'emacs-lisp-mode-hook 'smart-newline-mode)
  (add-hook 'org-mode-hook 'smart-newline-mode)

  (defadvice smart-newline (around C-u activate)
    "C-uを押したら元のC-mの挙動をするようにした。org-modeなどで活用。"
    (if (not current-prefix-arg)
	ad-do-it
      (let (current-prefix-arg)
	(let (smart-newline-mode)
	  (call-interactively (key-binding (kbd "C-m"))))))))




(use-package win-switch
  :config
  ;;; 0.75秒間受け付けるタイマー
  (setq win-switch-idle-time 0.75)
  ;;; 好きなキーを複数割り当てられる
  ;; ウィンドウ切り替え
  (win-switch-set-keys '("k") 'up)
  (win-switch-set-keys '("j") 'down)
  (win-switch-set-keys '("h") 'left)
  (win-switch-set-keys '("l") 'right)
  (win-switch-set-keys '("o") 'next-window)
  (win-switch-set-keys '("p") 'previous-window)
  ;; リサイズ
  (win-switch-set-keys '("K") 'enlarge-vertically)
  (win-switch-set-keys '("J") 'shrink-vertically)
  (win-switch-set-keys '("H") 'shrink-horizontally)
  (win-switch-set-keys '("L") 'enlarge-horizontally)
  ;; 分割
  (win-switch-set-keys '("3") 'split-horizontally)
  (win-switch-set-keys '("2") 'split-vertically)
  (win-switch-set-keys '("0") 'delete-window)
  ;; その他
  (win-switch-set-keys '(" ") 'other-frame)
  (win-switch-set-keys '("u" [return]) 'exit)
  (win-switch-set-keys '("\M-\C-g") 'emergency-exit)
  ;; C-x oを置き換える
  (global-set-key (kbd "C-x o") 'win-switch-dispatch))
>>>>>>> b049def98a866a24287fe26ae8c75bc4580ead07
