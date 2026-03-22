;; https://github.com/minad/affe
;;(use-package affe
;;  :straight (:host github :repo "minad/affe")
;;  :config
;;  ;; Manual preview key for `affe-grep'
;;  (consult-customize affe-grep :preview-key "M-."))



(use-package affe
  :vc (:fetcher "github"
       :repo "minad/affe")
  :ensure t
  :config
  ;; Manual preview key for `affe-grep'
  (consult-customize affe-grep :preview-key "M-."))
