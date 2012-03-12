;; -*- Emacs-Lisp -*-

;; Time-stamp: <2010-08-28 21:03:22 Saturday by taoshanwen>

;; cedet1.0pre6 is conflict with which-func
;; after require cedet, which-func cann't work

;; http://emacser.com/install-cedet.htm
;; http://emacser.com/cedet.htm

(require 'cedet)
(require 'sr-speedbar)
(global-set-key (kbd "M-s b o") 'sr-speedbar-open)
(global-set-key (kbd "M-s b k") 'sr-speedbar-close)

(eal-define-keys
 `speedbar-key-map
 `(("j"   speedbar-next)
   ("k"   speedbar-prev)
   ("o"   other-window)
   ("m"   speedbar-toggle-line-expansion)
   ("SPC" View-scroll-half-page-forward)
   ("u"   View-scroll-half-page-backward)))

(provide 'cedet-settings)
