(setq org-capture-templates
      '(
	("n" "Notes");; <-- prefix key for notes
	;; For the crude notes only:
	("nf" "Fleeting" entry (file+headline
			"~/git/annelida/ballyboe/bookworm/agenda/main.list" "Notes")
	 "* RAW %?%i"
	 :immediate-finish 1
	 :empty-lines-after 1)
	;;
        ))


