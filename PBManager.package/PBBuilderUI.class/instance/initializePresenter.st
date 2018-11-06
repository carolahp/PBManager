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