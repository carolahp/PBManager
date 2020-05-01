specs
defaultSpec

	^ SpecLayout composed
		newColumn: [ :col |
			col 
				newRow: [ :row |
					row 
						add: #labelTitle;
						add: #buttonRun ] height: self toolbarHeight;
				add: #textBashInput;
				add: #textBashOutput]; 	
		yourself
	