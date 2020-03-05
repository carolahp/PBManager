initialization
initializeWidgets 

	buttonAddRepo := self newButton.
	buttonAddRepo icon: (Smalltalk iconNamed: #add).
	
	buttonSaveRepo := self newButton.
	buttonSaveRepo icon: (Smalltalk iconNamed: #smallSave).

	buttonLoadRepo := self newButton.
	buttonLoadRepo icon: (Smalltalk iconNamed: #glamorousOpenFromUrl).
	
	buttonRefresh := self newButton.
	buttonRefresh icon: (Smalltalk ui icons iconNamed: #glamorousRefresh).
	
	buttonOpenFolderContainingRepos := self newButton.
	buttonOpenFolderContainingRepos icon: (Smalltalk iconNamed: #glamorousOpen).
	
	labelRepo  := self newLabel.
	labelRepo label: 'Language Definition Repositories'.

	listRepo := self newList.
	listRepo items: self defaultRepositories.
	
	listRepo displayBlock: [ :item | | prefix suffix |
		prefix := ''.
		suffix := ''. 
		(item unsavedChanges) 
			ifTrue: [ prefix := '* ' ].
		(item = self loadedRepository)
			ifTrue: [ suffix := '(loaded)' ].	 
		prefix, item languageName, suffix
			]