image-functions
bashScript: aCommand arguments: aCollection
	self halt.
	^ OSSUnixSubprocess new
			command: aCommand;
			arguments: aCollection;
			workingDirectory: FileSystem workingDirectory pathString;
			redirectStdout