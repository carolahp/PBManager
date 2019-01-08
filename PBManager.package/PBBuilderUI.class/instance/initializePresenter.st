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
		self blockBootstrap value: pbmRepository packagesNamesInBootstrap
	 ].

	buttonEditSourceCode whenActionPerformedDo:  
	[ :event |
		self blockEditSourceCode value
	 ].
