;; https://gitlab.com/oer/org-re-reveal

;; (use-package org-re-reveal
;;   :straight t
;;   :config
;;   (setq org-re-reveal-root "./node_modules/reveal.js")
;;   (setq org-re-reveal-width "\"0.95\"")
;;   )


(use-package org-re-reveal
  :straight (:host github :repo "oer/org-re-reveal")
  ;; :vc (:fetcher "github"
  ;;      :repo "oer/org-re-reveal")
  :ensure t
  :config
  (setq org-re-reveal-root "./node_modules/reveal.js")
  (setq org-re-reveal-width "\"0.95\"")
  )
