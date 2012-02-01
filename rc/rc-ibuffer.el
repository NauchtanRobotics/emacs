;;; Unless you turn this variable on you will be prompted every time you want to
;;; delete a buffer, even unmodified ones, which is way too cautious for most
;;; people. You’ll still be prompted for confirmation when deleting modified
;;; buffers after the option has been turned off.
(setq ibuffer-expert t)

(setq ibuffer-show-empty-filter-groups nil)

(setq ibuffer-default-sorting-mode 'major-mode)

(setq ibuffer-mode-hook nil)

(add-hook 'ibuffer-mode-hook
      '(lambda ()
         (ibuffer-auto-mode 1)
         (ibuffer-switch-to-saved-filter-groups "alcolizer")))

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

        ("alcolizer"
         ("user/curium" (filename . "user/curium"))
         ("user/da" (filename . "user/da"))
         ("user/dbmgr" (filename . "user/dbmgr"))
         ("user/dbquery" (filename . "user/dbquery"))
         ("user/es" (filename . "user/es"))
         ("user/gpio" (filename . "user/gpio"))
         ("user/host" (filename . "user/host"))
         ("user/include" (filename . "user/include"))
         ("user/libac" (filename . "user/libac"))
         ("user/libapp" (filename . "user/libapp"))
         ("user/libcm" (filename . "user/libcm"))
         ("user/libdb" (filename . "user/libdb"))
         ("user/libdbsch" (filename . "user/libdbsch"))
         ("user/libdebug" (filename . "user/libdebug"))
         ("user/liberr" (filename . "user/liberr"))
         ("user/libev" (filename . "user/libev"))
         ("user/libfsm" (filename . "user/libfsm"))
         ("user/liblog" (filename . "user/liblog"))
         ("user/liblua" (filename . "user/liblua"))
         ("user/libstatus" (filename . "user/libstatus"))
         ("user/libtalloc" (filename . "user/libtalloc"))
         ("user/logger" (filename . "user/logger"))
         ("user/luahost" (filename . "user/luahost"))
         ("user/redis" (filename . "user/redis"))
         ("user/scripts" (filename . "user/scripts"))
         ("user/thorium" (filename . "user/thorium"))
         ("user/zeromq" (filename . "user/zeromq"))

         ("help"          (or
                               (name . "\*Help\*")
                               (name . "\*Apropos\*")
                               (name . "\*info\*")))

         ("emacs-config"  (filename . ".emacs.d"))
         ("svn"           (name . "\*svn"))
         ("dired"         (mode . dired-mode))
         ("erc"           (mode . erc-mode))
         ("org"           (mode . org-mode))
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
