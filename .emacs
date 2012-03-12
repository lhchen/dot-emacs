
(defconst my-emacs-path "~/dot-emacs/")
(defconst my-emacs-my-lisps-path  (concat my-emacs-path "my-lisps/") "我自己写的emacs lisp包的路径")
(defconst my-emacs-lisps-path     (concat my-emacs-path "lisps/") "我下载的emacs lisp包的路径")
(defconst my-emacs-templates-path (concat my-emacs-path "templates/") "Path for templates")

;; 把`my-emacs-lisps-path'的所有子目录都加到`load-path'里面
(load (concat my-emacs-my-lisps-path "my-subdirs"))
(my-add-subdirs-to-load-path my-emacs-lisps-path)
(my-add-subdirs-to-load-path my-emacs-my-lisps-path)

(require 'misc-settings)

(require 'eval-after-load)

(require 'color-theme-settings)
(require 'font-settings)
(require 'base-settings)

(require 'buffer-settings)

(require 'auto-complete-settings)
(require 'cedet-settings)
(require 'autopair-settings)

(require 'perl-settings)
(require 'python-settings)

(require 'session-settings)

