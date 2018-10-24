initialization
initializeWidgets
	packagesListOut := self newList displayBlock: [:item | item at:1].
	packagesListIn  := self newList displayBlock: [:item | item at:1].
	labelIn  := self newLabel.
	labelOut := self newLabel.