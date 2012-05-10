(require 'js-comint)

;; Use node as our repl
(setq inferior-js-program-command "node")

(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

(setq inferior-js-mode-hook
      (lambda ()
        ;; We like nice colors
        (ansi-color-for-comint-mode-on)
        ;; Deal with some prompt nonsense
        (add-to-list 'comint-preoutput-filter-functions
                     (lambda (output)
                       (replace-regexp-in-string ".*1G\.\.\..*5G" "..."
                                                 (replace-regexp-in-string ".*1G.*3G" ">" output))))
        )
      )