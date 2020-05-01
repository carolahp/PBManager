initialization
initializePresenter
	
	buttonRun whenActionPerformedDo:  
	[ :event | |timeout|
		timeout := 5 seconds.
		self command ifNil: [ self error: 'command is nil!' ].
		self pbBuilder 
			runBashScript: self command 
			arguments: self arguments 
			workingDirectory: self pbBuilder locationOfBootstrappedImages pathString 
			withTimeout: timeout
			onTimeoutDo: [ :cmd |  self textBashOutput text: 'Process did not finish before ', timeout asString ]
			onExitDo: [ :cmd :stdOut :stdErr | self textBashOutput text: stdOut contents, Character cr asString, 'Process finished']
	]