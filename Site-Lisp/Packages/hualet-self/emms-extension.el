(require 'emms)
(require 'emms-mark)
(require 'emms-last-played)

(defun hualet-emms-info-track-description (track)
  "Return a description of the current track."
  (let ((title (file-name-nondirectory (emms-track-name track))))
    (if title
        title)))

(defun hualet-emms-mode-line-playlist-current ()
  "Return a description of the current track."
  (let* ((track (emms-playlist-current-selected-track))
         (type (emms-track-type track))
         (title (emms-track-get track 'info-title)))
    (format "[ %s ]"
            (cond ((and title)
                   title)))))

(provide 'emms-extension)
