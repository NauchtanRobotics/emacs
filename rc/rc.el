;; Start the server so emacs client can connect.
(require 'server)
(or (server-running-p)
    (server-start))

;; Default directory for custom themes.
(setq custom-theme-directory (concat dotfiles-dir "/themes"))

;; Default font and theme.
(set-default-font "Consolas 8")
(load-theme 'zenburn)

;; Scroll margin and stop-that-bloody-halfpage-jump
(setq scroll-margin 3)
(setq scroll-step 1)
(setq scroll-conservatively 1000)

(cua-mode)
(setq cua-enable-cua-keys nil)

;; Enable window management.
(winner-mode 1)

;; Wrap lines at word boundaries.
(global-visual-line-mode 1)

;; Delete the selection area with a keypress
(delete-selection-mode t)

;; Line wrap off.
(setq default-truncate-lines t)

;; Make side by side buffers function the same as the main window
(setq truncate-partial-width-windows nil)

;; Set some good defaults.
(setq fill-column 80
      column-number-mode t
      transient-mark-mode t
      backup-inhibited t
      auto-save-default nil
      auto-fill-mode 0
      flyspell-mode nil)

(scroll-bar-mode -1)

;; For the love of god, why the fuck won't auto-fill-mode stop?? I can't fucking
;; turn it off.
(setq auto-fill-mode -1)
(setq-default fill-column 99999)
(setq fill-column 99999)

;; Set line wrap to 80 (the default is 70).
(setq-default fill-column 80)

;; Nuke whitespace when writing to a file. If this stuffs up
;; makefiles, try this delete-trailing-whitespace.
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Make sure the scratch buffer is empty.
(setq initial-scratch-message nil)

;; Make sure we always split vertically (side-by-side).
(setq split-height-threshold 1000)
(setq split-width-threshold 160)

;; -----------------------------------------------------------------------------
;; SHORTCUTS
;; -----------------------------------------------------------------------------

(global-set-key (kbd "M-Q") 'fill-region)
(global-set-key [(f5)] '(lambda () (interactive) (revert-buffer nil t nil)))
(global-set-key [(f6)] 'call-last-kbd-macro)
(global-set-key [(f7)] 'compile)
(global-set-key [(f8)] 'next-error)
(global-set-key [(f12)] 'toggle-truncate-lines)

(global-set-key (kbd "C-c w") (lambda () (interactive) (diff-buffer-with-file (current-buffer))))

;; Move to previous window (the opposite of "\C-xo".
(global-set-key "\C-xp"  (lambda () (interactive) (other-window -1)) )

;; Scroll without moving the point.
(global-set-key "\M-n"  (lambda () (interactive) (scroll-up   4)) )
(global-set-key "\M-p"  (lambda () (interactive) (scroll-down 4)) )

;; Restore and revert window configurations.
(global-set-key "\M-N" 'winner-redo)
(global-set-key "\M-P" 'winner-undo)

;; C-e is normally bound to end-of-visual-line, which is annoying for long lines.
(global-set-key "\C-E" 'end-of-line)
(global-set-key "\C-e" 'end-of-visual-line)

;; Tell Emacs not to use the window for its own nefarious reasons.
(global-set-key [pause] 'toggle-window-dedicated)

;; Trigger auto complete.
(global-set-key "\M-/" 'auto-complete)

;; Use Ibuffer for Buffer List
(global-set-key (kbd "C-x C-b") 'ibuffer)

;; Org mode.
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
(global-set-key "\C-cc" 'org-capture)

;; Rotate buffers through windows.
(global-set-key (kbd "s-r") 'rotate-windows)
(global-set-key (kbd "C-x 4 t") 'rotate-windows)

;; Split windows
(global-set-key (kbd "C-x |") 'split-window-right)
(global-set-key (kbd "C-x _") 'split-window-below)
