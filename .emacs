(setq-default tab-width 4)
(setq column-number-mode t)
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

(package-install 'use-package)
(use-package company-coq
	:ensure t
	:commands (company-coq-mode)
	:init (add-hook 'coq-mode-hook #'company-coq-mode))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(coq-shortcut-alist nil)
 '(coq-token-symbol-map
   (quote
	(("alpha" "Î±")
	 ("beta" "Î²")
	 ("gamma" "Î³")
	 ("delta" "Î´")
	 ("epsilon" "Îµ")
	 ("zeta" "Î¶")
	 ("eta" "Î·")
	 ("theta" "Î¸")
	 ("iota" "Î¹")
	 ("kappa" "Îº")
	 ("lambda" "Î»")
	 ("mu" "Î¼")
	 ("nu" "Î½")
	 ("xi" "Î¾")
	 ("pi" "Ï€")
	 ("rho" "Ï")
	 ("sigma" "Ïƒ")
	 ("tau" "Ï„")
	 ("upsilon" "Ï…")
	 ("phi" "Ï•")
	 ("chi" "Ï‡")
	 ("psi" "Ïˆ")
	 ("omega" "Ï‰")
	 ("Gamma" "Î“")
	 ("Delta" "Î”")
	 ("Theta" "Î˜")
	 ("Lambda" "Î›")
	 ("Xi" "Îž")
	 ("Pi" "Î ")
	 ("Sigma" "Î£")
	 ("Upsilon" "Î¥")
	 ("Phi" "Î¦")
	 ("Psi" "Î¨")
	 ("Omega" "Î©")
	 ("forall" "âˆ€")
	 ("exists" "âˆƒ")
	 ("nat" "â„•" type)
	 ("int" "â„¤" type)
	 ("rat" "â„š" type)
	 ("bool" "B" underline type)
	 ("false" "false" bold sans)
	 ("true" "true" bold sans)
	 ("{{" "â¦ƒ" bold)
	 ("}}" "â¦„" bold)
	 ("lhd" "âŠ²")
	 ("rhd" "âŠ³")
	 ("=>" "â‡’")
	 ("->" "â†’")
	 ("<-" "â†")
	 ("<->" "â†”")
	 ("++" "â§º")
	 ("=/=" "â‰¢")
	 ("=~=" "â‰…")
	 ("==b" "â‰¡")
	 ("<>b" "â‰¢")
	 ("-->" "âŸ¹-")
	 ("++>" "âŸ¹+")
	 ("==>" "âŸ¹")
	 (":=" "â‰”")
	 ("|-" "âŠ¢")
	 ("<>" "â‰ ")
	 ("-|" "âŠ£")
	 ("\\/" "âˆ¨")
	 ("/\\" "âˆ§"))))
 '(cursor-type (quote bar))
 '(custom-enabled-themes (quote (wombat)))
 '(inhibit-startup-screen t)
 '(package-selected-packages
   (quote
	(## use-package utop tuareg intero haskell-mode proof-general company-irony company-coq))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(proof-locked-face ((t (:background "darkslateblue"))))
 '(proof-queue-face ((t (:background "mediumorchid")))))

;; ocaml
(setq utop-command "opam config exec -- utop -emacs")

(autoload 'utop "utop" "Toplevel for OCaml" t)
(autoload 'utop-minor-mode "utop" "Minor mode for utop" t)
(add-hook 'tuareg-mode-hook 'utop-minor-mode)
(add-hook 'haskell-mode-hook 'interactive-haskell-mode)
