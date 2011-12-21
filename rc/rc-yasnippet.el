;; (add-to-list 'load-path (concat dotfiles-dir "/elpa-to-submit/yasnippet-0.6.1c"))

(require 'yasnippet)

(setq yas/root-directory (concat dotfiles-dir "ben/data/snippets"))
 (yas/load-directory yas/root-directory)

; Open all files with the .yasnippet extension in snippet mode
(add-to-list 'auto-mode-alist '("\\.yasnippet\\'" . snippet-mode))

;; ;; Globally enable the minor mode in *all* buffers
(yas/global-mode)
