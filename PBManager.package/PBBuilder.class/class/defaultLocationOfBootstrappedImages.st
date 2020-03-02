accessing
defaultLocationOfBootstrappedImages 
	^ (Smalltalk os environment at: 'BOOTSTRAPPED_IMAGES' ifAbsent: ['./bootstrap/bootstrapped-images']) asFileReference