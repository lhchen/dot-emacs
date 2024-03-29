
(load "auctex.el" nil t t)
(load "preview-latex.el" nil t t)

(if (string-equal system-type "windows-nt")
     (require 'tex-mik))

(mapc (lambda (mode)
        (add-hook 'LaTeX-mode-hook mode))
      (list 'auto-fill-mode
            'LaTeX-math-mode
            'turn-on-reftex
            'linum-mode))

(add-hook 'LaTeX-mode-hook
          (lambda ()
            (setq TeX-auto-untabify t     ; remove all tabs before saving
                  TeX-engine 'xetex       ; use xelatex default
                  TeX-show-compilation t) ; display compilation windows
            (TeX-global-PDF-mode t)       ; PDF mode enable, not plain
            (setq TeX-save-query nil)
            (imenu-add-menubar-index)
            (define-key LaTeX-mode-map (kbd "S-TAB") 'TeX-complete-symbol)))

(setq TeX-view-program-selection
      '((output-pdf "SumatraPDF" "D:/Programs/SumatraPDF/SumatraPDF.exe %o") ))

(provide 'auctex-settings)

