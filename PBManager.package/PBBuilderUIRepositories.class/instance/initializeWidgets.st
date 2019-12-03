initialization
initializeWidgets 

	buttonAddRepo := self newButton.
	buttonAddRepo icon: (Smalltalk iconNamed: #add).
	
	buttonSaveRepo := self newButton.
	buttonSaveRepo icon: (Smalltalk iconNamed: #smallSave).

	buttonLoadRepo := self newButton.
	buttonLoadRepo icon: (Smalltalk iconNamed: #glamorousOpenFromUrl).
	
	labelRepo  := self newLabel.
	labelRepo label: 'Language Definition Repositories'.

	listRepo := self newList.
	listRepo items: self defaultRepositories.
	
	listRepo displayBlock: [ :item | (item unsavedChanges) 
			ifTrue: [ '* ', item languageName ] 
			ifFalse: [ item languageName ] ]