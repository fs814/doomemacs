;; -*- no-byte-compile: t; -*-
;;; ui/treemacs/packages.el

(package! treemacs :pin "56691a530abb61564c8df0456a18ff0f301c2055")
(package! treemacs-nerd-icons :recipe (:host github :repo "rainstormstudio/treemacs-nerd-icons"))
;; These packages have no :pin because they're in the same repo
(when (modulep! :editor evil +everywhere)
  (package! treemacs-evil))
(package! treemacs-projectile)
(when (modulep! :tools magit)
  (package! treemacs-magit))
(when (modulep! :ui workspaces)
  (package! treemacs-persp))
(when (and (modulep! +lsp)
           (not (modulep! :tools lsp +eglot)))
  (package! lsp-treemacs :pin "e66ae2196503d4e84334519e56b4388feffa5060"))
