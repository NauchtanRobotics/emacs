;; Font lock colorization customizations
(require 'color-theme)

;; Font lock colorization customizations
(defun color-theme-bendavies ()
  "Ben Davies's Visual Studio custom coloUr theme."
  (interactive)
  (color-theme-install
   '(color-theme-bendavies
     ((foreground-color . "black")
      (background-color . "#ffffff")
      (mouse-color . "sienna3")
      (cursor-color . "black")
      (border-color . "Blue")
      (background-mode . light))
     (default ((t (nil))))
     (modeline ((t (:background "dark gray" :foreground "black"))))
     (modeline-buffer-id ((t (:background "dark gray" :foreground "black"))))
     (modeline-mousable ((t (:background "dark gray" :foreground "black"))))
     (modeline-mousable-minor-mode ((t (:background "dark gray" :foreground "black"))))
     (minibuffer-prompt ((t (:background "#ffffff" :foreground "black"))))
     (highlight ((t (:background "grey96"))))
     (bold ((t (:bold t))))
     (italic ((t (:italic t))))
     (bold-italic ((t (:bold t :italic t))))
     (region ((t (:foreground "black" :background "snow3"))))
     (secondary-selection ((t (:background "paleturquoise"))))
     (underline ((t (:underline t))))
     (lazy-highlight-face ((t (:foreground "dark blue"))))
     (font-lock-comment-face ((t (:foreground "forest green" :slant normal :weight normal))))
     (font-lock-doc-face ((t (:foreground "forest green" :slant normal :weight normal))))
     (font-lock-string-face ((t (:foreground "dark red" :slant normal :weight normal))))
     (font-lock-keyword-face ((t (:foreground "blue" :slant normal :weight normal))))
     (font-lock-builtin-face ((t (:bold t :foreground "black" :slant normal :weight normal))))
     (font-lock-function-name-face ((t (:foreground "saddle brown" :slant normal :weight normal))))
     (font-lock-variable-name-face ((t (:foreground "dark goldenrod" :slant normal :weight normal))))
     (font-lock-type-face ((t (:foreground "dodger blue" :slant normal :weight normal))))
     (font-lock-constant-face ((t (:foreground "cadet blue" :slant normal :weight normal))))
     (font-lock-warning-face ((t (:foreground "red" :slant normal :weight normal))))
     (font-lock-preprocessor-face ((t (:foreground "blue" :slant normal :weight normal)))) 
     (fringe ((t (:background "#ffffff"))))
     (widget-documentation-face ((t (:foreground "dark green"))))
     (widget-button-face ((t (:bold t))))
     (widget-field-face ((t (:background "gray85"))))
     (widget-single-line-field-face ((t (:background "gray85"))))
     (widget-inactive-face ((t (:foreground "dim gray"))))
     (widget-button-pressed-face ((t (:foreground "red"))))
     (custom-invalid-face ((t (:foreground "yellow" :background "red"))))
     (custom-rogue-face ((t (:foreground "pink" :background "black"))))
     (custom-modified-face ((t (:foreground "#ffffff" :background "blue"))))
     (custom-set-face ((t (:foreground "blue" :background "#ffffff"))))
     (custom-changed-face ((t (:foreground "#ffffff" :background "blue"))))
     (custom-saved-face ((t (:underline t))))
     (custom-button-face ((t (nil))))
     (custom-documentation-face ((t (nil))))
     (custom-state-face ((t (:foreground "dark green"))))
     (custom-variable-tag-face ((t (:foreground "blue" :underline t))))
     (custom-variable-button-face ((t (:bold t :underline t))))
     (custom-face-tag-face ((t (:underline t))))
     (custom-group-tag-face-1 ((t (:foreground "red" :underline t))))
     (custom-group-tag-face ((t (:foreground "blue" :underline t))))
     (speedbar-button-face ((t (:foreground "green4"))))
     (speedbar-file-face ((t (:foreground "cyan4"))))
     (speedbar-directory-face ((t (:foreground "blue4"))))
     (speedbar-tag-face ((t (:foreground "brown"))))
     (speedbar-selected-face ((t (:foreground "red"))))
     (speedbar-highlight-face ((t (:background "green"))))
     (ff-paths-non-existant-file-face ((t (:foreground "NavyBlue"))))
     (show-paren-match-face ((t (:background "light blue"))))
     (show-paren-mismatch-face ((t (:foreground "#ffffff" :background "purple")))))))

