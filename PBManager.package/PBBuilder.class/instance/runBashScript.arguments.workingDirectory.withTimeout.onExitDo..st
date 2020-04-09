script-execution
runBashScript: aCommand arguments: aCollection workingDirectory: aPathString withTimeout: aDuration onExitDo: aBlock
	
	^ (self bashScript: aCommand arguments: aCollection workingDirectory: aPathString)
			runAndWaitWithTimeout: aDuration
				onTimeoutDo: [ 
					'Timeout!' inspect
					]
				onExitDo: aBlock