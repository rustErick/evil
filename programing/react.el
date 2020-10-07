(use-package js2-mode
  :commands js2-mode
  :defer t
  :mode ("\\.js\\'" . js2-mode)
  :init
  (setq js2-strict-trailing-comma-warning nil)
  (add-hook 'js2-mode-hook
            (lambda ()
              (make-local-variable 'js-indent-level)
			  (setq js-indent-level 4))))

(use-package rjsx-mode
  :defer t
  :mode "\\.jsx\\'")
