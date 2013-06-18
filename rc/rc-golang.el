;; Golang support
;;
;; To install godef (equivalent to ctags):
;; go get -v code.google.com/p/rog-go/exp/cmd/godef
;; go install -v code.google.com/p/rog-go/exp/cmd/godef

(require 'go-mode-load)

(add-hook 'before-save-hook 'gofmt-before-save)

(add-hook 'go-mode-hook
          (lambda ()
            (local-set-key (kbd "C-c C-r") 'go-remove-unused-imports)
            (local-set-key (kbd "C-c C-a") 'go-import-add)
            (local-set-key (kbd "C-c i") 'go-goto-imports)
            (local-set-key (kbd "M-.") 'godef-jump)
            (setq tab-width 4)
            (setq ac-auto-start t)
            (setq ac-ignore-case t)
            ))

;; Auto-completion
(require 'go-autocomplete)
(require 'auto-complete-config)
