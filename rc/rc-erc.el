;; Notifications for ERC messages (gchat, hotmail, etc). These are fairly
;; intrusive so I've disabled them.

;; (autoload 'erc-notifications "erc-notifications" nil t)

;; (require 'erc-notifications)

;; (add-to-list 'erc-modules 'notifications)

(require 'erc)

(erc-autojoin-mode t)

;; Auto-join.
(setq erc-autojoin-channels-alist
      '((".*\\.freenode.net" "#emacs")))

;; Keep ERC windows narrow.
(setq erc-fill-column 60)

;; Check channels
(erc-track-mode t)
(setq erc-track-exclude-types '(
                                "JOIN" "NICK" "PART" "QUIT" "MODE"
                                "324" "329" "332" "333" "353" "477"))

;; Don't show any of this
(setq erc-hide-list '("JOIN" "PART" "QUIT" "NICK"))
