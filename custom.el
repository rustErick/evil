(add-to-list 'before-save-hook 'delete-trailing-whitespace)
(fset 'yes-or-no-p 'y-or-n-p)
(global-auto-revert-mode t)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
;; (global-whitespace-mode t)
(show-paren-mode 1)
;; (display-time-mode 1)
;; (display-battery-mode 1)
;; (global-hl-line-mode 1)
(column-number-mode -1)
;; (global-linum-mode t)
(line-number-mode -1)
(winner-mode t)
(global-font-lock-mode 1)
;; (size-indication-mode 1)
(transient-mark-mode 1)
(delete-selection-mode 1)
(global-prettify-symbols-mode t)
(electric-pair-mode t)

(setq inhibit-startup-message t)
(setq ring-bell-function 'ignore)
(setq require-final-newline t)
(setq-default indent-tabs-mode t)
(setq-default tab-width 4)
(setq-default standard-indent 4)
(setq-default indent-line-function 'insert-tab)
(setq-default js-switch-indent-offset 4)
(setq make-backup-files nil)
;; (setq x-select-enable-clipboard t)
(setq auto-save-default nil)
(setq-default electric-indent-inhibit t)
;; (setq backward-delete-char-untabify-method 'nil)
(setq electric-pair-pairs '(
                            (?\{ . ?\})
                            (?\` . ?\`)
                            (?\[ . ?\])
                            (?\' . ?\')
                            ))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
	(org-bullets restclient evil-terminal-cursor-changer company json-mode emmet-mode auto-package-update yasnippet rjsx-mode indent-guide use-package evil))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
