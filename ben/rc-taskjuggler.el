(defun ben-taskjuggler-mode-hook ()
  (setq tab-width 4
  ))

(autoload 'taskjuggler-mode "taskjuggler-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.tjp" . taskjuggler-mode))

(add-hook 'taskjuggler-mode-hook 'ben-taskjuggler-mode-hook)
