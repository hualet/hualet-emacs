(autoload 'flymake-find-file-hook "flymake" "" t)
(add-hook 'find-file-hook 'flymake-find-file-hook)
(setq flymake-gui-warnings-enabled nil)
(setq flymake-log-level 0)
(when (load "flymake" t)
  (
   defun flymake-pycheckers-init ()
         (
          let* 
             (
              (
               temp-file 
               (
                flymake-init-create-temp-buffer-copy
                'flymake-create-temp-inplace
                )
               )
              (
               local-file 
               (
                file-relative-name
                temp-file
                (
                 file-name-directory buffer-file-name
                                     )
                )
               )
              )
           (
            list "pyflakes"  (list local-file)
                 )
           )

         (add-to-list 'flymake-allowed-file-name-masks
                      '("\\.py\\'" flymake-pycheckers-init))
         )
  )


(provide 'init-flymake)
