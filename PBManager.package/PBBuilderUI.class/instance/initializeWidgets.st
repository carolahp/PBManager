initialization
initializeWidgets
	packagesListOut := self newList displayBlock: [:item | item ].
	packagesListIn  := self newList displayBlock: [:item | item ].
	
	classesListOut  := self newList displayBlock: [:item | item ].
	classesListIn   := self newList displayBlock: [:item | item ].
	
	imagesList := self newList displayBlock: [:item | item basename ].
	
	labelIn  := self newLabel.
	labelOut := self newLabel.
	labelClassesIn  := self newLabel.
	labelClassesOut := self newLabel.
	
	buttonBootstrap := self newButton.
	buttonBootstrap label: 'Generate img'.
	
	buttonRemoveAll := self newButton.
	buttonRemoveAll label: 'remove all'.
	
	buttonAddAll := self newButton.
	buttonAddAll label: 'add all'.
	
	buttonShowSourceCode := self newButton.
	buttonShowSourceCode label: 'Show sources'.
	
	buttonInspectImage := self newButton.
	buttonInspectImage label: 'Inspect image'.
	
	buttonExecInGenImage := self newButton.
	buttonExecInGenImage label: 'Debug in Generated Image'.
	buttonExecInGenImage disable.
	
	buttonEvalInGenImage := self newButton.
	buttonEvalInGenImage label: 'Evaluate in Generated Image'.
	buttonEvalInGenImage disable.
	
	buttonWriteGenImage := self newButton.
	buttonWriteGenImage label: 'Write Image'.
	buttonWriteGenImage disable.
	
	textCodeInput := self newTextInput.
	textCodeInput autoAccept: true.
	
	pbBuilderRepositoriesUI := PBBuilderUIRepositories withPBBuilderUI: self.