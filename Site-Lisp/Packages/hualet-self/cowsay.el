(defcustom cowsay-buffer-name "*Welcome to HualetEmacs!*"
  "the buffer name of cowsay."
  :type 'string
  :group 'cowsay
  )
(defvar cowsay-word "Hackers solve problems and build things, and they believe in freedom and voluntary mutual help. To be accepted as a hacker, you have to behave as though you have this kind of attitude yourself. And to behave as though you have the attitude, you have to really believe the attitude. Or, as the following modern Zen poem has it:
    To follow the path:
    look to the master,
    follow the master,
    walk with the master,
    see through the master,
    become the master.")

(defun cowsay (str)
  "display a lovely cow."
  (if (file-exists-p "/usr/games/cowsay")
      (progn
        (start-process "emacs-cowsay" "*Welcome to HualetEmacs!" "/usr/games/cowsay" str)
        (switch-to-buffer "*Welcome to HualetEmacs!")
        (print "things like that")
        (previous-line)
        (beginning-of-line)
        (kill-line)
        (beginning-of-buffer)
        (toggle-read-only 1))))

(defun cowsay-animation (str)
  (if (file-exists-p "/usr/games/cowsay")
      (progn
        (switch-to-buffer "*Welcome to HualetEmacs!")
        (animate-string (shell-command-to-string (concat "cowsay " (concat (concat "\"" str) "\""))) 0))))

(defun cowsay-how-to-become-a-hacker ()
  (cowsay-animation cowsay-word)
  )

(provide 'cowsay)
