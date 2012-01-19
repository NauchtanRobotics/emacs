(autoload 'graphviz-dot-mode "graphviz-dot-mode" nil t)

(add-to-list 'auto-mode-alist '("\\.dot\\'" . graphviz-dot-mode))
(add-to-list 'auto-mode-alist '("\\.gv\\'" . graphviz-dot-mode))
