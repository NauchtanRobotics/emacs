;; Why the mother fuck is this required?
(add-to-list 'load-path (concat dotfiles-dir "/elpa/slime-js-0.0.1"))

;; (require 'slime-js nil 'noerror)

;; (add-hook 'after-init-hook
;;           #'(lambda ()
;;               (when (locate-library "slime-js")
;;                 (require 'setup-slime-js))))

(require 'setup-slime-js nil 'noerror)
