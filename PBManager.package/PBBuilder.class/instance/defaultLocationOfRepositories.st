accessing
defaultLocationOfRepositories
	^ defaultLocationOfRepositories ifNil: [ ^ Smalltalk imageDirectory ]