(add-to-list 'load-path (concat dotfiles-dir "/elpa/expand-region-0.8.0"))
(autoload 'expand-region "expand-region" nil t)

(require 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)
