initialization
initializeWidgets
	packagesListOut := self newList displayBlock: [:item | item ].
	packagesListIn  := self newList displayBlock: [:item | item ].
	
	classesListOut  := self newList displayBlock: [:item | item ].
	classesListIn   := self newList displayBlock: [:item | item ].
	
	imagesList := self newList displayBlock: [:item | item basename ].
	
	labelIn  := self newLabel.
	labelOut := self newLabel.
	buttonBootstrap := self newButton.
	buttonBootstrap label: 'Bootstrap'.
	
	buttonRemoveAll := self newButton.
	buttonRemoveAll label: 'remove all'.
	
	buttonAddAll := self newButton.
	buttonAddAll label: 'add all'.
	
	buttonShowSourceCode := self newButton.
	buttonShowSourceCode label: 'Show sources'.
	
	buttonInspectImage := self newButton.
	buttonInspectImage label: 'Inspect image'.
	
	buttonExecInGenImage := self newButton.
	buttonExecInGenImage label: 'Execute in bootstrapped img'
	