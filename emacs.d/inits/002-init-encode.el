;;==============================================================================
;; Personal Configure base.el
;;------------------------------------------------------------------------------
;; [Create]      2010-01-01
;; [Last Update] 2013-09-08
;; [Author]      kzi <kzi416@gmail.com>
;;------------------------------------------------------------------------------
;; [Comment]
;;   * It changes to shape corresponding to Cocoa Emacs. 
;;   * fix....
;;   * Add configure for Windows
;;==============================================================================
;(set-language-environment 'Japanese)               ; Set Language.
(set-language-environment 'utf-8)
(prefer-coding-system 'utf-8)                      ; Set Encoding.
(set-default-coding-systems     'utf-8)
(set-keyboard-coding-system     'utf-8)
(set-buffer-file-coding-system  'utf-8)
(set-terminal-coding-system     'utf-8)


;; 各種例外定義
;; Windowsの場合tplファイルの文字コードの誤認が発生するので強制指定
;; また、ファイル名をSJISに指定。WIN以外はクリップボードをUTF指定とする。
(cond ((win?)
	   (setq default-file-name-coding-system 'shift_jis)
	   (modify-coding-system-alist 'file "\\.tpl\\'" 'utf-8-unix))
	  (t (set-clipboard-coding-system 'utf-8)))
