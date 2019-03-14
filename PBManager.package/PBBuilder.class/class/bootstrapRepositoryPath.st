accessing
bootstrapRepositoryPath
	| path |
	[ path := Smalltalk os environment at: 'BOOTSTRAP_REPOSITORY' ]
		on: KeyNotFound 
		do: [ path := '.'.
				Smalltalk os environment at: 'BOOTSTRAP_REPOSITORY' put: path ].
	^ path