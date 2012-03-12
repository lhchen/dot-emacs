
(define-key global-map (kbd "C-x M-n") 'next-buffer)
(define-key global-map (kbd "C-x M-p") 'previous-buffer)

;; 按下C-x k立即关闭掉当前的buffer
(global-set-key (kbd "C-x k") 'kill-this-buffer)

(global-set-key (kbd "C-x C-b") 'ibuffer)

;; 非常方便的切换buffer和打开文件
(ido-mode 1)

(require 'unique-window-buffers)
(setq unique-window-buffers-mode t)

;; 可以为重名的buffer在前面加上其父目录的名字来让buffer的名字区分开来，而不是单纯的加一个没有太多意义的序号
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

(defun revert-buffer-no-confirm ()
    "Revert buffer without confirmation."
    (interactive) (revert-buffer t t))

(global-set-key (kbd "C-x u") 'revert-buffer-no-confirm)

(provide 'buffer-settings)
