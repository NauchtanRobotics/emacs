;; (add-to-list 'load-path (concat dotfiles-dir "/packages/magit"))

(require 'magit)
(global-set-key (kbd "C-x G") 'magit-status)
