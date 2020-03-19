accessing-constants
locationOfBootstrappedImages
	^ (locationOfBootstrappedImages 
		ifNil: [ locationOfBootstrappedImages := self class defaultLocationOfBootstrappedImages ensureCreateDirectory; yourself]) 