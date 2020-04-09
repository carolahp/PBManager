script-execution
runBashScript: aCommand arguments: aCollection withTimeout: aDuration 
	
	^ (self bashScript: aCommand arguments: aCollection)
			runAndWaitWithTimeout: aDuration
				onTimeoutDo: [ 
					'Timeout!' inspect
					]
				onExitDo: [ :process :outString  |
					process inspect
			] 