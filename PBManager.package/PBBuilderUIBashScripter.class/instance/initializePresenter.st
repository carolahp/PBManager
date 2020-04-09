initialization
initializePresenter
	
	buttonRun whenActionPerformedDo:  
	[ :event | 
		self command ifNil: [ self error: 'command is nil!' ].
		self pbBuilder 
			runBashScript: self command 
			arguments: self arguments 
			workingDirectory: self pbBuilder locationOfBootstrappedImages pathString 
			withTimeout: 5 seconds
			onExitDo: [ :process :c | process inspect ]
	]