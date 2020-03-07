initialization
initializeWidgets
	
	
	labelTitle := self newLabel.
	labelTitle label: 'Generated Images loaded in Memory'.
			
	listGeneratedImages := self newMultiColumnList.
	listGeneratedImages displayBlock: [ :img | self wrapImageInMemoryItem: img].
	listGeneratedImages sortingBlock: [ :a :b | a generationTime < b generationTime ].
	
	buttonEvaluateInImage := self newButton.
	buttonEvaluateInImage label: 'Evaluate in Image'.
	
	buttonDebugInImage := self newButton.
	buttonDebugInImage label: 'Debug in Generated Image'.
	
	textCodeInput := self newTextInput.
	textCodeInput autoAccept: true.
	textCodeInput text: self defaultCode.