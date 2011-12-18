;; (setq compilation-finish-functions 'compile-autoclose)

;; Bury the compilation buffer if the compile succeeds.
;; (defun compile-autoclose (buffer string)
;;   (if (string= "*compilation*" (buffer-name buffer))
;;       (cond (
;;              (string-match "finished" string)
;;              (bury-buffer "*compilation*")
;;              (winner-undo)
;;              (message "Build successful (%s, %s)." buffer (buffer-name)))
;;             (t
;;              (message "Compilation exited abnormally: %s" string)))))
