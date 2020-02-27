accessing
defaultLocationOfBootstrappedImages 
	^ (Smalltalk os environment at: 'BOOTSTRAPPED_IMAGES' ifAbsent: ['./../bootstrapped-images']) asFileReference