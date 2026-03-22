;; MiseEnPlace init

;; Use ~/.cache/emc as the config directory instead
(setq config-dir (expand-file-name "~/.emacs.mise-en-place/"))

;; Create directories if they don't exist
(unless (file-exists-p config-dir)
  (make-directory config-dir t))
;; (byte-recompile-directory config-dir 0 t)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(load (concat config-dir "./packages/init.el"))
(load (concat config-dir "./src/mep-config.el"))
(load (concat config-dir "./src/mep-core.el"))
(load (concat config-dir "./src/mep-util.el"))

(load-theme 'modus-vivendi)


;; (enlarge-window DELTA &optional HORIZONTAL)
(load "~/.private/private.el")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages nil)
 '(package-vc-selected-packages
   '((magit :vc-backend Git :url "https://github.com/magit/magit")
     (org-modern :vc-backend Git :url
		 "https://github.com/minad/org-modern")
     (vimish-fold :vc-backend Git :url
		  "https://github.com/matsievskiysv/vimish-fold")
     (texfrag :vc-backend Git :url
	      "https://github.com/TobiasZawada/texfrag")
     (anaconda-mode :vc-backend Git :url
		    "https://github.com/pythonic-emacs/anaconda-mode")
     (ob-mermaid :vc-backend Git :url
		 "https://github.com/arnm/ob-mermaid")
     (ox-gfm :vc-backend Git :url "https://github.com/larstvei/ox-gfm")
     (ob-async :vc-backend Git :url
	       "https://github.com/astahlman/ob-async")
     (general :vc-backend Git :url
	      "https://github.com/noctuid/general.el")
     (ivy :vc-backend Git :url "https://github.com/abo-abo/swiper")
     (yasnippet :vc-backend Git :url
		"https://github.com/joaotavora/yasnippet")
     (vertico :vc-backend Git :url "https://github.com/minad/vertico")
     (projectile :vc-backend Git :url
		 "https://github.com/bbatsov/projectile")
     (org-preview-html :vc-backend Git :url
		       "https://github.com/jakebox/org-preview-html")
     (org-roam :vc-backend Git :url
	       "https://github.com/org-roam/org-roam")
     (org-gtd :vc-backend Git :url
	      "https://github.com/Trevoke/org-gtd.el")
     (orderless :vc-backend Git :url
		"https://github.com/oantolin/orderless")
     (neotree :vc-backend Git :url
	      "https://github.com/jaypei/emacs-neotree")
     (marginalia :vc-backend Git :url
		 "https://github.com/minad/marginalia")
     (lsp-java :vc-backend Git :url
	       "https://github.com/emacs-lsp/lsp-java")
     (lsp-ui :vc-backend Git :url
	     "https://github.com/emacs-lsp/lsp-ui")
     (company-lsp :vc-backend Git :url
		  "https://github.com/tigersoldier/company-lsp")
     (lsp-mode :vc-backend Git :url
	       "https://github.com/hniksic/emacs-htmlize")
     (htmlize :vc-backend Git :url
	      "https://github.com/hniksic/emacs-htmlize")
     (gptel :vc-backend Git :url "https://github.com/karthink/gptel")
     (flycheck :vc-backend Git :url
	       "https://github.com/flycheck/flycheck")
     (evil-collection :vc-backend Git :url
		      "https://github.com/emacs-evil/evil-collection")
     (ess :vc-backend Git :url "https://github.com/emacs-ess/ESS")
     (doom-modeline :vc-backend Git :url
		    "https://github.com/seagle0128/doom-modeline")
     (dashboard :vc-backend Git :url
		"https://github.com/emacs-dashboard/emacs-dashboard")
     (cape :vc-backend Git :url "https://github.com/minad/cape")
     (corfu :vc-backend Git :url "https://github.com/minad/corfu")
     (consult-project-extra :vc-backend Git :url
			    "https://github.com/Qkessler/consult-project-extra")
     (bash-completion :vc-backend Git :url
		      "https://github.com/szermatt/emacs-bash-completion")
     (affe :vc-backend Git :url "https://github.com/minad/affe")
     (all-the-icons-completion :vc-backend Git :url
			       "https://github.com/iyefrat/all-the-icons-completion")
     (all-the-icons :vc-backend Git :url
		    "https://github.com/domtronn/all-the-icons.el")
     (vc-use-package :vc-backend Git :url
		     "https://github.com/slotThe/vc-use-package"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
