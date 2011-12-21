(setq brd-dropbox-dir "/mnt/dropbox")

(add-to-list 'load-path (concat dotfiles-dir "rc"))

(load (concat dotfiles-dir "rc/rc.el"))
(mapc #'load (directory-files (concat dotfiles-dir "rc") nil ".el$"))
