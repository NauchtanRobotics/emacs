(setq debug-output-keywords
 '(
   ;; Function names.
   ("^[[:space:]]*\\([^([:space:]]+\\)(+[^{]*{+" 1 font-lock-function-name-face)
   ;; Open and closing brace.
   ("{\\|}" . font-lock-function-name-face)
   ;; Error names (e.g. ERR_I_AM_ERROR).
   ("\\(\\<ERR_[A-Z_]+\\)" 1 font-lock-warning-face)
   ;; All parameters to function (e.g. "name(this, stuff, here)");
   ("(\\([^)]+\\)).*{$" 1 font-lock-variable-name-face)
   ;; Result of function call (e.g. "} = 123");
   ("}[[:space:]]*\\(=.*\\)$" 1 font-lock-constant-face)
   ;; Everything else.
   ("^[^{}]*$" . font-lock-comment-face)
  )
)

(define-derived-mode debug-output-mode fundamental-mode
  (setq font-lock-defaults '(debug-output-keywords))
  (setq mode-name "dbg output")
  )

(add-to-list 'auto-mode-alist '("\\.dbg$" . debug-output-mode))
