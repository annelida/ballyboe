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
(add-to-list 'load-path "/usr/local/share/emacs/site-lisp/elpy/")
(load "elpy")
(load "elpy-rpc")
(load "elpy-shell")
(load "elpy-profile")
(load "elpy-refactor")
(elpy-enable)

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

;; Org-capture templates in a separate file:
(load "/home/vikky/.emacs.d/org-capture-templates.el")
;;

(setq org-confirm-babel-evaluate nil)

;; Programming languages for Babel
(org-babel-do-load-languages
 'org-babel-load-languages '((python . t) (emacs-lisp . t) (shell . t) (sqlite . t)))

;; Jekyll settings
;;
(setq org-publish-project-alist
'(("jekyll-org"
   :base-directory "~/git/annelida/ballyboe/org-blog/"
   :base-extension "org"
   ;; Path to your Jekyll project.
   :publishing-directory "~/git/annelida/annelida.github.io/_posts/"
   :recursive t
   :publishing-function org-html-publish-to-html
   :headline-levels 4
   :html-extension "html"
   :section-numbers nil
   :with-toc nil
   :body-only t
   ;; Only export section between <body> </body> (body-only)
   )
  ("jekyll-org-img"
   :base-directory "~/git/annelida/ballyboe/org-blog/img/"
   :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf\\|php"
   :publishing-directory "~/git/annelida/annelida.github.io/assets/img/"
   :recursive t
   :publishing-function org-publish-attachment)

  ("jekyll" :components ("jekyll-org" "jekyll-org-img"))
  ))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(bmkp-last-as-first-bookmark-file "~/.emacs.d/bookmarks")
 '(indent-tabs-mode nil)
 '(org-agenda-files
   '("~/git/annelida/ballyboe/org-blog/2024-04-09-SSH-connection-to-remote-host-in-Linux.org" "/home/vikky/git/annelida/ballyboe/org-blog/2023-12-26-migration-plan.org" "/home/vikky/git/annelida/ballyboe/bookworm/agenda/main.list" "/home/vikky/git/annelida/ballyboe/bookworm/agenda/lead-tasks.list" "/home/vikky/git/annelida/ballyboe/bookworm/agenda/personal.list" "/home/vikky/git/annelida/ballyboe/bookworm/agenda/chores-tasks.list"))
 '(org-babel-python-command "python3"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
