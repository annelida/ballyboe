(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

(require 'package)
(add-to-list 'package-archives '("elpa" . "https://elpa.gnu.org/packages/") t)
;; and MELPA
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

(package-initialize)


(require 'org)
(require 'org-agenda)
(require 'org-tempo)
(require 'key-chord)
(key-chord-mode 1)
(add-to-list 'load-path "~/git/bookmark-plus/")
(require 'bookmark+)
(require 'magit)
(require 'google-translate)
(setq google-translate-translation-directions-alist '(("en" . "ru")))
(setq google-translate-default-source-language "en")
(setq google-translate-default-target-language "ru")
(require 'voca-builder)
(setq voca-builder/voca-file "~/vocabulary/202304.org")
(setq voca-builder/export-file "~/.voca-builder-temp.org")
(setq voca-builder/current-tag "misc")
(setq voca-builder/current-tag "Money")
(setq voca-builder/current-tag "Stupidity")
(setq voca-builder/current-tag "Dahl")
(require 'ereader)
(require 'dictionary)
(require 'mw-thesaurus)
(require 'elpy)
(elpy-enable)

(setq org-confirm-babel-evaluate nil)

;; Programming languages for Babel
(org-babel-do-load-languages
'org-babel-load-languages '((python . t) (emacs-lisp . t) (shell . t) (sqlite . t)))

(setq org-agenda-include-diary t)

(setq org-default-notes-file (concat org-directory "/notes.org"))
(global-set-key (kbd "C-c c") #'org-capture)
(setq org-capture-templates
      '(
	("w" "Quote" entry (file+headline
			    "~/git/ballyboe/bookworm/drills.org"
			    "Quotes")
	 "* COMMENT >->-> %c :drill:
   :PROPERTIES:
   :DRILL_CARD_TYPE: hide1cloze
   :END:\n%i\n")
	;;
	("d" "Definitions" entry (file+headline
			    "~/git/ballyboe/bookworm/drills.org"
			    "Definitions")
	 "* %c :drill:
   :PROPERTIES:
   :DRILL_CARD_TYPE: hide1cloze
   :END:\n%i\n")
))

;; Additional config section:
(load "~/key-chords.el")

;; Jekyll settings there -->
;;
(setq org-publish-project-alist
'(("jekyll-org"
   :base-directory "~/git/ballyboe/org-blog/"
   :base-extension "org"
   ;; Path to your Jekyll project.
   :publishing-directory "/home/vikky/git/annelida.github.io/_posts/"
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
   :base-directory "~/git/ballyboe/org-blog/img/"
   :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf\\|php"
   :publishing-directory "/home/vikky/git/annelida.github.io/assets/img/"
   :recursive t
   :publishing-function org-publish-attachment)

  ("jekyll" :components ("jekyll-org" "jekyll-org-img"))
  ))
;;
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(bmkp-last-as-first-bookmark-file "~/.emacs.d/bookmarks")
 '(org-agenda-files
   '("/home/vikky/git/ballyboe/org-blog/2024-10-01-Emacs-package-management.org" "/home/vikky/git/ballyboe/org-blog/2023-11-09-mark-up-with-jekyll.org" "/home/vikky/git/ballyboe/org-blog/2023-12-07-deliberate-practice.org" "/home/vikky/git/ballyboe/bookworm/agenda/lead-tasks.list" "/home/vikky/git/ballyboe/org-blog/2023-11-10-studying-methodology.org" "/home/vikky/git/ballyboe/bookworm/agenda/selenium.list" "/home/vikky/git/ballyboe/bookworm/agenda/main.list" "/home/vikky/git/ballyboe/bookworm/agenda/chores-tasks.list" "/home/vikky/git/ballyboe/bookworm/agenda/personal.list"))
 '(package-selected-packages
   '(helpful find-file-in-project elpy org-drill pyvenv-auto exec-path-from-shell pyvenv pdf-tools org ordinal magit speed-type dictionary mw-thesaurus voca-builder go-translate key-chord ereader google-translate)))
'(browse-url-browser-function 'eww-browse-url)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
