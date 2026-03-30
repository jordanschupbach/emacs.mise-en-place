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


;;; Code:
(defvar xclip-program (executable-find "xclip")
  "Name of XClip program tool.")

(defvar xclip-select-enable-clipboard t
  "Non-nil means cutting and pasting uses the clipboard.
This is in addition to, but in preference to, the primary selection.")

(defvar xclip-last-selected-text-clipboard nil
  "The value of the CLIPBOARD X selection from xclip.")

(defvar xclip-last-selected-text-primary nil
  "The value of the PRIMARY X selection from xclip.")

(defun xclip-set-selection (type data)
  "TYPE is a symbol: primary, secondary and clipboard.

See `x-set-selection'."
  (when (and xclip-program (getenv "DISPLAY"))
    (let* ((process-connection-type nil)
	   (proc (start-process "xclip" nil "xclip"
				"-selection" (symbol-name type))))
      (process-send-string proc data)
      (process-send-eof proc))))

(defun xclip-select-text (text &optional push)
  "See `x-select-text'."
  (xclip-set-selection 'primary text)
  (setq xclip-last-selected-text-primary text)
  (when xclip-select-enable-clipboard
    (xclip-set-selection 'clipboard text)
    (setq xclip-last-selected-text-clipboard text)))

(defun xclip-selection-value ()
  "See `x-cut-buffer-or-selection-value'."
  (when (and xclip-program (getenv "DISPLAY"))
    (let (clip-text primary-text)
      (when xclip-select-enable-clipboard
	(setq clip-text (shell-command-to-string "xclip -o -selection clipboard"))
	(setq clip-text
	      (cond ;; check clipboard selection
	       ((or (not clip-text) (string= clip-text ""))
		(setq xclip-last-selected-text-primary nil))
	       ((eq      clip-text xclip-last-selected-text-clipboard) nil)
	       ((string= clip-text xclip-last-selected-text-clipboard)
		;; Record the newer string,
		;; so subsequent calls can use the `eq' test.
		(setq xclip-last-selected-text-clipboard clip-text)
		nil)
	       (t (setq xclip-last-selected-text-clipboard clip-text)))))
      (setq primary-text (shell-command-to-string "xclip -o"))
      (setq primary-text
	    (cond ;; check primary selection
	     ((or (not primary-text) (string= primary-text ""))
	      (setq xclip-last-selected-text-primary nil))
	     ((eq      primary-text xclip-last-selected-text-primary) nil)
	     ((string= primary-text xclip-last-selected-text-primary)
	      ;; Record the newer string,
	      ;; so subsequent calls can use the `eq' test.
	      (setq xclip-last-selected-text-primary primary-text)
	      nil)
	     (t (setq xclip-last-selected-text-primary primary-text))))
      (or clip-text primary-text))))

;;;###autoload
(defun turn-on-xclip ()
  (interactive)
  (setq interprogram-cut-function 'xclip-select-text)
  (setq interprogram-paste-function 'xclip-selection-value))

;;;###autoload
(defun turn-off-xclip ()
  (interactive)
  (setq interprogram-cut-function nil)
  (setq interprogram-paste-function nil))


(add-hook 'terminal-init-xterm-hook 'turn-on-xclip)

















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
   '((org-roam :vc-backend Git :url
	       "https://github.com/org-roam/org-roam"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
