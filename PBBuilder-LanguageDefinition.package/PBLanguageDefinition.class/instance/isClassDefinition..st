testing
isClassDefinition: aString 
	| classDefCode |
	classDefCode := (self hookInstallClass: self classUndefinedObject) code.
	^ aString beginsWith: (classDefCode truncateTo: 50)