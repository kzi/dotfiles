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
(set-language-environment 'Japanese)               ; Set Language.
(prefer-coding-system 'utf-8)                      ; Set Encoding.
(setq indent-line-function 'indent-relative-maybe) ; Shift + Arrow Key.
(setq inhibit-startup-message t)                   ; hide start message.
(setq backup-inhibited t)                          ; Don't make Backup file.
(setq tab-width 4)                                 ; Tab
;(setq pc-select-selection-keys-only t)             ;
;(pc-selectiont-mode 1)
(setq ns-pop-up-frames nil)
(hl-line-mode 1)                                   ; 
(savehist-mode 1)                                  ; history-list
(setq-default save-place t)
(require 'saveplace)							   
(show-paren-mode 1)
(global-set-key (kbd "C-h") 'delete-backward-char) ; C-hをBackSpaceとする
(setq display-time-day-and-date t)		   ; 日時を表示する
(setq display-time-24hr-format t)		   ; 表示フォーマットを24時間表示
(display-time-mode t)
(line-number-mode t)				   ; 行数を表示
(column-number-mode t)				   ; 列数を表示
(transient-mark-mode 1)				   ; リージョンに色をつける
(tool-bar-mode -1)				   ; ツールバーを非表示
(scroll-bar-mode -1)				   ; スクロールバーを非表示
(setq truncate-lines t)                            ; 折り返しはしない
(setq truncate-partial-width-windows t)
(blink-cursor-mode t)                              ; カーソルの点滅を行う


;; Configure encode
;;
(set-language-environment 'Japanese)
(prefer-coding-system           'utf-8)
(setq buffer-file-coding-system 'utf-8)
(set-buffer-file-coding-system  'utf-8)
(set-terminal-coding-system     'utf-8)
(set-keyboard-coding-system     'utf-8)
(set-clipboard-coding-system    'utf-8)
