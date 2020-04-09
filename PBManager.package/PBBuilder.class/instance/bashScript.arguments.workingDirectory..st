script-execution
bashScript: aCommand arguments: aCollection workingDirectory: aPathString
	
	^ OSSUnixSubprocess new
			command: aCommand;
			arguments: aCollection;
			workingDirectory: aPathString;
			redirectStdout