initialization
initializePresenter 
	buttonAddRepo whenActionPerformedDo:  
	[ :event | 
		| repoFileRef |
		repoFileRef := UIManager default 
			chooseExistingFileReference: 'Open repo' 
			extensions: #('lang') 
			path: Smalltalk imageFile nextVersion.
		
		(repoFileRef isNotNil and: [repoFileRef isFile]) ifTrue: [ 
			"add the new language definition to the list of repositories"
			listRepo items: listRepo listItems , 
								{ PBRepository fromLangFile: repoFileRef } ]
	].

	buttonLoadRepo whenActionPerformedDo:  
	[ :event | 
		"hack to select the selected item"
		self pbBuilderUI pbRepository: (self listRepo listItems at: self listRepo selectedIndex).
		self update
	].