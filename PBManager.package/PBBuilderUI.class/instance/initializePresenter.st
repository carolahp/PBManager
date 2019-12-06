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
		[ pbRepository pbBootstrapper bootstrap ] on: Warning do: [:e | e resume ].
		self blockBootstrap value.
		self buttonExecInGenImage enable.
		self buttonWriteGenImage enable.
		self buttonEvalInGenImage enable
	 ].

	buttonShowSourceCode whenActionPerformedDo:  
	[ :event |
		
		pbRepository classesNamesInBootstrap 
			ifEmpty: [ self inform: 'no classes selected' ]
			ifNotEmpty: [
				pbRepository ringEnvironment announcer 
					when: ClyRing2EnvironmentChanged 
					send: #markRepositoryAsModified 
					to: self. 
				pbRepository ringEnvironment browse. ]
	 ].

	buttonInspectImage whenActionPerformedDo:  
	[ :event |
		self blockInspectImage value: self imagesList selectedItem asFileReference
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
		self blockWriteGenImage value.
		self buttonExecInGenImage disable.
		self buttonEvalInGenImage disable.
		self updateImagesLists.
	 ].

	