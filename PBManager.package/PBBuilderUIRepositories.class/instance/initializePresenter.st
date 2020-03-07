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
		self pbBuilder pbRepository: self selectedRepository.
		loadedRepository := self selectedRepository.
		self refresh
	].

	buttonSaveRepo whenActionPerformedDo: 
	[ :event |
		self selectedRepository writeToDisk. 
		self inform: 'Exported to: ', self selectedRepository tonelPath pathString.
		self pbBuilder announceRepositoryLoaded
	 ].
	buttonRefresh whenActionPerformedDo: [ :event | | newListItems |
		newListItems := self listRepo listItems collect: [ :item | PBRepository fromLangFile: item languageFile].
		self listRepo items: newListItems.
		
	].
	buttonOpenFolderContainingRepos whenActionPerformedDo: [ 
		:event |
		self pbBuilder runBashScript: 'open' arguments: { self pbBuilder locationOfRepositories pathString }.
	 ]