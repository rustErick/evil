(use-package yasnippet
  :diminish yas-minor-mode
  :custom (yas-snippet-dirs '("~/.emacs.d/private/snippets"))
  :hook
  ((c++-mode) . yas-minor-mode)
  :config
  (yas-reload-all))
