(when (>= emacs-major-version 24)
  (require 'package)
  (setq package-archives
        '(
          ("ELPA" . "http://tromey.com/elpa/")
          ("gnu" . "http://elpa.gnu.org/packages/")
          ("marmalade" . "http://marmalade-repo.org/packages/")
          ))
  (package-initialize)
  )

(when (not package-archive-contents)
  (package-refresh-contents))

;; Packages to be installed.
(defvar my-packages
  '(
    bm
    expand-region
    gtags
    lusty-explorer
    org
    slime
    slime-js
    slime-repl
    starter-kit
    starter-kit-bindings
    yasnippet
    zencoding-mode    
    )
  "A list of packages to ensure are installed at launch.")

;; Install packages.
(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

;; Load my configuration files. This must be done after all other
;; packages have been loaded by package-initialize.
(setq dotfiles-dir (file-name-directory
                    (or (buffer-file-name) load-file-name)))

(setq custom-file (concat dotfiles-dir "custom.el"))
(load custom-file 'noerror)

(add-to-list 'load-path (concat dotfiles-dir "/packages"))
(add-to-list 'load-path (concat dotfiles-dir "rc"))

(load (concat dotfiles-dir "rc/rc.el"))
(mapc #'load (directory-files (concat dotfiles-dir "rc") nil ".el$"))
