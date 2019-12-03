instantiation
withRepositoriesIn: aPath
	^ self basicNew 	
		defaultLocationOfRepositories: aPath asFileReference;
		initialize