(setq org-capture-templates
      '(
        ("d" "Drills" entry (file+headline
			    "~/git/annelida/ballyboe/bookworm/drills.org"
			    "Definitions")
	 "* %c :drill:
   :PROPERTIES:
   :DRILL_CARD_TYPE: hide1cloze
   :END:\n%i\n")
        ;;
	("n" "Notes");; <-- prefix key for notes
	;; For the crude notes only:
	("nf" "Fleeting" entry (file+headline
			"~/git/annelida/ballyboe/bookworm/agenda/main.list" "Notes")
	 "* RAW [#C] %i\nSCHEDULED: %t\n"
	 :immediate-finish 1
	 :empty-lines-after 1)
	;;
        ("g" "Gathering");;<--prefix key for gathering text
        ("gs" "SSH" item (file+headline
			       "~/git/annelida/ballyboe/org-blog/2024-04-09-SSH-connection-to-remote-host-in-Linux.org" "Notes")
         " %?%i "
	 :immediate-finish 1
         :empty-lines-after 1)
        ;;
        ("gp" "PM" item (file+headline
			       "~/git/annelida/ballyboe/org-blog/2024-04-12-process-management-on-linux.org" "Notes")
         " %?%i "
	 :immediate-finish 1
         :empty-lines-after 1)
        ;;
        ("gf" "FS" item (file+headline
			       "~/git/annelida/ballyboe/org-blog/2024-04-12-linux-file-system-structure.org" "Notes")
         " %?%i "
	 :immediate-finish 1
         :empty-lines-after 1)
        ;;
        ))


