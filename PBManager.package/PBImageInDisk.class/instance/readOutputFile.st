scripting
readOutputFile
	^ [self outputFile contents asString] on: FileDoesNotExistException do: 'File was not created'