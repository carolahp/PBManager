accessing
repositoryPathString: aString
	self reset.
	repositoryPath := aString asFileReference.
	