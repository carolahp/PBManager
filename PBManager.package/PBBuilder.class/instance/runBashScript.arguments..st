image-functions
runBashScript: aCommand arguments: aCollection
	| pathToImage |
	pathToImage := 'bootstrapped/', self selectedImage basename.
	^ OSSUnixSubprocess new
			command: './pharo';
			arguments: { pathToImage };
			workingDirectory: self defaultLocationOfRepositories absolutePath parent pathString;
			redirectStdout;
			runAndWaitWithTimeout: 2 seconds 
				onTimeoutDo: [ 
					'Timeout!' inspect
					]
				onExitDo: [ :process :outString  |
					process inspect.
					outString inspect
			]