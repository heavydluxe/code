;; Set line numbers and text wrapping
;; (global-display-line-numbers-mode 1)
(global-visual-line-mode 1)
(require 'cl-lib)

;; BIG SECTION OF ORGMODE STUFF
;; Org file path settings
(setq org-archive-location "~/sbemode/orgmode/zzzorg-archive.log::")
(setq org-agenda-files (directory-files-recursively "~/sbemode/orgmode/" "\\.org$"))
(setq backup-directory-alist '(("." . "~/zzzemacs-backups")))

;; Org-mode keyword settings
(setq org-todo-keywords
      '((sequence "TODO(t)"
		  "INPROC(i)"
		  "PROJECT(p)"
		  "waiting(w)"
		  "future(f)"
		  "|"
		  "DONE(d)")))

;; Orgmode colorful bits and bobs
(setq org-todo-keyword-faces
      '(("TODO" . (:foreground "brightwhite" :background "color-196"))
	("INPROC" . (:foreground "black" :background "brightgreen"))
	("PROJECT" . (:foreground "brightwhite" :background "color-166"))
	("waiting" . (:foreground "black" :background "brightyellow"))
	("future" . (:foreground "while" :background "color-19"))
       	("DONE" . (:foreground "brightblack" :background "black"))))

;; Org-mode tag settings
(setq org-tag-alist
      '(("work" .?w)
	("Steve" .?s)
	("Team" .?t)
	("home" .?h)
	("church" .?c)))

;; Org-mode custom agenda views
;; ---> Org agendas by tag
(setq org-agenda-custom-commands
      '(("1" "Steve Meeting"
         tags-todo ":Steve:")
        ("2" "Team Meeting"
         tags-todo ":Team:")))

;; deft notes information
(custom-set-variables
 '(package-selected-packages '(deft)))
(setq deft-extensions '("txt" "org" "md"))
(setq deft-directory "~/sbemode/orgmode/defts")
(setq deft-default-extension "org")
(setq deft-new-file-format "%Y%b%d")

;; MELPA Package Downloads
(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/"))
(package-initialize)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )