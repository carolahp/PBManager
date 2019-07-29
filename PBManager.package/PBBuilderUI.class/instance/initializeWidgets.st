initialization
initializeWidgets
	packagesListOut := self newList displayBlock: [:item | item ].
	packagesListIn  := self newList displayBlock: [:item | item ].
	classesListOut := self newList displayBlock: [:item | item ].
	classesListIn  := self newList displayBlock: [:item | item ].
	
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
	buttonInspectImage label: 'Inspect generated Image'
	