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
		self pbBuilder pbRepository: self selectedRepository
	].

	buttonSaveRepo whenActionPerformedDo: 
	[ :event |
		self selectedRepository writeToDisk. 
		self inform: 'Exported to: ', self selectedRepository tonelPath pathString.
		self pbBuilder announce
	 ].
	buttonOpenFolderContainingRepos whenActionPerformedDo: [ 
		:event |
		self pbBuilder runBashScript: 'open' arguments: { self pbBuilder defaultLocationOfRepositories pathString }.
	 ]