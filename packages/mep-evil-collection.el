;; https://github.com/emacs-evil/evil-collection
;; (use-package evil-collection
;;   :straight (:host github :repo "emacs-evil/evil-collection")
;;   :after evil
;;   :ensure t
;;   :config
;;   (evil-collection-init))


(use-package evil-collection
  :vc (:fetcher "github"
       :repo "emacs-evil/evil-collection")
  :ensure t
  :after evil
  :config
  (evil-collection-init))
