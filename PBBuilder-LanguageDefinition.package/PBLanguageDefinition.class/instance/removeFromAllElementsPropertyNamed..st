properties
removeFromAllElementsPropertyNamed: aString
	self behaviorsDo: [ :beh | 
			beh removePropertyNamed: aString.
			beh localMethodsDo: [ :meth | meth removePropertyNamed: aString ].
		 ]