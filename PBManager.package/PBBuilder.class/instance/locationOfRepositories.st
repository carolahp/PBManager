accessing
locationOfRepositories
	^ (locationOfRepositories 
		ifNil: [ locationOfRepositories := self class defaultLocationOfRepositories ensureCreateDirectory; yourself ])