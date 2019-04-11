accessing
bootstrapRepositoryPath
	| path |
	[ path := Smalltalk os environment at: 'BOOTSTRAP_REPOSITORY' ]
		on: KeyNotFound 
		do: [ path := FileLocator workingDirectory parent parent parent.
				Smalltalk os environment at: 'BOOTSTRAP_REPOSITORY' put: path fullName ].
	^ path