specs
defaultSpec

	^ SpecLayout composed 
		newColumn: [ :col | 
			col 
				newRow: [ :row | row add: #labelTitle  ] height: self toolbarHeight;
				newRow: [ :row | 
					row 
						add: #labelPackagesNum;
						add: #labelClassesNum ] height: self toolbarHeight;
				newRow: [ :row | row add: #listPackages; add: #listClasses ];
				newRow: [ :row | 
					row 
						add: #buttonEditCode;
						add: #buttonVisualize  ] height: self toolbarHeight				
		]
	