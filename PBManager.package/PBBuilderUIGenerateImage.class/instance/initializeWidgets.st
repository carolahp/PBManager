initialization
initializeWidgets
	
	
	buttonGenerateImage := self newButton.
	buttonGenerateImage label: 'Generate img'.
	
	textInputImageName := self newTextInput.
	textInputImageName autoAccept: true.
	
	labelTitle := self newLabel.
	labelTitle label: 'Generate Image in Memory installing:'.
	
	checkboxInstallClasses := self newCheckBox.
	checkboxInstallClasses label: 'classes'.
	
	checkboxInstallMethods := self newCheckBox.
	checkboxInstallMethods label: 'methods'.
	
	checkboxInstallProcess := self newCheckBox. 
	checkboxInstallProcess label: 'app entry point'.
	
	self setDefaultCheckboxState 