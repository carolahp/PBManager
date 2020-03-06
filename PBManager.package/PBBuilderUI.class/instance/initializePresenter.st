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
		self setEnabledStatusOfDebuggingButtons: true.
		self pbBuilder bootstrapLoadedRepository.
	 ].

	buttonShowSourceCode whenActionPerformedDo:  
	[ :event |
		
		self pbRepository classesNamesInBootstrap 
			ifEmpty: [ self inform: 'no classes selected' ]
			ifNotEmpty: [
				self pbRepository subscribeToAnnouncementsSendingMessage: #markRepositoryAsModified to: self.
				self pbRepository browseCode ]
	 ].

	buttonShowVisualization whenActionPerformedDo:  
	[ :event |
		
		self pbRepository classesNamesInBootstrap 
			ifEmpty: [ self inform: 'no classes selected' ]
			ifNotEmpty: [
				[(PBLanguageVisualization new 
					visualizeClassHyerarchyAndInstSpec: self pbRepository ringEnvironment) inspect] 
				on: Warning do: [:e | e resume ]]
	 ].
	
	buttonExecInGenImage whenActionPerformedDo:  
	[ :event |  
		(PBHybridDebugger 
				withCode: self textCodeInput text 
				interpreter: self debuggerInterpreter) openWithSpec ].
	
	buttonEvalInGenImage whenActionPerformedDo:  
	[ :event |
		(self interpreter evaluateCode: self textCodeInput text withTemps: #()) inspect
	 ].