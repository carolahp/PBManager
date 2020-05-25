objectsInitializations
typeFor: aClass
	| isCompiledMethod |
	aClass isImmediateClass
		ifTrue: [ ^ 'beImmediate' ].
	isCompiledMethod := (aClass = self classCompiledMethod).
	^ aClass isWeak
		ifTrue: [ 'beWeak' ]
		ifFalse: [ aClass isPointers
				ifTrue: [ aClass isVariable
						ifTrue: [ 'beVariable' ]
						ifFalse: [ 'yourself' ] ]
				ifFalse: [ isCompiledMethod 
						ifTrue: [ 'beCompiledMethod' ]
						ifFalse: [ aClass isWords
								ifTrue: [ 'beWords' ]
								ifFalse: [ 'beBytes' ] ] ] ]