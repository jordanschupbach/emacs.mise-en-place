;; https://github.com/wbolster/emacs-direnv
(use-package direnv
  :straight (:host github :repo "wbolster/emacs-direnv")
  ;; :vc (:fetcher "github"
  ;;      :repo "wbolster/emacs-direnv")
  :ensure t
  :config
  (direnv-mode)
)
