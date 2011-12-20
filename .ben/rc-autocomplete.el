;; Auto Complete Mode (http://cx4a.org/software/auto-complete/)

(add-to-list 'load-path (concat dotfiles-dir "/elpa-to-submit/auto-complete-1.3"))
(add-to-list 'load-path (concat dotfiles-dir "/bendavies/data/dict"))

;; Initialise auto completion.
(require 'auto-complete-config)
(ac-config-default)

;; All words in this file will be added to the database.
(add-to-list 'ac-user-dictionary-files (concat dotfiles-dir "/bendavies/data/dict/dict.txt"))

;; Include Semantic output in auto-completion database.
(setq ac-sources (append ac-sources '(ac-source-semantic)))

;; Auto complete only started with 'M-x auto-complete'.
(setq ac-auto-start nil)

;; Ignore case if completion target string doesn't include upper characters.
(setq ac-ignore-case 'smart)
