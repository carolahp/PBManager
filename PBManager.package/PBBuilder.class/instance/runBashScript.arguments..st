image-functions
runBashScript: aCommand arguments: aCollection
	
	^ OSSUnixSubprocess new
			command: aCommand;
			arguments: aCollection;
			workingDirectory: self defaultLocationOfRepositories absolutePath parent pathString;
			redirectStdout;
			run
				