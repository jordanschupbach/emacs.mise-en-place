;;; Package summary

;;; Code:

;; https://github.com/Trevoke/org-gtd.el.git
;; (use-package org-gtd
;;   :straight (:host github :repo "Trevoke/org-gtd.el")
;;   :after 'org
;;   :demand t
;;   :init
;;     (setq org-gtd-update-ack "3.0.0")
;;     (setq org-gtd-done "DONE")
;;   :config
;;     (setq org-gtd-done "DONE")
;;   )
;; ;;; mep-org-gtd.el ends here


(use-package org-gtd
  :vc (:fetcher "github"
       :repo "Trevoke/org-gtd.el")
  :ensure t
  :after 'org
  :demand t
  :init
    (setq org-gtd-update-ack "3.0.0")
    (setq org-gtd-done "DONE")
  :config
    (setq org-gtd-done "DONE")
  )
