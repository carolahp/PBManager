as yet unclassified
initializeClassPools

	shouldInitializeClassPool := true.
	(environment reject: [ :assoc | (assoc isClassMirror not) or: [assoc asClassMirror classNameFromAnyOrigin reverse beginsWith: 'ssalc '] ]) keysDo: [ :name |
		(systemDefinition classNamed: name) isBehavior
			ifTrue: [ self initializeClassPool: name ] ].