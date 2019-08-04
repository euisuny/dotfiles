;; MELPA
(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
	(not (gnutls-available-p))))
	(proto (if no-ssl "http" "https")))
	(add-to-list 'package-archives
	(cons "melpa" (concat proto "://melpa.org/packages/")) t))
(package-initialize)

;; Color Theme
(load-theme 'wombat)

;; Proof General
(setq overlay-arrow-string "")
(setq proof-script-fly-past-comments t)
(setq proof-splash-seen t)
(setq coq-highlight-hyps-cited-in-response nil)
