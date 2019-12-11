initialization
initializeWidgets 
	buttonRun := self newButton.
	buttonRun icon: (Smalltalk iconNamed: #glamorousGo).
	
	labelTitle  := self newLabel.
	labelTitle label: 'Bash Script Runner'.
	
	textBashInput := self newTextInput.
	textBashInput autoAccept: true.
	textBashInput text: self defaultCommand