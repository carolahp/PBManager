specs
defaultSpec

	^ SpecLayout composed 
		newColumn: [ :c | 
			c 
				add: #labelTitle height: self toolbarHeight;
				newRow: [ :row |
					row
						newColumn: [ :col | 
							col 
								newRow: [:row1 | 
									row1 
										add: #buttonViewCode width: self buttonWidth;
										add: #textInputImageName;
										add: #buttonWriteGenImage width: self buttonWidth * 1.5  ] height: self toolbarHeight;
								add: #listGeneratedImages ];
								
						newColumn: [ :col | 
							col 
								newRow: [ :row1 |
									row1
										add: #buttonDebugInImage;
						  				add: #buttonEvaluateInImage								  
								] height: self toolbarHeight;
								add: #textCodeInput ;
								newRow: [ :row1 |
									row1 
										add: #labelCodeVariables;
										add: #buttonInspectCodeVariable width: self buttonWidth ] height: self toolbarHeight;
								add: #listCodeVariables								
								"newRow: [ :row1 |
									row1 
										add: #textCodeInput ;
										add: #listCodeVariables ]"
							];"
						newColumn: [ :col | 
							col 
								add: #buttonExternalEvaluate height: self toolbarHeight;
								add: #textExternalCodeInput;
								add: #textExternalResponse
							]"
						newColumn: [ :col | 
							col 
								newRow: [:row1 | 
									row1 
										add: #labelAccessedObjects;
										add: #buttonGenerateImageMinimal ]height: self toolbarHeight;
								add: #listAccessedObjects
							]
				] 
		]; yourself