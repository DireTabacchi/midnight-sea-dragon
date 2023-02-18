;;; doom-midnight-sea-dragon-theme.el --- Flying over the midnight sea.
;;; commentary:
;;; Requires autothemer
;;; code:

(require 'autothemer)

(autothemer-deftheme
 midnight-sea-dragon "Flying over the midnight sea."
 ((((class color) (min-colors #xFFFFFF)))

 ;; Palette
 (dark0 "#01040d")
 (dark1 "#050a1a")
 (dark2 "#0b1227")
 (dark3 "#131b33")
 (dark4 "#1f2740")
 (dark5 "#2c344d")

 (light0 "#ffffff")
 (light1 "#dadde6")
 (light2 "#b8bdcc")
 (light3 "#989eb3")
 (light4 "#7a8299")
 (light5 "#606880")

 (orange       "#bf5726")
 (light-orange "#d95316")

 (black   "#030b1a")
 (red     "#b31212")
 (green   "#169908")
 (yellow  "#de591c")
 (blue    "#1369bf")
 (magenta "#bf0abf")
 (cyan    "#0ab6bf")
 (white   "#828b99")

 (light-black   "#262f3f")
 (light-red     "#f23030")
 (light-green   "#31d821")
 (light-yellow  "#f2dd00")
 (light-blue    "#3399ff")
 (light-magenta "#ff27ff")
 (light-cyan    "#26f8fe")
 (light-white   "#f3ffff"))

 ;; Customize Faces
 ((default            (:foreground light0 :background dark0))
  (cursor             (:foreground dark0 :background white))
  (region             (:background dark5))
  (highlight          (:background dark2))
  (window-divider     (:foreground light5))
  (fringe             (:foreground green :background dark1))
  (hl-line            (:background dark2))
  (show-paren-match   (:foreground light-cyan :weight 'bold))
  (line-number        (:foreground light-white))
  (line-number-current-line (:foreground yellow))

  ;; Markdown
  (markdown-hr-face           (:foreground white))
  (markdown-pre-face          (:foreground light-blue))
  (markdown-url-face          (:foreground light-blue))
  (markdown-bold-face         (:foreground light-blue :weight 'bold))
  (markdown-code-face         (:foreground light-blue))
  (markdown-link-face         (:foreground cyan))
  (markdown-list-face         (:foreground blue))
  (markdown-math-face         (:foreground light-green))
  (markdown-table-face        (:foreground blue))
  (markdown-italic-face       (:foreground green :italic t))
  (markdown-markup-face       (:foreground yellow))
  (markdown-comment-face      (:foreground white))
  (markdown-header-face-1     (:foreground light-red :weight 'bold))
  (markdown-header-face-2     (:foreground yellow :weight 'bold))
  (markdown-header-face-3     (:foreground light-yellow :weight 'bold))
  (markdown-header-face-4     (:foreground light-green :weight 'bold))
  (markdown-header-face-5     (:foreground light-blue :weight 'bold))
  (markdown-header-face-6     (:foreground light-magenta :weight 'bold))
  (markdown-highlight-face    (:foreground light-cyan :underline t))
  (markdown-plain-url         (:foreground light-red))
  (markdown-blockquote-face   (:foreground cyan))
  (markdown-line-break-face   (:foreground light-magenta :underline t))
  (markdown-link-title-face   (:foreground green))
  (markdown-header-rule-face  (:foreground light-black))
  ;(markdown-html-entity-face (:foreground red))
  (markdown-inline-code-face  (:foreground blue))
  (markdown-gfm-checkbox-face (:foreground light-yellow))
  (markdown-highlighting-face (:foreground black :background yellow))

  ;; Mode line
  (mode-line          (:background dark4))
  (mode-line-inactive (:background dark2))
  (mode-line-emphasis (:foreground cyan))

  ;; doom-modeline
  (doom-modeline-bar  (:background yellow))
  (doom-modeline-project-dir (:foreground light-magenta))
  (doom-modeline-buffer-file (:foreground light-white))
  (doom-modeline-buffer-modified (:foreground orange))

  ;; doom-dashboard
  (doom-dashboard-banner      (:foreground blue))
  (doom-dashboard-menu-title  (:foreground cyan))
  (doom-dashboard-menu-desc   (:foreground light-green))
  (doom-dashboard-loaded      (:foreground light-black))
  (doom-dashboard-footer      (:foreground light-magenta))
  (doom-dashboard-footer-icon (:foreground yellow))

  ;; company
  (company-tooltip (:background dark3))
  (company-tooltip-selection (:background dark5))
  (company-tooltip-scrollbar-thumb (:background dark4))
  (company-tooltip-scrollbar-track (:background dark2))

  ;; rainbow-delimiters
  (rainbow-delimiters-depth-1-face (:foreground light-white))
  (rainbow-delimiters-depth-2-face (:foreground light-magenta))
  (rainbow-delimiters-depth-3-face (:foreground green))
  (rainbow-delimiters-depth-4-face (:foreground light-blue))

  ;; org-mode
  (org-level-1 (:foreground light-red))
  (org-level-2 (:foreground light-yellow))
  (org-level-3 (:foreground yellow))
  (org-level-4 (:foreground light-green))
  (org-level-5 (:foreground light-cyan))
  (org-level-6 (:foreground light-blue))
  (org-level-7 (:foreground light-magenta))
  (org-level-8 (:foreground cyan))
  (org-list-dt (:foreground light-blue))
  (org-hide (:foreground dark0))
  (org-table (:foreground green))
  (org-todo (:foreground light-cyan))
  (org-checkbox (:foreground blue))
  (org-headline-done (:foreground light-green))
  (org-todo-onhold (:foreground yellow))
  (org-done (:foreground green))
  (+org-todo-cancel (:foreground red))
  (org-special-keyword (:foreground light-red))
  (org-date (:foreground light-blue))
  (org-meta-line (:foreground light5))
  (org-document-info-keyword (:foreground white))
  (org-document-title (:foreground cyan))
  (org-document-info (:foreground cyan))

  ;; font-lock-*
  ;(font-lock-warning-face ())
  (font-lock-function-name-face (:foreground yellow))
  (font-lock-variable-name-face (:foreground light-blue))
  (font-lock-keyword-face (:foreground light-red))
  (font-lock-comment-face (:foreground white))
  (font-lock-comment-delimiter-face (:foreground light-yellow))
  (font-lock-type-face (:foreground light-cyan))
  (font-lock-constant-face (:foreground light-magenta))
  (font-lock-builtin-face (:foreground magenta))
  (font-lock-preprocessor-face (:foreground cyan))
  (font-lock-string-face  (:foreground light-green))
  (font-lock-doc-face (:foreground green))
  (font-lock-doc-markup-face (:foreground light-yellow))
  (font-lock-negation-char-face(:foreground light-red))

  ;; Other/miscellaneous
  (highlight-quoted-quote (:foreground light-cyan))
  ))

(provide-theme 'midnight-sea-dragon)
;;; midnight-sea-dragon-theme.el ends here
