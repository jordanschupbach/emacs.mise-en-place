;; https://github.com/astahlman/ob-async
;; (use-package ob-async
;;  :straight (:host github :repo "astahlman/ob-async")
;;   :after org
;;   )


(use-package ob-async
  :vc (:fetcher "github"
       :repo "astahlman/ob-async")
  :ensure t
  :after org
  )
