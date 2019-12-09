initialization
initializePresenter
	
	buttonRun whenActionPerformedDo:  
	[ :event | 
		self pbBuilder runBashScript: self command arguments: self arguments withTimeout: 5 seconds
	]