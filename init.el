;; MiseEnPlace init

;; Use ~/.cache/emc as the config directory instead
(setq config-dir (expand-file-name "~/.emacs.misenplace/"))

;; Create directories if they don't exist
(unless (file-exists-p config-dir)
  (make-directory config-dir t))
;; (byte-recompile-directory config-dir 0 t)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(load (concat config-dir "./packages/init.el"))
(load (concat config-dir "./src/mep-config.el"))
