(defun ben-c-mode-common-hook ()
  (c-set-style "bsd")
  (c-set-offset 'case-label '+)
  (c-set-offset 'statement-cont '0)
  (c-set-offset 'cpp-define-intro '0)
  (hl-line-mode)
  (setq c-basic-offset 4
        tab-width 4
        indent-tabs-mode nil
        fill-column 80
        c-block-comment-prefix "*  "
        c-doc-comment-style '((java-mode . javadoc) (pike-mode . autodoc) (c-mode . javadoc))
        c-doc-comment-style 'javadoc)
  )

;; Puts current function in status bar.
(add-hook 'c-mode-common-hook
  (lambda ()
    (which-function-mode t)))

(add-hook 'c-mode-common-hook 'ben-c-mode-common-hook)

;; Switch to other file
(add-hook 'c-mode-common-hook (lambda() (local-set-key  (kbd "C-c o") 'ff-find-other-file)))

;;; Showing and hiding blocks of code.
(add-hook 'c-mode-common-hook
          (lambda()
            (local-set-key (kbd "C-c <right>") 'hs-show-block)
            (local-set-key (kbd "C-c <left>")  'hs-hide-block)
            (local-set-key (kbd "C-c k")       'hs-toggle-hiding)
            (local-set-key (kbd "C-c C-k")     'hs-toggle-hiding)
            (local-set-key (kbd "C-c <up>")    'hs-hide-all)
            (local-set-key (kbd "C-c <down>")  'hs-show-all)
            (local-set-key (kbd "C-c m")       'compile)
            (hs-minor-mode t)))

;;; Use xgtags (an interface to gtags) to tag parsing.
;; (add-hook 'c-mode-common-hook
;;           (lambda()
;;             (xgtags-mode 1)))

;;; Use xgtags, rebuild table every save (slow).
;; (add-hook 'c-mode-common-hook
;;           (lambda()
;;             (xgtags-mode 1)
;;             (djcb-gtags-create-or-update)))
