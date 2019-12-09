instantiation
withRepositoriesIn: aPath
	^ self basicNew 	
		pbBuilder: (PBBuilder new defaultLocationOfRepositories: aPath asFileReference);
		initialize