initialization
initializePresenter
	
	buttonRun whenActionPerformedDo:  
	[ :event | 
		self command ifNil: [ self error: 'command is nil!' ].
		self pbBuilder runBashScript: self command arguments: self arguments withTimeout: 5 seconds
	]