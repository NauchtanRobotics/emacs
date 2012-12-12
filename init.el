(setq dotfiles-dir (file-name-directory
                    (or (buffer-file-name) load-file-name)))

(setq custom-file (concat dotfiles-dir "custom.el"))
(load custom-file 'noerror)

(add-to-list 'load-path (concat dotfiles-dir "/packages"))

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

;; Add in your own as you wish:
(defvar my-packages
  '(
    starter-kit
    starter-kit-bindings
    bm
    expand-region
    gtags
    lusty-explorer
    org
    yasnippet
    zencoding-mode    
    )
  "A list of packages to ensure are installed at launch.")

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))
