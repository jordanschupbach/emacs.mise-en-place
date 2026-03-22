;; https://github.com/justbur/emacs-which-key

;; (use-package which-key
;;  :straight (:host github :repo "justbur/emacs-which-key")
;;  :config
;;  (which-key-mode))



(use-package which-key
  :vc (:fetcher "github"
       :repo "justbur/emacs-which-key")
  :ensure t
 :config
 (which-key-mode))
