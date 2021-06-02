scripting
bashScript: aCommand arguments: aCollection workingDirectory: aPathString
	
	^ self newCommand
			command: aCommand;
			arguments: aCollection;
			workingDirectory: aPathString;
			redirectStdout