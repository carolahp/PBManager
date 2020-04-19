specs
defaultSpec

	^ SpecLayout composed
		newColumn: [ :col |
			col 
				newRow: [ :row |
					row 
						add: #pbBuilderRepositoriesUI width: 150;
						add: #pbBuilderUILanguageDefinition width: 550; 
						add: #pbBuilderUIGenerateImage
					] height: 250;
				newRow: [ :row1 | 
					row1 
						add: #pbBuilderUIImagesInMemory 
				] height: 300;
				newRow: [ :row1 |
					row1 
						
						add: #pbBuilderUIImagesInDisk;
						add: #pbBuilderUIBashScripter
				] height: 100
			];
		yourself
	