specs
defaultSpec
	^ SpecLayout composed
		newRow: [ : mrow |
			mrow newColumn: [ :col | 
				col 
					newRow: [:row | row add: #labelTitle ] height: self toolbarHeight;
					newRow: [:row | row add: #buttonInstallClasses; 
											  add: #checkboxInstallClasses ] height: self toolbarHeight;
					newRow: [:row | row add: #buttonInstallMethods;
											  add: #checkboxInstallMethods ] height: self toolbarHeight;
					newRow: [:row | row add: #buttonInstallProcess;
											  add: #checkboxInstallProcess ] height: self toolbarHeight;
					newRow: [:row | row add: #textInputImageName; add: #buttonGenerateImage ] height: self toolbarHeight;
					add: #textLog
				]
			] ;
		 
		yourself 