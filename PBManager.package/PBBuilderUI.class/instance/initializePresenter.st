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
		(packagesListOut listItems) collect: [ :item | self togglePackage: item ].
	 ].

	buttonRemoveAll whenActionPerformedDo:  
	[ :event |
		(packagesListIn listItems) collect: [ :item | self togglePackage: item ].
	 ].

	buttonBootstrap whenActionPerformedDo:  
	[ :event |
		self blockBootstrap value.
		self updateImagesLists
	 ].

	buttonShowSourceCode whenActionPerformedDo:  
	[ :event |
		self blockShowSourceCode value
	 ].

	buttonInspectImage whenActionPerformedDo:  
	[ :event |
		self blockInspectImage value: self imagesList selectedItem asFileReference
	 ].
