
(if (file-exists-p "~/.emacs.d/server/server")
	(server-force-delete) )

(server-start)

(provide 'emacs-server-settings)
