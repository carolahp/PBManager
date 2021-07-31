scripting
runBashScript
	|timeout|
	timeout := 5 seconds.
	scriptCommand ifNil: [ self error: 'command is nil!' ].
	self 
			runBashScript: scriptCommand
			arguments: scriptArguments
			workingDirectory: self ensureVMDirectory pathString 
			withTimeout: timeout
			onTimeoutDo: [ :cmd |  self inform: 'Process did not finish before ', timeout asString ]
			onExitDo: [ :cmd :stdOut :stdErr | | response | 
				response := stdOut contents.
				^ self responseAction: response.
				 ]