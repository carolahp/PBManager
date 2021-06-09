accessing
defaultLocationOfBootstrappedImages
	^ (Smalltalk os environment
		at: 'BOOTSTRAPPED_IMAGES'
		ifAbsent: [ Smalltalk imageDirectory asFileReference / 'bootstrap'
				/ 'bootstrapped-images' ]) asFileReference