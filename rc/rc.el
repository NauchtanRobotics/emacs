;; Start the server so emacs client can connect.
(require 'server)
(or (server-running-p)
    (server-start))

;; Default directory for custom themes.
(setq custom-theme-directory (concat dotfiles-dir "/themes"))

;; Default font and theme.
(set-default-font "Consolas 8")
(add-to-list 'default-frame-alist '(font . "Consolas 8"))
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

;; Use aspell for the spellcheck program
(setq-default ispell-program-name "aspell")

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

;; Disable interactive highlighting.
(global-hi-lock-mode -1)

;; Global hungry delete
(require 'hungry-delete)
(global-hungry-delete-mode)

;; Stop the compilation window on the first error.
(setq compilation-scroll-output 'first-error)

;; Duplicate a line.
(defun duplicate-line()
  (interactive)
  (move-beginning-of-line 1)
  (kill-line)
  (yank)
  (open-line 1)
  (next-line 1)
  (yank)
)
(global-set-key (kbd "C-c d") 'duplicate-line)

;; -----------------------------------------------------------------------------

(defun move-line-down ()
  (interactive)
  (let ((col (current-column)))
    (save-excursion
      (forward-line)
      (transpose-lines 1))
    (forward-line)
    (move-to-column col)))

(defun move-line-up ()
  (interactive)
  (let ((col (current-column)))
    (save-excursion
      (forward-line)
      (transpose-lines -1))
    (move-to-column col)))

(global-set-key (kbd "<C-S-down>") 'move-line-down)
(global-set-key (kbd "<C-S-up>") 'move-line-up)
(global-set-key (kbd "C-S-n") 'move-line-down)
(global-set-key (kbd "C-S-p") 'move-line-up)

(defun open-line-below ()
  (interactive)
  (end-of-line)
  (newline)
  (indent-for-tab-command))

(defun open-line-above ()
  (interactive)
  (beginning-of-line)
  (newline)
  (forward-line -1)
  (indent-for-tab-command))

(global-set-key (kbd "<C-M-return>") 'open-line-below)
(global-set-key (kbd "<C-S-return>") 'open-line-above)

;; ----------------------------------------------------------------------------

;; Set window to a fixed width.

(defun set-window-width (n)
  "Set the selected window's width."
  (adjust-window-trailing-edge (selected-window) (- n (window-width)) t))

(defun set-82-columns ()
  "Set the selected window to 82 columns."
  (interactive)
  (set-window-width 82))

(global-set-key "\C-x~" 'set-82-columns)

;; ----------------------------------------------------------------------------

;; Toggle window dedication

(defun toggle-window-dedicated ()
  "Toggle whether the current active window is dedicated or not"
  (interactive)
  (message
   (if (let (window (get-buffer-window (current-buffer)))
         (set-window-dedicated-p window
                                 (not (window-dedicated-p window))))
       "Window '%s' is dedicated"
     "Window '%s' is normal")
   (current-buffer)))

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
n

;; Complete
(global-set-key (kbd "M-RET") 'complete)

;; Yank from register. Second argument to insert-register puts marks before and
;; after inserted text.
(global-set-key (kbd "C-c 0") (lambda () (interactive) (insert-register ?0 1)))
(global-set-key (kbd "C-c 1") (lambda () (interactive) (insert-register ?1 1)))
(global-set-key (kbd "C-c 2") (lambda () (interactive) (insert-register ?2 1)))
(global-set-key (kbd "C-c C-0") (lambda () (interactive) (append-to-register ?0 (region-beginning) (region-end))))
(global-set-key (kbd "C-c C-1") (lambda () (interactive) (append-to-register ?1 (region-beginning) (region-end))))
(global-set-key (kbd "C-c C-2") (lambda () (interactive) (append-to-register ?2 (region-beginning) (region-end))))

(global-set-key (kbd "C-c C-d") 'hungry-delete-forward)

(global-set-key (kbd "C-c m") 'compile)
(global-set-key (kbd "C-c j") 'next-error)

(global-set-key (kbd "C-c p") 'yas-expand)
(global-set-key (kbd "C-c RET") 'cua-set-rectangle-mark)
