instantiation
withRepositoriesLocation: aPath
	^ self basicNew 	
		defaultLocationOfRepositories: aPath asFileReference;
		initialize