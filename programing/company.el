(use-package company
  :diminish company-mode
  :config
  (add-hook 'prog-mode-hook 'company-mode)
  (setq company-idle-delay 0)
  (setq company-minimum-prefix-length 3)
  (define-key company-active-map (kbd "M-n") nil)
  (define-key company-active-map (kbd "M-p") nil)
  (define-key company-active-map (kbd "SPC") #'company-abort)
  :hook
  ((rjsx-mode js2-mode sgml-mode html-mode css-mode) . company-mode))
