(use-package copilot
  :straight (:host github :repo "copilot-emacs/copilot.el")
  :ensure t
  :hook ((prog-mode org-mode) . copilot-mode)
  ;; :hook (after-change-major-mode . copilot-mode)
  :bind (:map copilot-completion-map
              ("<tab>" . copilot-accept-completion)
              ("TAB" . copilot-accept-completion)
              ("C-<tab>" . copilot-accept-completion-by-word)
              ("C-TAB" . copilot-accept-completion-by-word)
              ("C-n" . copilot-next-completion)
              ("C-p" . copilot-previous-completion))

  :config
    (copilot-mode)
)
