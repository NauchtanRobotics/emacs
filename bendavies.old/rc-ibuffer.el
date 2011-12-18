;;; Unless you turn this variable on you will be prompted every time you want to
;;; delete a buffer, even unmodified ones, which is way too cautious for most
;;; people. You’ll still be prompted for confirmation when deleting modified
;;; buffers after the option has been turned off.
(setq ibuffer-expert t)

(setq ibuffer-show-empty-filter-groups nil)

(setq ibuffer-default-sorting-mode 'major-mode)

(add-hook 'ibuffer-mode-hook
      '(lambda ()
         (ibuffer-auto-mode 1)
         (ibuffer-switch-to-saved-filter-groups "noja")))

(setq ibuffer-saved-filter-groups
    '(
        ("default"
            ("help"
                (or
                    (name . "\*Help\*")
                    (name . "\*Apropos\*")
                    (name . "\*info\*")))
            ("emacs-config"
                (filename . ".emacs.d"))
            ("svn"
                (name . "\*svn"))
        )

        ("noja"
         ("user" (filename . "user"))
         ("tools" (filename . "tools"))

         ("help"          (or
                               (name . "\*Help\*")
                               (name . "\*Apropos\*")
                               (name . "\*info\*")))

         ("emacs-config"  (filename . ".emacs.d"))
         ("svn"           (name . "\*svn"))
         ("dired"         (mode . dired-mode))
        )
      ))

;; (defun ibuffer-ediff-marked-buffers ()
;;   (interactive)
;;   (let* ((marked-buffers (ibuffer-get-marked-buffers))
;;          (len (length marked-buffers)))
;;     (unless (= 2 len)
;;       (error (format "%s buffer%s been marked (needs to be 2)"
;;                      len (if (= len 1) " has" "s have"))))
;;     (ediff-buffers (car marked-buffers) (cadr marked-buffers))))

;; (define-key ibuffer-mode-map "e" 'ibuffer-ediff-marked-buffers)
