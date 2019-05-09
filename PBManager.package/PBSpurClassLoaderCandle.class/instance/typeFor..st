utils
typeFor: aClass

	aClass isImmediateClass
		ifTrue: [ ^ 'beImmediate' ].

	^ aClass isWeak
		ifTrue: [ 'beWeak' ]
		ifFalse: [ aClass isPointers
				ifTrue: [ aClass isVariable
						ifTrue: [ 'beVariable' ]
						ifFalse: [ 'yourself' ] ]
				ifFalse: [ (self isCompiledMethod: aClass)
						ifTrue: [ 'beCompiledMethod' ]
						ifFalse: [ aClass isWords
								ifTrue: [ 'beWords' ]
								ifFalse: [ 'beBytes' ] ] ] ]