(defun color-theme-bendavies-dark ()
  "Ben Davies's black background custom color theme."
  (interactive)
  (color-theme-install
   '(color-theme-calm-forest
     ((background-color . "black")
      (background-mode . dark)
      (border-color . "black")
      (cursor-color . "orange")
      (foreground-color . "green3")
      (mouse-color . "yellow"))
     ((help-highlight-face . underline)
      (list-matching-lines-face . bold)
      (senator-eldoc-use-color . t)
      (view-highlight-face . highlight)
      (widget-mouse-face . highlight))
     (default ((t (:stipple nil :background "black" :foreground "green3" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 98 :width normal :family "outline-courier new"))))
     (Info-title-1-face ((t (:bold t :weight bold :family "helv" :height 1.728))))
     (Info-title-2-face ((t (:bold t :family "helv" :weight bold :height 1.44))))
     (Info-title-3-face ((t (:bold t :weight bold :family "helv" :height 1.2))))
     (Info-title-4-face ((t (:bold t :family "helv" :weight bold))))
     (bold ((t (:bold t :weight bold))))
     (bold-italic ((t (:italic t :bold t :slant italic :weight bold))))
     (border ((t (:background "black"))))
     (comint-highlight-input ((t (:bold t :weight bold))))
     (comint-highlight-prompt ((t (:foreground "cyan"))))
     (cparen-around-andor-face ((t (:bold t :foreground "maroon" :weight bold))))
     (cparen-around-begin-face ((t (:foreground "maroon"))))
     (cparen-around-conditional-face ((t (:bold t :foreground "Blue" :weight bold))))
     (cparen-around-define-face ((t (:bold t :foreground "Blue" :weight bold))))
     (cparen-around-lambda-face ((t (:foreground "LightSeaGreen"))))
     (cparen-around-letdo-face ((t (:bold t :foreground "LightSeaGreen" :weight bold))))
     (cparen-around-quote-face ((t (:foreground "SaddleBrown"))))
     (cparen-around-set!-face ((t (:foreground "OrangeRed"))))
     (cparen-around-syntax-rules-face ((t (:foreground "Magenta3"))))
     (cparen-around-vector-face ((t (:foreground "chocolate"))))
     (cparen-binding-face ((t (:foreground "ForestGreen"))))
     (cparen-binding-list-face ((t (:bold t :foreground "ForestGreen" :weight bold))))
     (cparen-conditional-clause-face ((t (:foreground "Blue"))))
     (cparen-normal-paren-face ((t (:foreground "grey50"))))
     (cursor ((t (:background "orange"))))
     (custom-button-face ((t (:background "lightgrey" :foreground "black" :box (:line-width 2 :style released-button)))))
     (custom-button-pressed-face ((t (:background "lightgrey" :foreground "black" :box (:line-width 2 :style pressed-button)))))
     (custom-changed-face ((t (:background "blue" :foreground "#ffffff"))))
     (custom-comment-face ((t (:background "dim gray"))))
     (custom-comment-tag-face ((t (:foreground "gray80"))))
     (custom-documentation-face ((t (nil))))
     (custom-face-tag-face ((t (:bold t :family "helv" :weight bold :height 1.2))))
     (custom-group-tag-face ((t (:bold t :foreground "blue" :weight bold :height 1.2))))
     (custom-group-tag-face-1 ((t (:bold t :family "helv" :foreground "pink" :weight bold :height 1.2))))
     (custom-invalid-face ((t (:background "red" :foreground "yellow"))))
     (custom-modified-face ((t (:background "blue" :foreground "#ffffff"))))
     (custom-rogue-face ((t (:background "black" :foreground "pink"))))
     (custom-saved-face ((t (:underline t))))
     (custom-set-face ((t (:background "#ffffff" :foreground "blue"))))
     (custom-state-face ((t (:foreground "lime green"))))
     (custom-variable-button-face ((t (:bold t :underline t :weight bold))))
     (custom-variable-tag-face ((t (:bold t :family "helv" :foreground "blue" :weight bold :height 1.2))))
     (eieio-custom-slot-tag-face ((t (:foreground "blue"))))
     (extra-"#ffffff"space-face ((t (:background "pale green"))))
     (fixed-pitch ((t (:family "courier"))))
     (font-latex-bold-face ((t (:bold t :foreground "OliveDrab" :weight bold))))
     (font-latex-italic-face ((t (:italic t :foreground "OliveDrab" :slant italic))))
     (font-latex-math-face ((t (:foreground "burlywood"))))
     (font-latex-sedate-face ((t (:foreground "LightGray"))))
     (font-latex-string-face ((t (:foreground "RosyBrown"))))
     (font-latex-warning-face ((t (:bold t :foreground "Red" :weight bold))))
     (font-lock-builtin-face ((t (:foreground "Blue"))))
     (font-lock-comment-face ((t (:foreground "green3"))))
     (font-lock-comment-delimiter-face ((t (:foreground "red4" :inherit font-lock-comment-face))))
     (font-lock-constant-face ((t (:foreground "magenta3"))))
     (font-lock-doc-face ((t (:foreground "ForestGreen"))))
     (font-lock-function-name-face ((t (:foreground "Blue"))))
     (font-lock-keyword-face ((t (:foreground "Cyan"))))
     (font-lock-string-face ((t (:foreground "green3"))))
     (font-lock-type-face ((t (:foreground "PaleGreen"))))
     (font-lock-variable-name-face ((t (:foreground "yellow3" :weight light))))
     (font-lock-warning-face ((t (:bold t :foreground "Pink" :weight bold))))
     (fringe ((t (:background "grey10"))))
     (header-line ((t (:box (:line-width -1 :style released-button) :background "grey20" :foreground "grey90" :box nil))))
     (highlight ((t (:background "darkolivegreen"))))
     (info-header-node ((t (:italic t :bold t :weight bold :slant italic :foreground "#ffffff"))))
     (info-header-xref ((t (:bold t :weight bold :foreground "cyan"))))
     (info-menu-5 ((t (:foreground "red1"))))
     (info-menu-header ((t (:bold t :family "helv" :weight bold))))
     (info-node ((t (:italic t :bold t :foreground "#ffffff" :slant italic :weight bold))))
     (info-xref ((t (:bold t :foreground "cyan" :weight bold))))
     (isearch ((t (:background "palevioletred2" :foreground "brown4"))))
     (isearch-lazy-highlight-face ((t (:background "paleturquoise4"))))
     (italic ((t (:italic t :slant italic))))
     (jde-bug-breakpoint-cursor ((t (:background "brown" :foreground "cyan"))))
     (jde-db-active-breakpoint-face ((t (:background "red" :foreground "black"))))
     (jde-db-requested-breakpoint-face ((t (:background "yellow" :foreground "black"))))
     (jde-db-spec-breakpoint-face ((t (:background "green3" :foreground "black"))))
     (jde-java-font-lock-api-face ((t (:foreground "light goldenrod"))))
     (jde-java-font-lock-bold-face ((t (:bold t :weight bold))))
     (jde-java-font-lock-code-face ((t (nil))))
     (jde-java-font-lock-constant-face ((t (:foreground "Aquamarine"))))
     (jde-java-font-lock-doc-tag-face ((t (:foreground "light coral"))))
     (jde-java-font-lock-italic-face ((t (:italic t :slant italic))))
     (jde-java-font-lock-link-face ((t (:foreground "blue" :underline t :slant normal))))
     (jde-java-font-lock-modifier-face ((t (:foreground "Blue"))))
     (jde-java-font-lock-number-face ((t (:foreground "Red"))))
     (jde-java-font-lock-operator-face ((t (:foreground "medium blue"))))
     (jde-java-font-lock-package-face ((t (:foreground "steelblue1"))))
     (jde-java-font-lock-pre-face ((t (nil))))
     (jde-java-font-lock-underline-face ((t (:underline t))))
     (menu ((t (nil))))
     (mode-line ((t (:background "grey75" :foreground "black" :box (:line-width -1 :style released-button)))))
     (mouse ((t (:background "yellow"))))
     (region ((t (:background "blue3"))))
     (scroll-bar ((t (nil))))
     (secondary-selection ((t (:background "SkyBlue4"))))
     (semantic-dirty-token-face ((t (:background "gray10"))))
     (semantic-unmatched-syntax-face ((t (:underline "red"))))
     (senator-intangible-face ((t (:foreground "gray75"))))
     (senator-momentary-highlight-face ((t (:background "gray30"))))
     (senator-read-only-face ((t (:background "#664444"))))
     (show-paren-match-face ((t (:background "turquoise"))))
     (show-paren-mismatch-face ((t (:background "purple" :foreground "#ffffff"))))
     (speedbar-button-face ((t (:foreground "green3"))))
     (speedbar-directory-face ((t (:foreground "light blue"))))
     (speedbar-file-face ((t (:foreground "cyan"))))
     (speedbar-highlight-face ((t (:background "sea green"))))
     (speedbar-selected-face ((t (:foreground "red" :underline t))))
     (speedbar-separator-face ((t (:background "blue" :foreground "#ffffff" :overline "gray"))))
     (speedbar-tag-face ((t (:foreground "yellow"))))    
     (trailing-whitespace ((t (:background "red"))))
     (underline ((t (:underline t))))
     (variable-pitch ((t (:family "helv"))))
     (widget-button-face ((t (:bold t :weight bold))))
     (widget-button-pressed-face ((t (:foreground "red"))))
     (widget-documentation-face ((t (:foreground "lime green"))))
     (widget-field-face ((t (:background "dim gray"))))
     (widget-inactive-face ((t (:foreground "light gray"))))
     (widget-single-line-field-face ((t (:background "dim gray")))))))

