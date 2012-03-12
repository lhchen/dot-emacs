;; 英文字体
(set-face-attribute
  ;; 'default nil :font "Ubuntu Mono 11")
 ;; 'default nil :font "Yahei Consolas Hybrid 11")
 'default nil :font "Monaco 10")
 ;; 'default nil :font "Courier New 10")
;; 中文字体
(dolist (charset '(kana han symbol cjk-misc bopomofo))
  (set-fontset-font (frame-parameter nil 'font)
		    charset
		    (font-spec :family "Simsun" :size 15)))

(provide 'font-settings)
