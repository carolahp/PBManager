initialization
initializePresenter
	packagesListOut doubleClickAction: 
	[:event | 
		| item |
		item := (packagesListOut listItems at: (event selectedRowIndex)) .
		self togglePackage: item.
		].

	packagesListIn doubleClickAction: 
	[:event | 
		| item | 
		item := (packagesListIn listItems at: (event selectedRowIndex)) .
		self togglePackage: item.
		]. 
	
	classesListIn doubleClickAction: 
	[:event | 
		| item | 
		item := (classesListIn listItems at: (event selectedRowIndex)) .
		self toggleClass: item.
		]. 
	
	classesListOut doubleClickAction: 
	[:event | 
		| item | 
		item := (classesListOut listItems at: (event selectedRowIndex)) .
		self toggleClass: item.
		]. 
	
	buttonAddAll whenActionPerformedDo:  
	[ :event |
		packagesListOut listItems collect: [ :item | self togglePackage: item ].
	 ].

	buttonRemoveAll whenActionPerformedDo:  
	[ :event |
		packagesListIn listItems collect: [ :item | self togglePackage: item ].
	 ].

	buttonBootstrap whenActionPerformedDo:  
	[ :event |
		self buttonExecInGenImage disable.
		self buttonWriteGenImage disable.
		self buttonEvalInGenImage disable.
		self pbBuilder bootstrapLoadedRepository.
		self buttonExecInGenImage enable.
		self buttonWriteGenImage enable.
		self buttonEvalInGenImage enable
	 ].

	buttonShowSourceCode whenActionPerformedDo:  
	[ :event |
		
		self pbRepository classesNamesInBootstrap 
			ifEmpty: [ self inform: 'no classes selected' ]
			ifNotEmpty: [
				self pbRepository ringEnvironment announcer 
					when: ClyRing2EnvironmentChanged 
					send: #markRepositoryAsModified 
					to: self. 
				self pbRepository ringEnvironment browse. ]
	 ].
	
	
	imagesList whenSelectionChanged: [
		self pbBuilder selectedImage: (imagesList listElementAt: imagesList selectedIndex).].

	buttonInspectImage whenActionPerformedDo:  
	[ :event |
		self pbBuilder inspectSelectedImage
	 ].
	
	buttonExecInGenImage whenActionPerformedDo:  
	[ :event |
		self blockExecInGenImage value: self textCodeInput text
	 ].
	
	buttonEvalInGenImage whenActionPerformedDo:  
	[ :event |
		self blockEvalInGenImage value: self textCodeInput text
	 ].
 
	buttonWriteGenImage whenActionPerformedDo:  
	[ :event |
		self pbRepository pbBootstrapper builder writeImage.
		self buttonExecInGenImage disable.
		self buttonEvalInGenImage disable.
		self updateImagesLists.
	 ]