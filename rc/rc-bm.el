;; BM -- Visible Bookmarks

(setq bm-highlight-style 'bm-highlight-only-fringe)

(global-set-key (kbd "<C-f2>") 'bm-toggle)
(global-set-key (kbd "<f2>") 'bm-next)
(global-set-key (kbd "<S-f2>") 'bm-previous)

(global-set-key (kbd "C-c C-t") 'bm-toggle)
(global-set-key (kbd "C-c t") 'bm-next)
(global-set-key (kbd "C-c T") 'bm-previous)
