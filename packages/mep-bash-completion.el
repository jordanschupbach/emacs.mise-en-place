;; https://github.com/szermatt/emacs-bash-completion

(use-package bash-completion
  :straight (:host github :repo "szermatt/emacs-bash-completion")
  ;; :vc (:fetcher "github"
  ;;      :repo "szermatt/emacs-bash-completion")
  :ensure t
  :config
    (bash-completion-setup)
    (add-hook 'eshell-mode-hook
      (lambda ()
        (add-hook 'completion-at-point-functions
		  'bash-completion-capf-nonexclusive nil t))))
