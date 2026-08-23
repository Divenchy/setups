;; Emacs options
(load-file "~/.emacs.d/basic_settings.el")

;; Emacs remaps
(load-file "~/.emacs.d/remaps.el")

;; Eshell setup
(load-file "~/.emacs.d/eshell.el")

;; QoL + UI
(load-file "~/.emacs.d/qol.el")
(load-file "~/.emacs.d/workflows.el")

;; Custom funcs
(load-file "~/.emacs.d/visible-mark.el")

;; Theming
(load-file "~/.emacs.d/themes.el")

;; Lsp
(load-file "~/.emacs.d/lsp.el")
;; Lang specific
(load-file "~/.emacs.d/langs/elixir.el")

;; Org-Mode
(load-file "~/.emacs.d/org.el")

(defun weo/display-startup-time ()
  (message "Emacs loaded in %s with %d garbage collections."
	   (format "%.2f seconds"
		   (float-time
		    (time-subtract after-init-time before-init-time)))
	   gcs-done))
(add-hook 'emacs-startup-hook #'weo/display-startup-time)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(cape command-log-mode corfu dap-mode direnv doom-modeline doom-themes ef-themes embark-consult
	  eshell-git-prompt exunit glsl-mode helpful inf-elixir kind-icon ligature magit marginalia mix
	  multiple-cursors odin-mode orderless org-bullets powershell projectile rainbow-delimiters
	  reformatter vertico visual-fill-column vterm yaml-mode yasnippet))
 '(package-vc-selected-packages
   '((odin-mode :vc-backend Git :url "https://github.com/mattt-b/odin-mode"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
