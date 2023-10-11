(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(wombat))
 '(package-selected-packages
   '(org ordinal magit speed-type dictionary mw-thesaurus voca-builder go-translate key-chord ereader google-translate)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)


(require 'package)
;; New 2022 Year and dances with drums around org replacement
;;(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
(add-to-list 'package-archives '("elpa" . "https://elpa.gnu.org/packages/") t)
;; and MELPA
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

(package-initialize)

(require 'key-chord)
(key-chord-mode 1)
(key-chord-define-global "bn"     'list-buffers)
(key-chord-define-global "bv"     'switch-to-buffer)
(key-chord-define-global "oj"     'other-window)
(key-chord-define-global "'#"     'other-frame)
(key-chord-define-global "fq"     'previous-buffer)
(key-chord-define-global "jp"     'next-buffer)
(key-chord-define-global "q1"     'delete-other-windows)
(key-chord-define-global "w2"     'split-window-below)
(key-chord-define-global "e3"     'split-window-right)
(key-chord-define-global "sq"     'save-some-buffers)
(key-chord-define-global "fg"     'find-file)
(key-chord-define-global "jl"     'move-end-of-line)
(key-chord-define-global "fs"     'move-beginning-of-line)
(key-chord-define-global "0o"     'delete-window)
(key-chord-define-global "bk"     'kill-buffer)
(key-chord-define-global "qe"     'eval-region)

(require 'magit)
(key-chord-define-global "gs"     'magit-status)

(require 'google-translate)
(setq google-translate-translation-directions-alist '(("en" . "ru")))
(setq google-translate-default-source-language "en")
(setq google-translate-default-target-language "ru")

(require 'voca-builder)
(setq voca-builder/voca-file "~/vocabulary/202304.org")
(setq voca-builder/export-file "~/.voca-builder-temp.org")
(setq voca-builder/current-tag "misc")
(setq voca-builder/current-tag "DarkPersuasion")
(setq voca-builder/current-tag "Elephant")
(setq voca-builder/current-tag "Zen")
(setq voca-builder/current-tag "Money")
(setq voca-builder/current-tag "Stupidity")
(setq voca-builder/current-tag "Dahl")

(key-chord-define-global "tr"     'google-translate-at-point)
(key-chord-define-global "ty"     'voca-builder/search-popup)


(require 'ereader)

(require 'dictionary)
(key-chord-define-global "wt"     'dictionary-lookup-definition)
(require 'mw-thesaurus)
(key-chord-define-global "wd"     'mw-thesaurus-lookup-dwim)

(require 'org)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(key-chord-define-global "ga"     'org-agenda)
(key-chord-define org-mode-map "km"     'org-meta-return)
(key-chord-define org-mode-map "a["     'org-agenda-file-to-front)
(key-chord-define org-mode-map "a]"     'org-remove-file)
(key-chord-define org-mode-map "od"     'org-deadline)
(key-chord-define org-mode-map "so"     'org-schedule)
(key-chord-define-global "sz"     'org-store-link)
(key-chord-define-global "sx"     'org-insert-link)

(setq org-log-done t)

(setq org-agenda-files (list
			"~/git/ballyboe/bookworm/agenda/personal.list"
			"~/git/ballyboe/bookworm/agenda/main.list"
			"~/git/ballyboe/bookworm/agenda/lead-tasks.list"))
(setq org-agenda-include-diary t)


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
