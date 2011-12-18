(setq brd-dropbox-dir "/mnt/dropbox")

(add-to-list 'load-path (concat dotfiles-dir "ben"))

(load (concat dotfiles-dir "ben/ben.el"))
(mapc #'load (directory-files (concat dotfiles-dir "ben") nil ".el$"))
