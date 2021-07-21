class-format
instSpecOfClass: aRGClass

	"NEW:
	 0 = 0 sized objects (UndefinedObject True False et al)
	 1 = non-indexable objects with inst vars (Point et al)
	 2 = indexable objects with no inst vars (Array et al)
	 3 = indexable objects with inst vars (MethodContext AdditionalMethodState et al)
	 4 = weak indexable objects with inst vars (WeakArray et al)
	 5 = weak non-indexable objects with inst vars (ephemerons) (Ephemeron)
	 6 = reserved
	 7 = forwarder format (also immediate class format)
	 9          64-bit indexable
	 10 - 11 32-bit indexable
	 12 - 15 16-bit indexable
	 16 - 23 byte indexable
	 24 - 31 compiled method"
	(aRGClass isBytes) ifTrue: [ ^ 16 ].
	(aRGClass isWords) ifTrue: [ ^ 10 ].
	(aRGClass isCompiledMethod) ifTrue: [ ^ 24 ].
	(aRGClass isEphemeron) ifTrue: [ ^ 5 ].
	(aRGClass instSize = 0 and: [ aRGClass isVariable not ]) ifTrue: [ ^ 0 ].
	(aRGClass instSize > 0 and: [ aRGClass isVariable not ]) ifTrue: [ ^ 1 ].
	(aRGClass instSize = 0 and: [ aRGClass isVariable     ]) ifTrue: [ ^ 2 ].
	(aRGClass instSize > 0 and: [ aRGClass isVariable     ]) ifTrue: [ ^ 3 ].
	(aRGClass instSize > 0 and: [ aRGClass isVariable and: [ aRGClass isWeak ] ]) ifTrue: [ ^ 4 ].
	(aRGClass instSize > 0 and: [ aRGClass isVariable not and: [ aRGClass isWeak ] ]) ifTrue: [ ^ 5 ].
	self error: 'illegal old format'