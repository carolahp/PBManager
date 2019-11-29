initialization
initializePresenter 
	
	buttonAddRepo whenActionPerformedDo:  
	[ :event | 
		| repoFileRef |
		repoFileRef := UIManager default 
			chooseExistingFileReference: 'Open repo' 
			extensions: #('lang') 
			path: Smalltalk imageFile nextVersion.
			
		
		repoFileRef isFile ifTrue: [ | aPBBuilder |
			"read language definition from the file .lang, instantiate a PBLanguageDefinition"
			aPBBuilder := STONJSON fromString: repoFileRef readStream upToEnd.
			"add the new language definition to the list of repositories"
			listRepo items: listRepo listItems , { aPBBuilder } ]
	].

	buttonLoadRepo whenActionPerformedDo:  
	[ :event | 
		pbBuilder pbmRepository: self listRepo selectedItem
	]