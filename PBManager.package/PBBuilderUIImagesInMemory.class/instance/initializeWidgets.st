initialization
initializeWidgets
	
	
	labelTitle := self newLabel.
	labelTitle label: 'Generated Images loaded in Memory'.
			
	listGeneratedImages := self newMultiColumnList.
	listGeneratedImages displayBlock: [ :img | self wrapImageInMemoryItem: img].
	listGeneratedImages sortingBlock: [ :a :b | a generationTime > b generationTime ].
	
	buttonEvaluateInImage := self newButton.
	buttonEvaluateInImage icon: (Smalltalk iconNamed: #smallDoIt).
	buttonEvaluateInImage label: 'Evaluate'.
	
	buttonDebugInImage := self newButton.
	buttonDebugInImage icon: (Smalltalk iconNamed: #glamorousBug).
	buttonDebugInImage label: 'Debug'.
	
	buttonViewCode := self newButton.
	buttonViewCode label: 'View code'.
	
	
	buttonWriteGenImage := self newButton.
	buttonWriteGenImage icon: (Smalltalk iconNamed: #glamorousSave).
	buttonWriteGenImage label: 'Write to Disk'.
	
	textCodeInput := self newTextInput.
	textCodeInput autoAccept: true.
	textCodeInput text: self defaultCode.
	
	textInputImageName := self newTextInput.
	textInputImageName autoAccept: true.
	
	textExternalCodeInput := self newTextInput.
	textExternalCodeInput autoAccept: true.
	textExternalCodeInput text: self defaultExternalCode.
	
	textExternalResponse := self newText.
	
	buttonExternalEvaluate := self newButton.
	buttonExternalEvaluate label: 'External evaluate'.
	
	self setEnabledStatusOfButtons: false.
	