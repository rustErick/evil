(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (url (concat (if no-ssl "http""https") "://melpa.org/packages/")))
  (add-to-list'package-archives (cons"melpa" url) t))
(when (>= emacs-major-version 24)
  (add-to-list'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)
;; UTF-8
(set-language-environment "UTF-8")
(setq locale-coding-system 'utf-8)
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)

;; USE PACKAGE
 (use-package use-package
   :custom
   (use-package-hook-name-suffix nil)
   (use-package-always-ensure t)
   (use-package-compute-statistics t))
;; UPDATE PACKAGE
(use-package auto-package-update
  :defer nil
  :if (not (daemonp))
  :custom
  (auto-package-update-interval 7) ;; in days
  (auto-package-update-prompt-before-update t)
  (auto-package-update-delete-old-versions t)
  (auto-package-update-hide-results t)
  )

;; EVIL MODE
(use-package evil
  :init (evil-mode 1)
  ;; :hook (after-init . evil-mode)
  :bind (
		 ("M-m" . evil-normal-state)
		 )
  )
;; EVIL TERMINAL CURSOR
 (unless (display-graphic-p)
             (require 'evil-terminal-cursor-changer)
             (evil-terminal-cursor-changer-activate) ; or (etcc-on)
             )
(setq evil-motion-state-cursor 'box)  ;; █
(setq evil-visual-state-cursor 'box)  ;; █
(setq evil-normal-state-cursor 'box)  ;; █
(setq evil-insert-state-cursor 'bar)  ;; ⎸
(setq evil-replace-state-cursor 'hbar) ;;_
(setq evil-emacs-state-cursor  'bar)
;; UNDO TREE
(use-package undo-tree
  :defer t
  :commands undo-tree-mode
  :init (global-undo-tree-mode)
  :custom
  (undo-tree-visualizer-diff t)
  (undo-tree-visualizer-timestamps t))
;; INDENT GUIDE
  (indent-guide-global-mode)
;; EMMET
(use-package emmet-mode
  :bind ("M-o" . emmet-expand-line)
  :init
  (add-hook 'rjsx-mode-hook
            (lambda ()
              (setq-local emmet-expand-jsx-className? t)))
  (add-hook 'sgml-mode-hook
			(lambda ()
			  (setq-local emmet-expand-jsx-className? nil)))
  :hook
  ((html-mode sgml-mode css-mode rjsx-mode). emmet-mode))

;; react and js
(load "~/.emacs.d/programing/react.el")
;; org
;; (load "~/.emacs.d/programing/org.el")
;; yasnippet
(load "~/.emacs.d/programing/snippets.el")
;; json
(load "~/.emacs.d/programing/json.el")
;; company
(load "~/.emacs.d/programing/company.el")
;; restclient http
(load "~/.emacs.d/programing/restclient.el")
