;; https://github.com/emacs-lsp/lsp-java
;; (use-package lsp-java
;;   :after lsp-mode
;;   :straight (:host github :repo "emacs-lsp/lsp-java")
;;   :config (add-hook 'java-mode-hook 'lsp)
;; )


(use-package lsp-java
  :vc (:fetcher "github"
       :repo "emacs-lsp/lsp-java")
  :ensure t
  :after lsp-mode
  :config (add-hook 'java-mode-hook 'lsp)
)
