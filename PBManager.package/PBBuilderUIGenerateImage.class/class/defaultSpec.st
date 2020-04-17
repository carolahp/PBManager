specs
defaultSpec
	^ SpecLayout composed
		newRow: [ : mrow |
			mrow newColumn: [ :col | 
				col 
					newRow: [:row | row add: #labelTitle ] height: self toolbarHeight;
					newRow: [:row | row add: #checkboxInstallClasses ] height: self toolbarHeight;
					newRow: [:row | row add: #checkboxInstallMethods ] height: self toolbarHeight;
					newRow: [:row | row add: #checkboxInstallProcess ] height: self toolbarHeight;
					newRow: [:row | row add: #checkboxGenericBootstrapper ] height: self toolbarHeight;
					newRow: [:row | row add: #textInputImageName; add: #buttonGenerateImage ] height: self toolbarHeight;
					add: #textLog
				]
			] ;
		 
		yourself 