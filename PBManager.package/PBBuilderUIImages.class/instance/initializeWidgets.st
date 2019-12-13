initialization
initializeWidgets
			
	imagesList := self newList displayBlock: [:item | item imageFileReference basename ].	
	
	buttonInspectImage := self newButton.
	buttonInspectImage label: 'Inspect'.
	buttonInspectImage icon: (Smalltalk iconNamed: #glamorousInspect)..
	
	buttonDeleteImage := self newButton.
	buttonDeleteImage icon: (Smalltalk iconNamed: #glamorousTrash).
	buttonDeleteImage label: 'Delete'.
	
	labelImageName := self newLabel.
	labelImageName label: 'Generated image name:'.
	
	buttonWriteGenImage := self newButton.
	buttonWriteGenImage icon: (Smalltalk iconNamed: #glamorousSave).
	buttonWriteGenImage label: 'Write to Disk'.
	buttonWriteGenImage disable.
	
	buttonOpenContainingFolder := self newButton.
	buttonOpenContainingFolder icon: (Smalltalk iconNamed: #glamorousOpen).
	
	textImageName := self newText.
	textImageName autoAccept: true.
	
	self registerSubscriptions