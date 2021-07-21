script-execution
runBashScript: aCommand arguments: aCollection workingDirectory: aPathString withTimeout: aDuration 
	
	^ self runBashScript: aCommand arguments: aCollection workingDirectory: aPathString withTimeout: aDuration onTimeoutDo: [ :cmd | self error: 'error: timeout on bash script execution' ] onExitDo: [  ]
	