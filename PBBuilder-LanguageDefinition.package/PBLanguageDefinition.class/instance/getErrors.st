errors
getErrors
	^ self allClassesAndTraits gather: [ :beh | beh getErrors ]