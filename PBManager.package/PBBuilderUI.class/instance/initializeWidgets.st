initialization
initializeWidgets
	packagesListOut := self newList displayBlock: [:item | item ].
	packagesListIn  := self newList displayBlock: [:item | item ].
	labelIn  := self newLabel.
	labelOut := self newLabel.
	buttonBootstrap := self newButton.
	buttonBootstrap label: 'Bootstrap'.
	
	buttonRemoveAll := self newButton.
	buttonRemoveAll label: 'remove all'.
	
	buttonAddAll := self newButton.
	buttonAddAll label: 'add all'.
	
	buttonEditSourceCode := self newButton.
	buttonEditSourceCode label: 'Edit sources'
	