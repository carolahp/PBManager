initialization
initializePresenter 
	
	buttonAddRepo whenActionPerformedDo:  
	[ :event | 
		| repoFileRef |
		repoFileRef := UIManager default 
			chooseExistingFileReference: 'Open repo' 
			extensions: #('lang') 
			path: Smalltalk imageFile nextVersion.
			
		"read language definition from the file .lang, instantiate a PBLanguageDefinition and add it to the list of repositories"
		repoFileRef isFile ifTrue: [ listRepo items: listRepo listItems , {STONJSON fromString: repoFileRef readStream upToEnd} ]

	]