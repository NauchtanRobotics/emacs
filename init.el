(setq dotfiles-dir (file-name-directory
                    (or (buffer-file-name) load-file-name)))

(setq custom-file (concat dotfiles-dir "custom.el"))
(load custom-file 'noerror)

(add-to-list 'load-path (concat dotfiles-dir "/packages"))

(setq package-archives '(("ELPA" . "http://tromey.com/elpa/")
                         ("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")))

;; Add new packages here for auto-install
(defvar my-packages
  '(
    starter-kit
    starter-kit-bindings    
    bm
    expand-region
    gtags
    lusty-explorer
    multiple-cursors
    org
    yasnippet
    zencoding-mode
    )
  "A list of packages to ensure are installed at launch.")

(require 'package)
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))
(put 'ido-exit-minibuffer 'disabled nil)
(put 'narrow-to-region 'disabled nil)
