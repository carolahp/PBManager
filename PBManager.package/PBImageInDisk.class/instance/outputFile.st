scripting
outputFile
	^ File
		openForReadFileNamed: (self imageFileReference absolutePath , 'txt') asFileReference  ensureCreateFile pathString 