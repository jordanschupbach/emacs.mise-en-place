


;; https://github.com/wbolster/emacs-direnv

(use-package direnv
  :vc (:fetcher "github"
       :repo "wbolster/emacs-direnv")
  :ensure t
  :config
  (direnv-mode)
)
