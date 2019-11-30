initialization
initializePresenter 
	
	buttonAddRepo whenActionPerformedDo:  
	[ :event | 
		| repoFileRef |
		repoFileRef := UIManager default 
			chooseExistingFileReference: 'Open repo' 
			extensions: #('lang') 
			path: Smalltalk imageFile nextVersion.
			
		
		(repoFileRef isNotNil and: [repoFileRef isFile]) ifTrue: [ | aPBBuilder |
			"read language definition from the file .lang, instantiate a PBLanguageDefinition"
			aPBBuilder := STONJSON fromString: repoFileRef readStream upToEnd.
			"tonelPath in the file must be relative to the location of the file"
			aPBBuilder tonelPath: (repoFileRef containingDirectory asPath / aPBBuilder tonelPath) asPath.
			"add the new language definition to the list of repositories"
			listRepo items: listRepo listItems , { aPBBuilder } ]
	].

	buttonLoadRepo whenActionPerformedDo:  
	[ :event | 
		"hack to select the selected item"
		pbBuilder pbRepository: (self listRepo listItems at: self listRepo selectedIndex).
		self update
	]