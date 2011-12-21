(require 'lusty-explorer nil 'noerror)

;; Override the normal file-opening and buffer switching.
(global-set-key (kbd "C-x C-f") 'lusty-file-explorer)
(global-set-key (kbd "C-x b")   'lusty-buffer-explorer)
