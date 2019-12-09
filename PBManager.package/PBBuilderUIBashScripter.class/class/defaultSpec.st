specs
defaultSpec

	^ SpecLayout composed
		newColumn: [ :col |
			col add: #labelTitle height: self toolbarHeight;
				 add: #textBashInput;
				 add: #buttonRun  height: self toolbarHeight ];	
		yourself
	