(autoload 'json-mode "json-mode" nil t)

;; Disable auto-fill mode, it really buggers things up.
(add-hook 'json-mode-hook
          (lambda()
            (auto-fill-mode -1)
            )
          )