(defun color-theme-bendavies-dark ()
  "Ben Davies's black background custom color theme."
  (interactive)
  (color-theme-install
   '(color-theme-calm-forest
     ((background-color . "black")
      (background-mode . dark)
      (border-color . "black")
      (cursor-color . "orange")
      (foreground-color . "green3")
      (mouse-color . "yellow"))
     ((help-highlight-face . underline)
      (list-matching-lines-face . bold)
      (senator-eldoc-use-color . t)
      (view-highlight-face . highlight)
      (widget-mouse-face . highlight))
     (default ((t (:stipple nil :background "black" :foreground "green3" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 98 :width normal :family "outline-courier new"))))
     (Info-title-1-face ((t (:bold t :weight bold :family "helv" :height 1.728))))
     (Info-title-2-face ((t (:bold t :family "helv" :weight bold :height 1.44))))
     (Info-title-3-face ((t (:bold t :weight bold :family "helv" :height 1.2))))
     (Info-title-4-face ((t (:bold t :family "helv" :weight bold))))
     (bold ((t (:bold t :weight bold))))
     (bold-italic ((t (:italic t :bold t :slant italic :weight bold))))
     (border ((t (:background "black"))))
     (comint-highlight-input ((t (:bold t :weight bold))))
     (comint-highlight-prompt ((t (:foreground "cyan"))))
     (cparen-around-andor-face ((t (:bold t :foreground "maroon" :weight bold))))
     (cparen-around-begin-face ((t (:foreground "maroon"))))
     (cparen-around-conditional-face ((t (:bold t :foreground "Blue" :weight bold))))
     (cparen-around-define-face ((t (:bold t :foreground "Blue" :weight bold))))
     (cparen-around-lambda-face ((t (:foreground "LightSeaGreen"))))
     (cparen-around-letdo-face ((t (:bold t :foreground "LightSeaGreen" :weight bold))))
     (cparen-around-quote-face ((t (:foreground "SaddleBrown"))))
     (cparen-around-set!-face ((t (:foreground "OrangeRed"))))
     (cparen-around-syntax-rules-face ((t (:foreground "Magenta3"))))
     (cparen-around-vector-face ((t (:foreground "chocolate"))))
     (cparen-binding-face ((t (:foreground "ForestGreen"))))
     (cparen-binding-list-face ((t (:bold t :foreground "ForestGreen" :weight bold))))
     (cparen-conditional-clause-face ((t (:foreground "Blue"))))
     (cparen-normal-paren-face ((t (:foreground "grey50"))))
     (cursor ((t (:background "orange"))))
     (custom-button-face ((t (:background "lightgrey" :foreground "black" :box (:line-width 2 :style released-button)))))
     (custom-button-pressed-face ((t (:background "lightgrey" :foreground "black" :box (:line-width 2 :style pressed-button)))))
     (custom-changed-face ((t (:background "blue" :foreground "white"))))
     (custom-comment-face ((t (:background "dim gray"))))
     (custom-comment-tag-face ((t (:foreground "gray80"))))
     (custom-documentation-face ((t (nil))))
     (custom-face-tag-face ((t (:bold t :family "helv" :weight bold :height 1.2))))
     (custom-group-tag-face ((t (:bold t :foreground "blue" :weight bold :height 1.2))))
     (custom-group-tag-face-1 ((t (:bold t :family "helv" :foreground "pink" :weight bold :height 1.2))))
     (custom-invalid-face ((t (:background "red" :foreground "yellow"))))
     (custom-modified-face ((t (:background "blue" :foreground "white"))))
     (custom-rogue-face ((t (:background "black" :foreground "pink"))))
     (custom-saved-face ((t (:underline t))))
     (custom-set-face ((t (:background "white" :foreground "blue"))))
     (custom-state-face ((t (:foreground "lime green"))))
     (custom-variable-button-face ((t (:bold t :underline t :weight bold))))
     (custom-variable-tag-face ((t (:bold t :family "helv" :foreground "blue" :weight bold :height 1.2))))
     (eieio-custom-slot-tag-face ((t (:foreground "blue"))))
     (extra-whitespace-face ((t (:background "pale green"))))
     (fixed-pitch ((t (:family "courier"))))
     (font-latex-bold-face ((t (:bold t :foreground "OliveDrab" :weight bold))))
     (font-latex-italic-face ((t (:italic t :foreground "OliveDrab" :slant italic))))
     (font-latex-math-face ((t (:foreground "burlywood"))))
     (font-latex-sedate-face ((t (:foreground "LightGray"))))
     (font-latex-string-face ((t (:foreground "RosyBrown"))))
     (font-latex-warning-face ((t (:bold t :foreground "Red" :weight bold))))
     (font-lock-builtin-face ((t (:foreground "Blue"))))
     (font-lock-comment-face ((t (:foreground "green3"))))
     (font-lock-comment-delimiter-face ((t (:foreground "red4" :inherit font-lock-comment-face))))
     (font-lock-constant-face ((t (:foreground "magenta3"))))
     (font-lock-doc-face ((t (:foreground "ForestGreen"))))
     (font-lock-function-name-face ((t (:foreground "Blue"))))
     (font-lock-keyword-face ((t (:foreground "Cyan"))))
     (font-lock-string-face ((t (:foreground "green3"))))
     (font-lock-type-face ((t (:foreground "PaleGreen"))))
     (font-lock-variable-name-face ((t (:foreground "yellow3" :weight light))))
     (font-lock-warning-face ((t (:bold t :foreground "Pink" :weight bold))))
     (fringe ((t (:background "grey10"))))
     (header-line ((t (:box (:line-width -1 :style released-button) :background "grey20" :foreground "grey90" :box nil))))
     (highlight ((t (:background "darkolivegreen"))))
     (info-header-node ((t (:italic t :bold t :weight bold :slant italic :foreground "white"))))
     (info-header-xref ((t (:bold t :weight bold :foreground "cyan"))))
     (info-menu-5 ((t (:foreground "red1"))))
     (info-menu-header ((t (:bold t :family "helv" :weight bold))))
     (info-node ((t (:italic t :bold t :foreground "white" :slant italic :weight bold))))
     (info-xref ((t (:bold t :foreground "cyan" :weight bold))))
     (isearch ((t (:background "palevioletred2" :foreground "brown4"))))
     (isearch-lazy-highlight-face ((t (:background "paleturquoise4"))))
     (italic ((t (:italic t :slant italic))))
     (jde-bug-breakpoint-cursor ((t (:background "brown" :foreground "cyan"))))
     (jde-db-active-breakpoint-face ((t (:background "red" :foreground "black"))))
     (jde-db-requested-breakpoint-face ((t (:background "yellow" :foreground "black"))))
     (jde-db-spec-breakpoint-face ((t (:background "green3" :foreground "black"))))
     (jde-java-font-lock-api-face ((t (:foreground "light goldenrod"))))
     (jde-java-font-lock-bold-face ((t (:bold t :weight bold))))
     (jde-java-font-lock-code-face ((t (nil))))
     (jde-java-font-lock-constant-face ((t (:foreground "Aquamarine"))))
     (jde-java-font-lock-doc-tag-face ((t (:foreground "light coral"))))
     (jde-java-font-lock-italic-face ((t (:italic t :slant italic))))
     (jde-java-font-lock-link-face ((t (:foreground "blue" :underline t :slant normal))))
     (jde-java-font-lock-modifier-face ((t (:foreground "Blue"))))
     (jde-java-font-lock-number-face ((t (:foreground "Red"))))
     (jde-java-font-lock-operator-face ((t (:foreground "medium blue"))))
     (jde-java-font-lock-package-face ((t (:foreground "steelblue1"))))
     (jde-java-font-lock-pre-face ((t (nil))))
     (jde-java-font-lock-underline-face ((t (:underline t))))
     (menu ((t (nil))))
     (mode-line ((t (:background "grey75" :foreground "black" :box (:line-width -1 :style released-button)))))
     (mouse ((t (:background "yellow"))))
     (region ((t (:background "blue3"))))
     (scroll-bar ((t (nil))))
     (secondary-selection ((t (:background "SkyBlue4"))))
     (semantic-dirty-token-face ((t (:background "gray10"))))
     (semantic-unmatched-syntax-face ((t (:underline "red"))))
     (senator-intangible-face ((t (:foreground "gray75"))))
     (senator-momentary-highlight-face ((t (:background "gray30"))))
     (senator-read-only-face ((t (:background "#664444"))))
     (show-paren-match-face ((t (:background "turquoise"))))
     (show-paren-mismatch-face ((t (:background "purple" :foreground "white"))))
     (speedbar-button-face ((t (:foreground "green3"))))
     (speedbar-directory-face ((t (:foreground "light blue"))))
     (speedbar-file-face ((t (:foreground "cyan"))))
     (speedbar-highlight-face ((t (:background "sea green"))))
     (speedbar-selected-face ((t (:foreground "red" :underline t))))
     (speedbar-separator-face ((t (:background "blue" :foreground "white" :overline "gray"))))
     (speedbar-tag-face ((t (:foreground "yellow"))))    
     (trailing-whitespace ((t (:background "red"))))
     (underline ((t (:underline t))))
     (variable-pitch ((t (:family "helv"))))
     (widget-button-face ((t (:bold t :weight bold))))
     (widget-button-pressed-face ((t (:foreground "red"))))
     (widget-documentation-face ((t (:foreground "lime green"))))
     (widget-field-face ((t (:background "dim gray"))))
     (widget-inactive-face ((t (:foreground "light gray"))))
     (widget-single-line-field-face ((t (:background "dim gray")))))))

