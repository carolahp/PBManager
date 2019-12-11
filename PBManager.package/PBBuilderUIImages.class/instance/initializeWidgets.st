initialization
initializeWidgets
			
	imagesList := self newList displayBlock: [:item | item basename ].	
	
	buttonInspectImage := self newButton.
	buttonInspectImage label: 'Inspect image'.
	
	labelImageName := self newLabel.
	labelImageName label: 'Generated image name:'.
	
	buttonWriteGenImage := self newButton.
	buttonWriteGenImage label: 'Write to Disk'.
	buttonWriteGenImage disable.
	
	textImageName := self newText.
	textImageName autoAccept: true.
	
	self registerSubscriptions