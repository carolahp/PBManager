specs
defaultSpec

	^ SpecLayout composed 
		newColumn: [ :c | 
			c 
				add: #labelImageName height: self toolbarHeight;
				newRow: [ :row1 |
					row1
						add: #textImageName; 
						add: #buttonWriteGenImage
				] height: self toolbarHeight * 1.3;
				newRow: [ :row1 |
								row1 
									newColumn: [ :c1 | c1 add: #imagesList ]
				];
				newRow: [ :row2 | 
								row2 
									newColumn: [ :c1 | c1	 add: #buttonInspectImage ] 
				] height: self toolbarHeight
		]