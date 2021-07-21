*PBManager
markFeasibilityOfAddingInstVar
	| isPossible |
	isPossible := 
	((self layout isPointerLayout or:
	self layout isEmptyLayout) and: 
	self layout isVariableLayout not) and:
	(((self parent immediateClasses,
	self parent specialZeroSizedClasses)
	 contains: [:class | class name = self name]) not).
	 "add my name is not in self parent immediateClassRoles
	remove true and false"
	self subclassesDo: [ :subclass |
		isPossible := isPossible and: (subclass markFeasibilityOfAddingInstVar)
		 ].
	self propertyNamed: #feasible put: isPossible.
	^ isPossible