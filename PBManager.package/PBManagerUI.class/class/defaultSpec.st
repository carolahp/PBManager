specs
defaultSpec

	^ SpecLayout composed
		newRow: 
			[ :row | 
				row 
					newColumn: [ :c | c add: #labelIn  height: self toolbarHeight . 
											c add: #packagesInList.	];
					newColumn: [ :c | c add: #labelOut height: self toolbarHeight . 
										   c add: #packagesOutList. ].
			];
		yourself
	
	