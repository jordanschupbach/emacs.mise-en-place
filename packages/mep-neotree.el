;; https://github.com/jaypei/emacs-neotree
;; (use-package neotree
;;  :straight (:host github :repo "jaypei/emacs-neotree" :tag "0.6.0")
;;  :after all-the-icons
;;  :config
;;  (setq neo-window-fixed-size nil)
;;  (setq neo-theme (if (display-graphic-p) 'icons 'arrow))
;;  )


(use-package neotree
  :straight (:host github :repo "jaypei/emacs-neotree")
  ;; :vc (:fetcher "github"
  ;;      :repo "jaypei/emacs-neotree")
  :ensure t

 :after all-the-icons
 :config
 (setq neo-window-fixed-size nil)
 (setq neo-theme (if (display-graphic-p) 'icons 'arrow))
 )
