(load-theme 'wombat);;manoj-dark)

;; add all subdirs from the host's =site-lisp= to ~load-path~
(let* ((my-lisp-dir "/usr/local/share/emacs/site-lisp/")
       (default-directory my-lisp-dir)
       (orig-load-path load-path))
  (setq load-path (cons my-lisp-dir nil))
  (normal-top-level-add-subdirs-to-load-path)
  (nconc load-path orig-load-path))

(require 'bookmark+)
(require 'magit)
(require 'nov)
(setq nov-text-width 80)

(require 'org)
(require 'org-agenda)
(require 'org-tempo)
(require 'org-capture)
(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
(require 'key-chord)
(key-chord-mode 1)

(require 'org-drill)

(require 'google-translate)
(require 'google-translate-smooth-ui)
(setq google-translate-translation-directions-alist '(("en" . "ru")))
(setq google-translate-default-source-language "en")
(setq google-translate-default-target-language "ru")

(require 'mw-thesaurus)


(require 'python)
(require 'pyvenv)
;; (pyvenv-activate "/home/alioth/.local/venv0.1/")
;; (add-to-list 'load-path "/usr/local/share/emacs/site-lisp/elpy/")
;; (load "elpy")
;; (load "elpy-rpc")
;; (load "elpy-shell")
;; (load "elpy-profile")
;; (load "elpy-refactor")
;; (elpy-enable)

;; (require 'ivy)
;; (ivy-mode 1)
;; (setq ivy-use-virtual-buffers t)
;; (setq ivy-count-format "(%d/%d) ")

(require 'helpful)
(require 'which-key)
(which-key-mode)

;;======================================================
;; Additional config section:
(load "~/.emacs.d/key-chords.el")
;;
;;======================================================