;; Here are the standard faces for specifying text appearance. You can
;; apply them to specific text when you want the effects they produce.
;; 
;; highlight
;;     This face is used for highlighting portions of text, in various
;;     modes. For example, mouse-sensitive text is highlighted using
;;     this face.
;; isearch
;;     This face is used for highlighting the current Isearch match
;;     (see Incremental Search).
;; query-replace
;;     This face is used for highlighting the current Query Replace
;;     match (see Replace).
;; lazy-highlight
;;     This face is used for lazy highlighting of Isearch and Query
;;     Replace matches other than the current one.
;; region
;;     This face is used for displaying a selected region (see Mark).
;; secondary-selection
;;     This face is used for displaying a secondary X selection (see
;;     Secondary Selection).
;; trailing-whitespace
;;     The face for highlighting excess spaces and tabs at the end of
;;     a line when show-trailing-whitespace is non-nil; see Useless
;;     Whitespace.
;; nobreak-space
;;     The face for displaying the character “nobreak space.”
;; escape-glyph
;;     The face for highlighting the ‘\’ or ‘^’ that indicates a
;;     control character. It's also used when ‘\’ indicates a nobreak
;;     space or nobreak (soft) hyphen.
;;
;; Here's an incomplete list of faces used to highlight parts of the
;; text temporarily for specific purposes. (Many other modes define
;; their own faces for this purpose.)
;;
;; highlight
;;     This face is used for highlighting portions of text, in various
;;     modes. For example, mouse-sensitive text is highlighted using
;;     this face.
;; isearch
;;     This face is used for highlighting the current Isearch match
;;     (see Incremental Search).
;; query-replace
;;     This face is used for highlighting the current Query Replace
;;     match (see Replace).
;; lazy-highlight
;;     This face is used for lazy highlighting of Isearch and Query
;;     Replace matches other than the current one.
;; region
;;     This face is used for displaying a selected region (see Mark).
;; secondary-selection
;;     This face is used for displaying a secondary X selection (see
;;     Secondary Selection).
;; trailing-whitespace
;;     The face for highlighting excess spaces and tabs at the end of
;;     a line when show-trailing-whitespace is non-nil; see Useless
;;     Whitespace.
;; nobreak-space
;;     The face for displaying the character “nobreak space.”
;; escape-glyph
;;     The face for highlighting the ‘\’ or ‘^’ that indicates a
;;     control character. It's also used when ‘\’ indicates a nobreak
;;     space or nobreak (soft) hyphen.

;; These faces control the appearance of parts of the Emacs
;; frame. They exist as faces to provide a consistent way to customize
;; the appearance of these parts of the frame.
;;
;; mode-line
;;     This face is used for the mode line of the currently selected
;;     window, and for menu bars when toolkit menus are not used. By
;;     default, it's drawn with shadows for a “raised” effect on
;;     graphical displays, and drawn as the inverse of the default
;;     face on non-windowed terminals.
;; mode-line-inactive
;;     Like mode-line, but used for mode lines of the windows other
;;     than the selected one (if mode-line-in-non-selected-windows is
;;     non-nil). This face inherits from mode-line, so changes in that
;;     face affect mode lines in all windows.
;; mode-line-highlight
;;     Like highlight, but used for portions of text on mode lines.
;; mode-line-buffer-id
;;     This face is used for buffer identification parts in the mode line.
;; header-line
;;     Similar to mode-line for a window's header line, which appears
;;     at the top of a window just as the mode line appears at the
;;     bottom. Most windows do not have a header line—only some
;;     special modes, such Info mode, create one.
;; vertical-border
;;     This face is used for the vertical divider between windows. By
;;     default this face inherits from the mode-line-inactive face on
;;     character terminals. On graphical displays the foreground color
;;     of this face is used for the vertical line between windows
;;     without scrollbars.
;; minibuffer-prompt
;;     This face is used for the prompt strings displayed in the
;;     minibuffer. By default, Emacs automatically adds this face to
;;     the value of minibuffer-prompt-properties, which is a list of
;;     text properties used to display the prompt text. (This variable
;;     takes effect when you enter the minibuffer.)
;; fringe
;;     The face for the fringes to the left and right of windows on
;;     graphic displays. (The fringes are the narrow portions of the
;;     Emacs frame between the text area and the window's right and
;;     left borders.) See Fringes.
;; scroll-bar
;;     This face determines the visual appearance of the scroll
;;     bar. See Scroll Bars.
;; border
;;     This face determines the color of the frame border.
;; cursor
;;     This face determines the color of the cursor.
;; mouse
;;     This face determines the color of the mouse pointer.
;; tool-bar
;;     This face determines the color of tool bar icons. See Tool Bars.
;; tooltip
;;     This face is used for tooltips. See Tooltips.
;; menu
;;     This face determines the colors and font of Emacs's menus. See
;;     Menu Bars. This has no effect in Emacs built with GTK and in
;;     the MS-Windows/Mac ports; you need to use system-wide styles
;;     and options to change the appearance of GTK, Windows, or Mac
;;     menus. Setting the font of LessTif/Motif menus is currently not
;;     supported; attempts to set the font are ignored in this case.
