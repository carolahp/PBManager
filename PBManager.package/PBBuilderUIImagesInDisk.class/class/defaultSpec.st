specs
defaultSpec

	^ SpecLayout composed 
		newColumn: [ :c | 
			c 
				newRow: [ :row1 |
					row1
						newColumn: [ : col | col add: #labelTitle ];
						newColumn: [ : col | col add: #buttonOpenContainingFolder ] width: self buttonWidth 
				] height: self toolbarHeight * 1.3;
				newRow: [ :row1 | row1 newColumn: [ :c1 | c1 add: #imagesList ] ];
				newRow: [ :row2 | row2 add: #buttonInspectImage;
											  add: #buttonDeleteImage ] height: self toolbarHeight
		]