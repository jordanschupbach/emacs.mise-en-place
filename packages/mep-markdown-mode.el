;; https://github.com/jrblevin/markdown-mode
;; (use-package markdown-mode
;;  :straight (:host github :repo "jrblevin/markdown-mode" :tag "0.6.0")
;;  :config
;;     (setq neo-window-fixed-size nil))


(use-package markdown-mode
  :vc (:fetcher "github"
       :repo "jrblevin/markdown-mode")
  :ensure t
  :config
  (setq neo-window-fixed-size nil)
  :mode ("README\\.md\\'" . gfm-mode)
  :init (setq markdown-command "multimarkdown")
  :bind (:map markdown-mode-map
         ("C-c C-e" . markdown-do)))




;; (use-package markdown-mode
;;  :straight (:host github :repo "jrblevin/markdown-mode" :tag "v2.6")
;;   :ensure t
;;   :mode ("README\\.md\\'" . gfm-mode)
;;   :init (setq markdown-command "multimarkdown")
;;   :bind (:map markdown-mode-map
;;          ("C-c C-e" . markdown-do)))
