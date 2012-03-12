(defun my-define-keys (keymap key-defs)
  "Execute `define-key' on KEYMAP use arguments from KEY-DEFS.

KEY-DEFS should be one list, every element of it is a list
whose first element is key like argument of `define-key', and second element is command
like argument of `define-key'."
   (dolist (key-def key-defs)
     (when key-def
       (define-key keymap (eval `(kbd ,(car key-def))) (nth 1 key-def)))))
	   
(provide 'misc-settings)