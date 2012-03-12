
(define-key global-map (kbd "C-x M-n") 'next-buffer)
(define-key global-map (kbd "C-x M-p") 'previous-buffer)

;; ����C-x k�����رյ���ǰ��buffer
(global-set-key (kbd "C-x k") 'kill-this-buffer)

(global-set-key (kbd "C-x C-b") 'ibuffer)

;; �ǳ�������л�buffer�ʹ��ļ�
(ido-mode 1)

(require 'unique-window-buffers)
(setq unique-window-buffers-mode t)

;; ����Ϊ������buffer��ǰ������丸Ŀ¼����������buffer���������ֿ����������ǵ����ļ�һ��û��̫����������
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

(defun revert-buffer-no-confirm ()
    "Revert buffer without confirmation."
    (interactive) (revert-buffer t t))

(global-set-key (kbd "C-x u") 'revert-buffer-no-confirm)

(provide 'buffer-settings)
