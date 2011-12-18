(add-to-list 'load-path (concat dotfiles-dir "/elpa-to-submit/org-7.6/lisp"))
(add-to-list 'load-path (concat dotfiles-dir "/elpa-to-submit/org-7.6/contrib/lisp"))

; Open all files with the .org extension in org-mode.
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))

; Information to record when a task moves to the DONE state.
(setq org-log-done 'time)

; Block entries from changing state to DONE while they have children or
; checkboxes that are not DONE.
(setq org-enforce-todo-dependencies t)
(setq org-enforce-todo-checkbox-dependencies t)

; Insert state change notes and time stamps in to a drawer.
(setq org-log-into-drawer t)

; Add all files from "<dropbox path>/org-mode".
(setq org-agenda-files (file-expand-wildcards (concat brd-dropbox-dir "/org-mode/*.org")))

; Notes file (for "<ctrl>-c c").
(setq org-default-notes-file (concat brd-dropbox-dir "/org-mode/notes.org"))

; Allow refiling from notes.org to other agenda files.
(setq org-refile-targets '((org-agenda-files . (:level . 1))))

(setq org-completion-use-ido t)
(setq org-insert-heading-respect-content t)

(setq org-todo-keywords
      '((sequence "TODO(t)" "WAITING(w@/!)" "|" "DONE(d!)" "CANCELLED(c!@)")))

(setq org-todo-keyword-faces
      '(("CANCELLED" . (:foreground "blue"   :weight bold))
        ("WAITING"   . (:foreground "orange" :weight bold))))

(setq org-capture-templates
      '(("t" "Todo" entry (file+headline org-default-notes-file "Tasks")
         "** TODO %?" :clock-in t :clock-resume t)
        ("n" "Note" entry (file+headline org-default-notes-file "Note")
         "** %T %?" :clock-in t :clock-resume t))
      )

(setq org-tags-column -120)

;; Resume clocking tasks when emacs is restarted
(org-clock-persistence-insinuate)

(setq org-clock-history-length 28)

;; Resume clocking task on clock-in if the clock is open
(setq org-clock-in-resume t)

;; Separate drawers for clocking and logs
(setq org-drawers (quote ("PROPERTIES" "LOGBOOK" "CLOCK")))

;; Save clock data in the CLOCK drawer and state changes and notes in the
;; LOGBOOK drawer
(setq org-clock-into-drawer "CLOCK")

;; Removes clocked tasks with 0:00 duration
(setq org-clock-out-remove-zero-time-clocks t)

(require 'org)
