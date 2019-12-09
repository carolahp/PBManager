image-functions
runBashScript: aCommand arguments: aCollection withTimeout: aDuration
	^ OSSUnixSubprocess new
			command: aCommand;
			arguments: aCollection;
			workingDirectory: self defaultLocationOfRepositories absolutePath parent pathString;
			redirectStdout;
			runAndWaitWithTimeout: aDuration
				onTimeoutDo: [ 
					'Timeout!' inspect
					]
				onExitDo: [ :process :outString  |
					process inspect.
					outString inspect
			]