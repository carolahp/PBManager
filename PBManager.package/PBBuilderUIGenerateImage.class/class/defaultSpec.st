specs
defaultSpec
	^ SpecLayout composed
		newRow: [ : mrow |
			mrow newColumn: [ :col | 
				col 
					newRow: [:row | row add: #labelTitle ];
					newRow: [:row | row add: #checkboxInstallClasses ];
					newRow: [:row | row add: #checkboxInstallMethods ];
					newRow: [:row | row add: #checkboxInstallProcess ];
					newRow: [:row | row add: #textInputImageName; add: #buttonGenerateImage ] 
				]
			] height: self toolbarHeight * 5; 
				yourself 