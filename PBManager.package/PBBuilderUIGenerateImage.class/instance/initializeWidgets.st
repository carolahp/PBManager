initialization
initializeWidgets
	
	
	buttonGenerateImage := self newButton.
	buttonGenerateImage label: 'Generate img'.
	buttonGenerateImage icon: (Smalltalk ui iconNamed: #smallExport).
	
	textInputImageName := self newTextInput.
	textInputImageName autoAccept: true.
	
	textLog := self newTextInput.
	textLog autoAccept: true.
	
	labelTitle := self newLabel.
	labelTitle label: 'Generate Image in Memory installing:'.
	
	checkboxInstallClasses := self newCheckBox.
	checkboxInstallClasses label: 'classes'.
	
	checkboxInstallMethods := self newCheckBox.
	checkboxInstallMethods label: 'methods'.
	
	checkboxInstallProcess := self newCheckBox. 
	checkboxInstallProcess label: 'app entry point'.
	
	checkboxGenericBootstrapper := self newCheckBox. 
	checkboxGenericBootstrapper label: 'Generic bootstrapper'.
	
	self setDefaultCheckboxState.
	self update