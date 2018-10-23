specs
defaultSpec

	^ SpecLayout composed
		newRow: 
			[ :row | 
				row 
					newColumn: [ :c | c add: #packagesInList.	];
					newColumn: [ :d | d add: #packagesOutList. ].
			];
		yourself
	
	