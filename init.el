;; MiseEnPlace init

;; Use ~/.cache/emc as the config directory instead
(setq config-dir (expand-file-name "~/.emacs.mise-en-place/"))

;; Create directories if they don't exist
(unless (file-exists-p config-dir)
  (make-directory config-dir t))
;; (byte-recompile-directory config-dir 0 t)

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)

'(package-archives
   '(("gnu" . "http://elpa.gnu.org/packages/")
     ("melpa" . "http://www.mirrorservice.org/sites/stable.melpa.org/packages/")))
(package-initialize)



;; Bootstrap straight
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name
        "straight/repos/straight.el/bootstrap.el"
        (or (bound-and-true-p straight-base-dir)
            user-emacs-directory)))
      (bootstrap-version 7))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))






(load-theme 'modus-vivendi)
(load (concat config-dir "./packages/init.el"))
(load (concat config-dir "./src/mep-config.el"))
(load (concat config-dir "./src/mep-core.el"))
(load (concat config-dir "./src/mep-util.el"))


;; Don't show warnings from libraries - only errors:
(setq warning-minimum-level :error)





;; ;; define project-root method
;; (defun project-root (project)
;;   "Return the root directory of the project."
;;   (or (projectile-project-root)
;;       (vc-root-dir)
;;       default-directory))


(setq inferior-lisp-program "sbcl")

;; (enlarge-window DELTA &optional HORIZONTAL)
(load "~/.private/private.el")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-vc-selected-packages
   '((poly-org :vc-backend Git :url
	       "https://github.com/polymode/poly-org"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
