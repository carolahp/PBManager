initialization
initializeWidgets 
	buttonNewRepo := self newButton.
	buttonNewRepo icon: (Smalltalk iconNamed: #smallNew).
	
	labelNewRepo := self newLabel.
	labelNewRepo label: 'New Repository'.
	
	labelNewRepoName := self newLabel.
	labelNewRepoName label: 'name: '.
	
	textNewRepoName := self newTextInput.
	textNewRepoName autoAccept: true.
	textNewRepoName text: 'ObjVLisp'.
	
	labelNewRepoMetaclass := self newLabel.
	labelNewRepoMetaclass label: 'metaclass: '.
	
	textNewRepoMetaclass := self newTextInput.
	textNewRepoMetaclass autoAccept: true.
	textNewRepoMetaclass text: 'OLObjVLisp'.
	
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
	labelRepo label: 'Existent Repositories'.

	listRepo := self newList.
	listRepo displayBlock: [ :item | | prefix suffix |
		prefix := ''.
		suffix := ''. 
		(item unsavedChanges) 
			ifTrue: [ prefix := '* ' ].
		(item = self loadedRepository)
			ifTrue: [ suffix := '(loaded)' ].	 
		prefix, item languageName, suffix
			].
	self loadDefaultRepositories