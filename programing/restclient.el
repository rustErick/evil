(use-package restclient
  ;; :functions hydra-restclient
  ;; :bind ("C-c r" . hydra-restclient/body)
  :config
  (add-to-list 'auto-mode-alist '("\\.http\\'" . restclient-mode))
  )
  ;; (with-eval-after-load 'hydra
  ;; 	(defhydra hydra-restclient (:hint nil)
  ;; 	  "
  ;;     [_q_] Run query    [_r_] Run - Info       [_i_] Info url
  ;;     [_n_] Next query   [_p_] Previous query
  ;;       "
  ;; 	  ("q" restclient-http-send-current)
  ;; 	  ("r" restclient-http-send-current-raw)
  ;; 	  ("n" restclient-jump-next)
  ;; 	  ("p" restclient-jump-prev)
  ;; 	  ("i" restclient-show-info))
  ;; 	))
