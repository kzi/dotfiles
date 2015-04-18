;;; jp-tranditional.el --- jp tranditional theme

;; Copyright (C) 2013 by kzi

;; Author: kzi  <kzi416@gmail.com>
;; URL: http://sugar-less.net/
;; Version: 0.01

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:
;;
;; Port of hober theme from `color-themes'

;;; Code:

(deftheme jp-tranditional
  "jp-tranditional theme")

(custom-theme-set-faces
 'jp-tranditional
 '(default ((t (:background "#0C0C0C" :foreground "#FFFFFB"))))
 '(bold ((t (:bold t :weight bold))))
 '(bold-italic ((t (:italic t :bold t :slant italic :weight bold))))
 '(border ((t (:background "#0C0C0C"))))
 '(buffer-menu-buffer ((t (:bold t :weight bold))))
 '(button ((t (:underline t :foreground "#69B0AC"))))
 '(calendar-today-face ((t (:underline t))))
 '(completions-annotations ((t (:italic t :slant italic))))
 '(completions-common-part ((t (:foreground "#FFFFFB" :background "#0C0C0C"))))
 '(completions-first-difference ((t (:bold t :weight bold))))
 '(cperl-array-face ((t (:bold t :background "#F7D94C"
                               :foreground "#005CAF" :weight bold))))
 '(cperl-hash-face ((t (:italic t :bold t :background "#F7D94C"
                                :foreground "#EB7A77" :slant italic :weight bold))))
 '(cperl-nonoverridable-face ((t (:foreground "#86C166"))))
 '(cursor ((t (:background "#FBE251"))))
 '(diary-face ((t (:foreground "#EB7A77"))))

 '(dired-directory ((t (:foreground "#005CAF"))))
 '(dired-flagged ((t (:bold t :weight bold :foreground "#F596AA"))))
 '(dired-header ((t (:foreground "#F05E1C"))))
 '(dired-ignored ((t (:foreground "#656765"))))
 '(dired-mark ((t (:foreground "#227D51"))))
 '(dired-marked ((t (:bold t :weight bold :foreground "#C1693C"))))
 '(dired-perm-write ((t (:foreground "#EB7A77"))))
 '(dired-symlink ((t (:foreground "#2EA9DF"))))
 '(dired-warning ((t (:bold t :weight bold :foreground "#EB7A77"))))

 '(error ((t (:bold t :foreground "#F596AA" :weight bold))))
 '(escape-glyph ((t (:foreground "#69B0AC"))))
 '(excerpt ((t (:italic t :slant italic))))
 '(file-name-shadow ((t (:foreground "#656765"))))
 '(fixed ((t (:bold t :weight bold))))
 '(fixed-pitch ((t (:family "Monospace"))))
 '(flyspell-duplicate-face ((t (:bold t :foreground "#E9CD4C" :underline t :weight bold))))
 '(flyspell-incorrect-face ((t (:bold t :foreground "#F75CAF" :underline t :weight bold))))

 '(font-lock-builtin-face ((t (:foreground "#F05E1C"))))
 '(font-lock-comment-delimiter-face ((t (:foreground "#656765"))))
 '(font-lock-comment-face ((t (:foreground "#656765"))))
 '(font-lock-constant-face ((t (:foreground "#00896C"))))
 '(font-lock-doc-face ((t (:foreground "#FBE251"))))

 '(font-lock-function-name-face ((t (:foreground "#005CAF"))))
 '(font-lock-keyword-face ((t (:foreground "#2EA9DF"))))
 '(font-lock-negation-char-face ((t (nil))))
 '(font-lock-preprocessor-face ((t (:foreground "#E83015"))))
 '(font-lock-regexp-grouping-backslash ((t (:bold t :weight bold))))
 '(font-lock-regexp-grouping-construct ((t (:bold t :weight bold))))
 '(font-lock-string-face ((t (:foreground "#86C166"))))
 '(font-lock-type-face ((t (:foreground "#005CAF"))))
 '(font-lock-variable-name-face ((t (:bold t :foreground "#CB4042" :weight bold))))
 '(font-lock-warning-face ((t (:bold t :foreground "#FFFFFB" :weight bold))))

 '(fringe ((t (:background "#BDC0BA"))))
 '(glyphless-char ((t (:height 0.6))))

 '(gnus-cite-attribution-face ((t (:italic t :slant italic))))
 '(gnus-cite-face-1 ((t (:foreground "#F0A986"))))
 '(gnus-cite-face-2 ((t (:foreground "#F05E1C"))))
 '(gnus-cite-face-3 ((t (:foreground "#005CAF"))))
 '(gnus-cite-face-4 ((t (:foreground "#90B44B"))))
 '(gnus-cite-face-5 ((t (:foreground "#CB1B45"))))
 '(gnus-cite-face-list ((t (:bold t :foreground "#EB7A77" :weight bold))))
 '(gnus-emphasis-bold ((t (:bold t :weight bold))))
 '(gnus-emphasis-bold-italic ((t (:italic t :bold t :slant italic :weight bold))))
 '(gnus-emphasis-italic ((t (:italic t :slant italic))))
 '(gnus-emphasis-underline ((t (:underline t))))
 '(gnus-emphasis-underline-bold ((t (:bold t :underline t :weight bold))))
 '(gnus-emphasis-underline-bold-italic ((t (:italic t :bold t :underline t
                                                    :slant italic :weight bold))))
 '(gnus-emphasis-underline-italic ((t (:italic t :underline t :slant italic))))
 '(gnus-group-mail-1-empty-face ((t (:foreground "#C1328E"))))
 '(gnus-group-mail-1-face
   ((t (:bold t :foreground "#C1328E" :weight bold))))
 '(gnus-group-mail-2-empty-face
   ((t (:foreground "#C1328E"))))
 '(gnus-group-mail-2-face ((t (:bold t :foreground "#C1328E" :weight bold))))
 '(gnus-group-mail-3-empty-face ((t (:foreground "#E03C8A"))))
 '(gnus-group-mail-3-face ((t (:bold t :foreground "#E03C8A" :weight bold))))
 '(gnus-group-mail-low-empty-face ((t (:foreground "#C1328E"))))
 '(gnus-group-mail-low-face
   ((t (:bold t :foreground "#C1328E" :weight bold))))
 '(gnus-group-news-1-empty-face ((t (:foreground "#0F4C3A"))))
 '(gnus-group-news-1-face ((t (:bold t :foreground "#0F4C3A" :weight bold))))
 '(gnus-group-news-2-empty-face ((t (:foreground "#5DAC81"))))
 '(gnus-group-news-2-face ((t (:bold t :foreground "#5DAC81" :weight bold))))
 '(gnus-group-news-3-empty-face ((t (nil))))
 '(gnus-group-news-3-face ((t (:bold t :weight bold))))
 '(gnus-group-news-low-empty-face ((t (:foreground "#0F4C3A"))))
 '(gnus-group-news-low-face ((t (:bold t :foreground "#0F4C3A" :weight bold))))
 '(gnus-header-content-face ((t (:italic t :foreground "#005CAF" :slant italic))))
 '(gnus-header-from-face ((t (:foreground "#F05E1C"))))
 '(gnus-header-name-face ((t (:foreground "#FFFFFB"))))
 '(gnus-header-newsgroups-face ((t (:italic t :foreground "#005CAF" :slant italic))))
 '(gnus-header-subject-face ((t (:foreground "#005CAF"))))
 '(gnus-signature-face ((t (:foreground "#FFFFFB"))))
 '(gnus-splash-face ((t (:foreground "#0F4C3A"))))
 '(gnus-summary-cancelled-face ((t (:background "#0C0C0C" :foreground "#FBE251"))))
 '(gnus-summary-high-ancient-face
   ((t (:bold t :foreground "#2EA9DF" :weight bold))))
 '(gnus-summary-high-read-face
   ((t (:bold t :foreground "#0F4C3A" :weight bold))))
 '(gnus-summary-high-ticked-face
   ((t (:bold t :foreground "#B54434" :weight bold))))
 '(gnus-summary-high-unread-face
   ((t (:bold t :weight bold))))
 '(gnus-summary-low-ancient-face
   ((t (:italic t :foreground "#2EA9DF" :slant italic))))
 '(gnus-summary-low-read-face
   ((t (:italic t :foreground "#0F4C3A" :slant italic))))
 '(gnus-summary-low-ticked-face
   ((t (:italic t :foreground "#B54434" :slant italic))))
 '(gnus-summary-low-unread-face
   ((t (:italic t :slant italic))))
 '(gnus-summary-normal-ancient-face
   ((t (:foreground "#2EA9DF"))))
 '(gnus-summary-normal-read-face ((t (:foreground "#0F4C3A"))))
 '(gnus-summary-normal-ticked-face ((t (:foreground "#B54434"))))
 '(gnus-summary-normal-unread-face ((t (nil))))
 '(gnus-summary-selected-face ((t (:underline t))))

 '(header-line ((t (:box (:line-width -1 :style released-button)
                         :background "#787878" :foreground "#434343" :box nil))))
 '(help-argument-name ((t (nil))))
 '(highlight ((t (:background "#FFFFFB" :foreground "#0C0C0C"))))
 '(highlight-changes-delete-face ((t (:foreground "#EB7A77" :underline t))))
 '(highlight-changes-face ((t (:foreground "#EB7A77"))))
 '(holiday-face ((t (:background "#F596AA"))))
 '(isearch ((t (:background "#F596AA" :foreground "#7B4832"))))
 '(isearch-fail ((t (:background "#EB7A77"))))
 '(italic ((t (:italic t :slant italic))))
 '(lazy-highlight ((t (:background "#00AA90"))))
 '(link ((t (:foreground "#69B0AC" :underline t))))
 '(link-visited ((t (:underline t :foreground "#E16B8C"))))
 '(makefile-space-face ((t (:background "#C1328E"))))
 '(match ((t (:background "#2EA9DF"))))
 '(menu ((t (nil))))

 '(message-cited-text-face ((t (:foreground "#FFFFFB"))))
 '(message-header-cc-face ((t (:foreground "#005CAF"))))
 '(message-header-name-face ((t (:foreground "#FFFFFB"))))
 '(message-header-newsgroups-face
   ((t (:bold t :foreground "#F05E1C" :weight bold))))
 '(message-header-other-face ((t (:foreground "#0B346E"))))
 '(message-header-subject-face
   ((t (:bold t :foreground "#005CAF" :weight bold))))
 '(message-header-to-face ((t (:bold t :foreground "#005CAF" :weight bold))))
 '(message-header-xheader-face ((t (:foreground "#005CAF"))))
 '(message-separator-face ((t (:foreground "#7B4832"))))

 '(minibuffer-prompt ((t (:foreground "#69B0AC"))))
 '(mode-line
   ((t (:background "#4E4F97" :foreground "#FFFFFB"
                    :box (:line-width -1 :style released-button)))))
 '(mode-line-buffer-id ((t (:bold t :background "#4E4F97"
                                  :foreground "#FFFFFB" :weight bold))))
 '(mode-line-emphasis ((t (:bold t :weight bold))))
 '(mode-line-highlight
   ((t (:box (:line-width 2 :color "#787D7B" :style released-button)))))
 '(mode-line-inactive
   ((t (:background "#828282"
                    :foreground "#4F4F48"
                    :box (:line-width -1 :color "#787D7B" :style nil)
                    :weight light))))
 '(modeline-mousable ((t (:background "#4E4F97" :foreground "#FFFFFB"))))
 '(modeline-mousable-minor-mode
   ((t (:background "#4E4F97" :foreground "#FFFFFB"))))

 '(mouse ((t (:background "#0C0C0C"))))
 '(next-error ((t (:foreground "#FFFFFB" :background "#4E4F97"))))
 '(nobreak-space ((t (:foreground "#69B0AC" :underline t))))
 '(query-replace ((t (:foreground "#7B4832" :background "#F596AA"))))
 '(region ((t (:background "#4E4F97" :foreground "#FFFFFB"))))
 '(scroll-bar ((t (nil))))
 '(secondary-selection ((t (:background "#00AA90"))))

 '(sgml-doctype-face ((t (:foreground "#F05E1C"))))
 '(sgml-end-tag-face ((t (:foreground "#90B44B"))))
 '(sgml-entity-face ((t (:foreground "#E9CD4C"))))
 '(sgml-ignored-face ((t (:background "#656765" :foreground "#787878"))))
 '(sgml-sgml-face ((t (:foreground "#FBE251"))))
 '(sgml-start-tag-face ((t (:foreground "#90B44B"))))

 '(shadow ((t (:foreground "#656765"))))
 '(show-paren-match-face ((t (:background "#6F3381" :foreground "#FFFFFB"))))
 '(show-paren-mismatch-face ((t (:background "#EB7A77" :foreground "#FFFFFB"))))
 '(success ((t (:bold t :foreground "#227D51" :weight bold))))

 '(term-black ((t (:foreground "#0C0C0C"))))
 '(term-blackbg ((t (:background "#0C0C0C"))))
 '(term-blue ((t (:foreground "#005CAF"))))
 '(term-bluebg ((t (:background "#005CAF"))))
 '(term-bold ((t (:bold t :weight bold))))
 '(term-cyan ((t (:foreground "#69B0AC"))))
 '(term-cyanbg ((t (:background "#69B0AC"))))
 '(term-default-bg ((t (nil))))
 '(term-default-bg-inv ((t (nil))))
 '(term-default-fg ((t (nil))))
 '(term-default-fg-inv ((t (nil))))
 '(term-green ((t (:foreground "#227D51"))))
 '(term-greenbg ((t (:background "#227D51"))))
 '(term-invisible ((t (nil))))
 '(term-invisible-inv ((t (nil))))
 '(term-magenta ((t (:foreground "#E03C8A"))))
 '(term-magentabg ((t (:background "#E03C8A"))))
 '(term-red ((t (:foreground "#EB7A77"))))
 '(term-redbg ((t (:background "#EB7A77"))))
 '(term-underline ((t (:underline t))))
 '(term-white ((t (:foreground "#FFFFFB"))))
 '(term-whitebg ((t (:background "#FFFFFB"))))
 '(term-yellow ((t (:foreground "#FBE251"))))
 '(term-yellowbg ((t (:background "#FBE251"))))

 '(tool-bar
   ((t (:background "#535953" :foreground "#0C0C0C"
                    :box (:line-width 1 :style released-button)))))
 '(tooltip
   ((t (:family "Sans Serif" :background "#F7D94C" :foreground "#0C0C0C"))))
 '(trailing-whitespace ((t (:background "#EB7A77"))))
 '(underline ((t (:underline t))))
 '(variable-pitch ((t (:family "Sans Serif"))))
 '(vertical-border ((t (nil))))
 '(warning ((t (:bold t :foreground "#C1693C" :weight bold))))

 '(widget-button ((t (:bold t :weight bold))))
 '(widget-button-pressed ((t (:background "#0C0C0C" :foreground "#EB7A77"))))
 '(widget-documentation ((t (:background "#FFFFFB" :foreground "#0F4C3A"))))
 '(widget-field ((t (:background "#4F4F48" :foreground "#0C0C0C"))))
 '(widget-inactive ((t (:background "#EB7A77" :foreground "#787878"))))
 '(widget-single-line-field ((t (:background "#4F4F48" :foreground "#0C0C0C"))))

 '(zmacs-region ((t (:background "#4E4F97" :foreground "#FFFFFB")))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'jp-tranditional)
