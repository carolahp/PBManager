properties
copyForAllElementsPropertyNamed: aString From: aPBLanguageDefinition
	
	"We traverse each behavior"
	self behaviorsDo: [ :mybehavior | 
			| otherbehavior |
			otherbehavior := aPBLanguageDefinition classNamed: mybehavior name.
			"We copy the property only if it is present in otherbehavior"
			(otherbehavior propertyNamed: aString) ifNotNil: [ :property |
				 mybehavior 
					propertyNamed: aString	
					put: property copy].
			"We traverse each method"
			mybehavior
				localMethodsDo: [ :mymethod | 
					| othermethod |
					othermethod := otherbehavior localMethodNamed: mymethod selector ifAbsent: [ nil ].
					"We copy the property only if it is present in othermethod"
					(othermethod propertyNamed: aString) ifNotNil: [ :property |
						mymethod 
							propertyNamed: aString 
							put: property copy ] ] ]