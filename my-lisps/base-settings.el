;; ������Ϣ
(setq user-mail-address "clh329@gmail.com")
(setq user-full-name    "LingHui CHEN")

;; ��fringe����ʾһ��С��ͷָʾ��ǰbuffer�ı߽�
(setq-default indicate-buffer-boundaries 'left)

;; ������ʾ��������
(setq echo-keystrokes 0.1)

(setq system-time-locale "C")

;; ��Ҫ������
(customize-set-variable 'scroll-bar-mode nil)

;; ֧��emacs���ⲿ�����ճ��
(setq x-select-enable-clipboard t)

;; Emacs�Ҳ������ʵ�ģʽʱ��ȱʡʹ��text-mode
(setq default-major-mode 'text-mode)

;; ��ʾ�к�
(setq column-number-mode t)

;; emacs lock
(autoload 'toggle-emacs-lock "emacs-lock" "Emacs lock" t)

;; ����ʾEmacs�Ŀ�ʼ����
(setq inhibit-startup-message t)
(setq initial-scratch-message "")

;; ��Ҫ����û��û�˵���yes or no, Ϊʲô������y/n
(fset 'yes-or-no-p 'y-or-n-p)

;; ��Ҫ��˸���, ��������
(blink-cursor-mode -1)

;; ��ֹҳ�����ʱ����,scroll-margin 3�����ڿ�����Ļ����3��ʱ�Ϳ�ʼ����,���ԺܺõĿ���������
(setq scroll-margin 3
      scroll-conservatively 10000)

;; û����ʾ��,Ҳ������
(setq ring-bell-function 'ignore)

;; ���Եݹ��ʹ��minibuffer
(setq enable-recursive-minibuffers t)

;;;; Switch among windows
(global-set-key [M-left] 'windmove-left)
(global-set-key [M-right] 'windmove-right)
(global-set-key [M-up] 'windmove-up)
(global-set-key [M-down] 'windmove-down)

(tool-bar-mode -1)
(menu-bar-mode -1)

;; ���Ա������ϴι�����ڵ�λ��
(require 'saveplace)
(setq-default save-place t)

;; ��꿿�����ָ��ʱ�������ָ���Զ��ÿ�����ס���ߡ�
(mouse-avoidance-mode 'animate)

;; �������������ظ���kill
(setq kill-do-not-save-duplicates t)

;; �ȸ�ʽ���ٲ�ȫ
(setq tab-always-indent 'complete)

;; kill-ring
(setq kill-ring-max 200)

(defun visit-.emacs ()
  "����.emacs�ļ�"
  (interactive)
  (find-file (concat my-emacs-my-lisps-path "init.el")))
(global-set-key (kbd "C-x E") 'visit-.emacs)

(global-set-key (kbd "C-j") 'goto-line)
(global-set-key (kbd "C-z") 'undo)

(delq 'process-kill-buffer-query-function kill-buffer-query-functions)

;; Auto indentation
(define-key global-map (kbd "RET") 'newline-and-indent)

(require 'emacs-server-settings)

(provide 'base-settings)