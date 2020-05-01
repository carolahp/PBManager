script-execution
runBashScript: aCommand arguments: aCollection workingDirectory: aPathString withTimeout: aDuration onTimeoutDo: aTimeOutBlock onExitDo: aBlock
	
	^ (self bashScript: aCommand arguments: aCollection workingDirectory: aPathString)
			runAndWaitWithTimeout: aDuration
				onTimeoutDo: aTimeOutBlock
				onExitDo: aBlock