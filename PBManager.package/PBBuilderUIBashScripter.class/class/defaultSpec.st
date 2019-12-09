specs
defaultSpec

	^ SpecLayout composed
		newColumn: [ :col |
			col add: #labelTitle height: self toolbarHeight;
				 newRow: [ :row |
					row 
						add: #textBashInput;
						add: #buttonRun width: self buttonWidth ] ];	
		yourself
	