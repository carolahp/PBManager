specs
defaultSpec

	^ SpecLayout composed 
		newColumn: [ :c | 
			c 
				newRow: [ :row1 |
					row1
						add: #labelTitle; 
						add: #buttonInspectImage;
						add: #buttonDeleteImage;
						add: #buttonRefresh;
						add: #buttonOpenContainingFolder  
				] height: self toolbarHeight;
				newRow: [ :row1 | row1 newColumn: [ :c1 | c1 add: #imagesList ] ]
		]