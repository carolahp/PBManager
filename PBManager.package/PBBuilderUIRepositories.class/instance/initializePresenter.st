initialization
initializePresenter 
	buttonAddRepo whenActionPerformedDo:  
	[ :event | 
		| repoFileRef |
		"open dialog to search for the repository"
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
		self pbBuilder pbRepository: self selectedRepository.
		loadedRepository := self selectedRepository.
		self refresh
	].

	buttonSaveRepo whenActionPerformedDo: 
	[ :event |
		self selectedRepository writeToDisk. 
		self selectedRepository markAsNotModified. 
		self inform: 'Exported to: ', self selectedRepository tonelPath pathString.
		self pbBuilder announceRepositoryLoaded
	 ].

	buttonRefresh whenActionPerformedDo: [ :event |
		self loadDefaultRepositories.
		self pbBuilder pbRepository: nil	
	].

	buttonOpenFolderContainingRepos whenActionPerformedDo: [ 
		:event |
		self pbBuilder runBashScript: 'open' arguments: { self pbBuilder locationOfRepositories pathString }.
	 ]