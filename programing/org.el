(use-package org
  :ensure t
  :bind (("<f8>"  . org-cycle-agenda-files)
         ("<f12>" . org-agenda)
         ("C-c a" . org-agenda)
         ("C-c b" . org-iswitchb)
         ("C-c c" . org-capture)
         ("C-c S" . org-store-link)
         ("C-c l" . org-insert-link)
         ;; Clocking
         ("<f11>"   . org-clock-goto)
         ("C-<f11>" . org-clock-in))
  :init
  (use-package org-checklist :load-path "lib")
  (use-package org-bullets :ensure t )
  (org-babel-load-file
   (expand-file-name "conf/org.org" user-emacs-directory)))

(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
