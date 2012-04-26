(autoload 'js2-mode "js2-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

;; Note, js2-mode must be byte compiled for it to be useable.
;; byte-compile-file js2-mode.el

;; js2-mode uses c-fill-paragraph for comment filling. Unfortunately that
;; doesn't work unless you set a few variables first...
(defun ben-js2-mode-hook ()
  (c-set-style "bsd")
  (hl-line-mode)
  (setq c-basic-offset 2
        tab-width 2
        indent-tabs-mode nil
        fill-column 80
        comment-start "/*  "
        comment-end "*/"
        c-block-comment-prefix "*  "
        c-doc-comment-style '((java-mode . javadoc) (pike-mode . autodoc) (c-mode . javadoc)))
  (local-set-key (kbd "M-j") 'c-indent-new-comment-line)
  )

(add-hook 'js2-mode-hook 'ben-js2-mode-hook)
