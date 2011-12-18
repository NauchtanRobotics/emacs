;;; Function to create or update the gtags file.
(defun djcb-gtags-create-or-update ()
  "create or update the gnu global tag file"
  (interactive)
  (if (not (= 0 (call-process "global" nil nil nil " -p"))) ; tagfile doesn't exist?
      (let ((olddir default-directory)
            (topdir (read-directory-name
                     "gtags: top of source tree:" default-directory)))
        (cd topdir)
        (shell-command "gtags && echo 'created tagfile'")
        (cd olddir))                    ; restore
    ;;  tagfile already exists; update it
    (shell-command "global -u && echo 'updated tagfile'")))

;;; To use xgtags, a better interface to global than gtags.el.
(require 'xgtags)


;;; To use gtags...
;; (add-hook 'gtags-mode-hook
;;   (lambda()
;;     (local-set-key (kbd "M-.") 'gtags-find-tag)   ; find a tag, also M-.
;;     (local-set-key (kbd "M-,") 'gtags-find-rtag)))  ; reverse tag

;; (add-hook 'c-mode-common-hook
;;           (lambda ()
;;             (require 'gtags)
;;             (gtags-mode t)))
