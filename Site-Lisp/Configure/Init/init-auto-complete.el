(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/HualetEmacs/Site-Lisp/Packages/auto-complete/ac-dict")
(ac-config-default)

(require 'auto-complete-yasnippet)
(custom-set-variables
	'(ac-sources
		'(
		  ac-source-yasnippet 
		)))

(global-auto-complete-mode t)

(provide 'init-auto-complete)
