;;; NOTE: When you want to enable this functionality, have a look at
;;; tabbar.el::559 to try to set the faces to nice values. Also might have to
;;; enable the mode globally, just not sure how to do that exactly.
;;; From http://amitp.blogspot.com/2007/04/emacs-buffer-tabs.html


;; (require 'tabbar)

;; (set-face-attribute
;;  'tabbar-default-face nil
;;  :background "gray60")
;; (set-face-attribute
;;  'tabbar-unselected-face nil
;;  :background "gray85"
;;  :foreground "gray30"
;;  :box nil)
;; (set-face-attribute
;;  'tabbar-selected-face nil
;;  :background "#f2f2f6"
;;  :foreground "black"
;;  :box nil)
;; (set-face-attribute
;;  'tabbar-button-face nil
;;  :box '(:line-width 1 :color "gray72" :style released-button))
;; (set-face-attribute
;;  'tabbar-separator-face nil
;;  :height 0.7)

;; (tabbar-mode 1)
;; (define-key global-map [(alt j)] 'tabbar-backward)
;; (define-key global-map [(alt k)] 'tabbar-forward)


;; (defun my-tabbar-buffer-groups (buffer)
;;   "Put files in the same directory into the same tab bar"
;;     (with-current-buffer (get-buffer buffer)
;;       (list (expand-file-name default-directory))))
;; (setq tabbar-buffer-groups-function
;;       'my-tabbar-buffer-groups)
