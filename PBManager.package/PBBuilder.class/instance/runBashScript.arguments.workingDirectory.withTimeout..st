image-functions
runBashScript: aCommand arguments: aCollection workingDirectory: aPathString withTimeout: aDuration 
	
	^ (self bashScript: aCommand arguments: aCollection workingDirectory: aPathString)
			runAndWaitWithTimeout: aDuration
				onTimeoutDo: [ 
					'Timeout!' inspect
					]
				onExitDo: [ :process :outString  |
					process inspect
			] 