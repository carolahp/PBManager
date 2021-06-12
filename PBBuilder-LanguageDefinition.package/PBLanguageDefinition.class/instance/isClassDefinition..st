testing
isClassDefinition: aString 
	| classDefCode |
	classDefCode := (self installClass: self classUndefinedObject) code.
	^ aString beginsWith: (classDefCode truncateTo: 50)