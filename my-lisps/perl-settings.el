(load "pde-load")

(defalias 'perl-mode 'cperl-mode)

(defun perl-settings ()
  "Settings for `perl'."
;;  (setq cperl-hairy t)
  (setq cperl-font-lock t)
  (setq cperl-electric-lbrace-space t)
  (setq cperl_electric-parens t)
  (setq cperl-electric-linefeed t)
  (setq cperl-electric-keywords t)
  (setq cperl-info-on-command-no-prompt t)
  (setq cperl-clobber-lisp-bindings t)
  (setq cperl-lazy-help-time t)
  (setq cperl-auto-newline t)
  
  (defun cperl-eldoc-documentation-function ()
    "Return meaningful doc string for `eldoc-mode'."
    (car
     (let ((cperl-message-on-help-error nil))
       (cperl-get-help))))
  (add-hook 'cperl-mode-hook
            (lambda ()
              (set (make-local-variable 'eldoc-documentation-function)
                   'cperl-eldoc-documentation-function))) ;;)

  (defmacro join (join-char &rest others)
    `(mapconcat 'identity ',others ,join-char))

  (setq my-cperl-outline-regexp
        (concat
         "^"                              ; Start of line
         "[ \\t]*"                        ; Skip leading whitespace
         "\\("                            ; begin capture group \1
         (join "\\|"
               "=head[12]"                  ; POD header
               "package"                    ; package
               "=item"                      ; POD item
               "sub"                        ; subroutine definition
               )
         "\\)"                            ; end capture group \1
         "\\b"                            ; Word boundary
         ))

  (setq cperl-mode-hook 'my-cperl-customizations)

  (defun my-cperl-customizations ()
    "cperl-mode customizations that must be done after cperl-mode loads"
    (outline-minor-mode t)
    (auto-complete-mode t)
    ;;(abbrevrev-mode)
    
    (defun cperl-outline-level ()
      (looking-at outline-regexp)
      (let ((match (match-string 1)))
        (cond
         ((eq match "=head1" ) 1)
         ((eq match "package") 2)
         ((eq match "=head2" ) 3)
         ((eq matchh "=item"  ) 4)
         ((eq match "sub"    ) 5)
         (t 7)
         )))

    (setq cperl-outline-regexp  my-cperl-outline-regexp)
    (setq outline-regexp        cperl-outline-regexp)
    (setq outline-level        'cperl-outline-level)
    ))

(eval-after-load "cperl-mode"
  `(perl-settings))

(provide 'perl-settings)
