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
								];
								newRow: [ :row1 |
									row1 add: #buttonDebugInImage;
						  				  add: #buttonEvaluateInImage										  
								] height: self toolbarHeight;
								newRow: [ :row1 |
									row1 
										add: #textInputImageName;
										add: #buttonWriteGenImage width: self buttonWidth*2  
								] height: self toolbarHeight 
							]
				] 
		]