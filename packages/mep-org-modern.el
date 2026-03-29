;; https://github.com/minad/org-modern

;; (use-package org-modern
;;   :straight (:host github :repo "minad/org-modern")
;;   :after 'org
;;   )

(use-package org-modern
  :straight (:host github :repo "minad/org-modern")
  ;; :vc (:fetcher "github"
  ;;      :repo "minad/org-modern")
  :ensure t
  :after 'org
  )
