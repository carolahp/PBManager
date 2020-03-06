specs
defaultSpec

	^ SpecLayout composed 
		newColumn: [ :c | 
			c 
				add: #labelTitle height: self toolbarHeight;
				newRow: [ :row |
					row
						newColumn: [ :col | col add: #listGeneratedImages ];
						newColumn: [ :col | 
							col 
								newRow: [ :row1 |
									row1 add: #textCodeInput
								] height: self toolbarHeight * 4;
								newRow: [ :row1 |
									row1 add: #buttonDebugInImage;
						  				  add: #buttonEvaluateInImage
				] height: self toolbarHeight ]
				] 
		]