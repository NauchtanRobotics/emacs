(add-to-list 'load-path (concat dotfiles-dir "/elpa-to-submit/yasnippet-0.6.1c"))

(require 'yasnippet)

(setq yas/root-directory (concat dotfiles-dir "/bendavies/data/snippets"))
(yas/load-directory yas/root-directory)

;; Globally enable the minor mode in *all* buffers
(yas/global-mode)
