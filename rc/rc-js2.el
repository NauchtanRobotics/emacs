;; Note, js2-mode must be byte compiled for it to be useable.
;; byte-compile-file js2-mode.el

(autoload 'js2-mode "js2-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

(add-hook 'js2-mode-hook
          (lambda()
            ;; Scan the file for nested code blocks
            (imenu-add-menubar-index)
            ;; Activate the folding mode
            (hs-minor-mode t)
            (local-set-key (kbd "C-c <right>") 'hs-show-block)
            (local-set-key (kbd "C-c <left>")  'hs-hide-block)
            (local-set-key (kbd "C-c k")       'hs-toggle-hiding)
            (local-set-key (kbd "C-c C-k")     'hs-toggle-hiding)
            (local-set-key (kbd "C-c <up>")    'hs-hide-all)
            (local-set-key (kbd "C-c <down>")  'hs-show-all)
            (local-set-key (kbd "C-x C-e")     'slime-js-eval-current)
            (local-set-key (kbd "C-c C-e")     'slime-js-eval-and-replace-current)
            (local-set-key (kbd "C-j")         'newline)
            (setq js2-basic-offset 2)
            (auto-fill-mode -1)
            )
          )

(global-set-key [f9] 'slime-js-reload)

;; This appears to slow everything right down.
;; (add-hook 'js2-mode-hook
;;           (lambda ()
;;             (slime-js-minor-mode 1)))

;; js2-mode uses c-fill-paragraph for comment filling. Unfortunately that
;; doesn't work unless you set a few variables first...
;; (defun ben-js2-mode-hook ()
;;   (c-set-style "bsd")
;;   (hl-line-mode)
;;   (setq c-basic-offset 2
;;         tab-width 2
;;         indent-tabs-mode nil
;;         fill-column 80
;;         comment-start "/*  "
;;         comment-end "*/"
;;         c-block-comment-prefix "*  "
;;         c-doc-comment-style '((java-mode . javadoc) (pike-mode . autodoc) (c-mode . javadoc)))
;;   (local-set-key (kbd "M-j") 'c-indent-new-comment-line)
;;   )

;; (add-hook 'js2-mode-hook 'ben-js2-mode-hook)
